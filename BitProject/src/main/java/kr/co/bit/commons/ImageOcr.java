package kr.co.bit.commons;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.GeneralSecurityException;
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
import com.google.api.services.vision.v1.model.EntityAnnotation;
import com.google.api.services.vision.v1.model.Feature;
import com.google.api.services.vision.v1.model.Image;
import com.google.api.services.vision.v1.model.LocationInfo;
import com.google.common.collect.ImmutableList;
import com.google.protobuf.ByteString;

@Component
public class ImageOcr {
	
	private  Vision instance = null;
	public  synchronized Vision getServic()throws IOException,GeneralSecurityException
	{
		if(instance==null){
			instance = buildService();
		}
		
		return instance;
		
	}
	
	private  Vision buildService()throws IOException,GeneralSecurityException {
		// TODO Auto-generated method stub
		String filename = "API Project-b8bf92eee3de.json";
		String path = "C:\\Users\\bit-user\\Downloads\\";
		HttpTransport transport = GoogleNetHttpTransport.newTrustedTransport();
		JsonFactory jsonFactory = new JacksonFactory();
		GoogleCredential credential = GoogleCredential.fromStream(new FileInputStream(path+filename), transport, jsonFactory);
		 if (credential.createScopedRequired()) {
		      Collection<String> scopes = VisionScopes.all();
		      credential = credential.createScoped(scopes);
		    		
		    }
		return new Vision.Builder(transport, jsonFactory, credential).setApplicationName("Vision samples").build();
	}

	public String execute(String filename) throws IOException, GeneralSecurityException {
		Vision vision  =getServic();
		Path path = Paths.get(filename);
		byte[] data = Files.readAllBytes(path);
		ByteString imgBytes = ByteString.copyFrom(data);
		AnnotateImageRequest request = 
				new AnnotateImageRequest()
				.setImage(new Image().encodeContent(data))
				.setFeatures(ImmutableList.of(
						new Feature().setType("TEXT_DETECTION")
						.setMaxResults(4)));
		Annotate annotate = vision.images()
				.annotate(new BatchAnnotateImagesRequest().setRequests(ImmutableList.of(request)));
		
		annotate.setDisableGZipContent(true);
		
		BatchAnnotateImagesResponse baResponse = annotate.execute();
		
		assert baResponse.getResponses().size() ==1;
		
		AnnotateImageResponse response = baResponse.getResponses().get(0);
		
		if(response.getTextAnnotations()==null){
				return null;
		}

		return response.getTextAnnotations().get(0).getDescription();
		  
	}
}


