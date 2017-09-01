package kr.co.bit.commons;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Component;

import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.vision.v1.Vision;
import com.google.api.services.vision.v1.Vision.Images.Annotate;
import com.google.api.services.vision.v1.VisionScopes;
import com.google.api.services.vision.v1.model.AnnotateImageRequest;
import com.google.api.services.vision.v1.model.AnnotateImageResponse;
import com.google.api.services.vision.v1.model.BatchAnnotateImagesRequest;
import com.google.api.services.vision.v1.model.BatchAnnotateImagesResponse;
import com.google.api.services.vision.v1.model.Block;
import com.google.api.services.vision.v1.model.BoundingPoly;
import com.google.api.services.vision.v1.model.EntityAnnotation;
import com.google.api.services.vision.v1.model.Feature;
import com.google.api.services.vision.v1.model.Image;
import com.google.api.services.vision.v1.model.LocationInfo;
import com.google.api.services.vision.v1.model.Page;
import com.google.api.services.vision.v1.model.Paragraph;
import com.google.api.services.vision.v1.model.Symbol;
import com.google.api.services.vision.v1.model.TextAnnotation;
import com.google.api.services.vision.v1.model.Word;
import com.google.common.collect.ImmutableList;
import com.google.protobuf.ByteString;

import kr.co.bit.mongo.book.domain.vo.BookTitle;

@Component
public class ImageOcr {

	private Vision instance = null;

	public synchronized Vision getServic() throws IOException, GeneralSecurityException {
		if (instance == null) {
			instance = buildService();
		}

		return instance;

	}

	private Vision buildService() throws IOException, GeneralSecurityException {
		// TODO Auto-generated method stub
		String filename = "API Project-b8bf92eee3de.json";
		String path = "C:\\Users\\bit-user\\Downloads\\";
		HttpTransport transport = GoogleNetHttpTransport.newTrustedTransport();
		JsonFactory jsonFactory = new JacksonFactory();
		GoogleCredential credential = GoogleCredential.fromStream(new FileInputStream(path + filename), transport,
				jsonFactory);
		if (credential.createScopedRequired()) {
			Collection<String> scopes = VisionScopes.all();
			credential = credential.createScoped(scopes);

		}
		return new Vision.Builder(transport, jsonFactory, credential).setApplicationName("Vision samples").build();
	}

	public List<BookTitle> execute(String filename) throws IOException, GeneralSecurityException {
		Vision vision = getServic();
		Path path = Paths.get(filename);

		byte[] data = Files.readAllBytes(path);
		ByteString imgBytes = ByteString.copyFrom(data);
		AnnotateImageRequest request = new AnnotateImageRequest().setImage(new Image().encodeContent(data))
				.setFeatures(ImmutableList.of(new Feature().setType("TEXT_DETECTION").setMaxResults(4)));
		Annotate annotate = vision.images()
				.annotate(new BatchAnnotateImagesRequest().setRequests(ImmutableList.of(request)));

		annotate.setDisableGZipContent(true);

		BatchAnnotateImagesResponse baResponse = annotate.execute();

		assert baResponse.getResponses().size() == 1;

		AnnotateImageResponse response = baResponse.getResponses().get(0);

		if (response.getTextAnnotations() == null) {
			return null;
		}

		TextAnnotation list = response.getFullTextAnnotation();
		List<BookTitle> tlist = new ArrayList<BookTitle>();

		for (Page page : list.getPages()) {
			for (Block block : page.getBlocks()) {
				System.out.println("------------block-------------------");
				for (Paragraph para : block.getParagraphs()) {
					String str3 = "";
					for (Word word : para.getWords()) {
						// 크기 비교
						for (Symbol symbol : word.getSymbols()) {
							str3 += symbol.getText();
						}
						str3 += " ";

					}
					System.out.println(str3);
					System.out.print(para.getWords().get(0).getSymbols().get(0).getText());
					System.out.println("/" + para.getWords().get(0).getSymbols().get(0).getBoundingBox());
					BoundingPoly bound = para.getWords().get(0).getSymbols().get(0).getBoundingBox();

					int getx1 = 0;
					int gety1 = 0;
					int getx2 = 0;
					int gety2 = 0;
					try {
						 getx1 = bound.getVertices().get(0).getX();
						 gety1 = bound.getVertices().get(0).getY();
						 getx2 = bound.getVertices().get(2).getX();
						 gety2 = bound.getVertices().get(2).getY();
					} catch (NullPointerException e) {
						// TODO: handle exception
						
					}
				
					int size = (Math.abs((getx1 - getx2))) * (Math.abs((gety1 - gety2)));
					System.out.print(size);
					BookTitle title = new BookTitle();
					title.setSize(size);
					title.setTitle(str3);
					tlist.add(title);

					System.out.println();

				}

			}

		}
		return tlist;

	}
}
