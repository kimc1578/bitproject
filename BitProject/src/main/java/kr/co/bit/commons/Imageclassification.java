package kr.co.bit.commons;

import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.GeneralSecurityException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.Spring;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class Imageclassification {
	/**/
	@Autowired
	private ImageOcr orc;

	public HashMap<String, Object> image_classification(MultipartFile file)
			throws IllegalStateException, IOException, GeneralSecurityException {
		
		HashMap<String, Object> map;
		//이미지 파일의 유니크한 이름 부여 
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
		String filename = format.format(date) + file.getOriginalFilename();
		System.out.println(file.getOriginalFilename());
		String path = "C:/temp/";
		String filepath = path + filename;
		File f = new File(filepath);

		String contenttype = file.getContentType();
		System.out.println(file.getContentType());
		String type2 = contenttype.substring(contenttype.lastIndexOf("/") + 1, contenttype.length());

		file.transferTo(f);
		//이미지가 jpge 파일이아닌경우 jpg 파일로 변환 
		if (!type2.equals("jpeg")) {
			BufferedImage bufferedImage = ImageIO.read(f);
			String originname = file.getOriginalFilename();
			String prefixname = originname.substring(0, originname.indexOf("."));
			filepath = path + format + prefixname + ".jpg";
			File f_jpg_transfer = new File(filepath);
			ImageIO.write(bufferedImage, "jpg", f_jpg_transfer);
			//학습된 이미지를 통한 이미지 분석 시작
			map = runtimeexecute(filepath);
			if (f_jpg_transfer.exists()) {
				//이미지내의 문자열과 문자 크기 추출
				map.put("orc", orc.execute(filepath));
				f.delete();
				f_jpg_transfer.delete();
			}

			return map;
		}
		//이미지가 jpg 파일인 경우 
		//학습된 이미지를 통한 이미지 분석 시작
		map = runtimeexecute(filepath);

		if (f.exists()) {
			//이미지내의 문자열과 문자 크기 추출
			map.put("orc", orc.execute(filepath));
			f.delete();

		}
		return map;

	}

	private HashMap<String, Object> runtimeexecute(String filepath) throws IOException {
		
		
		List<String> cmd = new ArrayList<>();
		cmd.add("cmd ");
		cmd.add("/c");
		cmd.add("activate tensor && python retrain_run_inference.py " + filepath);
		Process p = new ProcessBuilder(cmd).start();
		InputStreamReader isr = new InputStreamReader(p.getInputStream());
		BufferedReader br = new BufferedReader(isr);
		BufferedReader error = new BufferedReader(new InputStreamReader(p.getErrorStream(), "utf-8"));
		HashMap<String, Object> map = new HashMap<>();
		String[] keyset = { "score", "label" };
		int i = 0;
		String result = "";
		while ((result = br.readLine()) != null) {
			map.put(keyset[i], result);
			System.out.println(keyset[i]+"  : "+result);
			i++;
		}

		p.destroy();
		return map;
	}

	public HashMap<String, Object> m_image_classification(String filepath) throws IOException, GeneralSecurityException {
		HashMap<String, Object> map;
		File f = new File(filepath);
		map = runtimeexecute(filepath);
		if (f.exists()) {
			map.put("orc", orc.execute(filepath));
			f.delete();

		}
			
		return map;
	}

}
