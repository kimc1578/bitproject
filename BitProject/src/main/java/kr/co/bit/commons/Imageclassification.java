package kr.co.bit.commons;

import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.File;
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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class Imageclassification {
	/**/
	@Autowired
	private ImageOcr orc;
	public HashMap<String, String> image_classification(MultipartFile file) throws IllegalStateException, IOException, GeneralSecurityException {
		HashMap<String, String> map;
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
		String filename = format.format(date) + file.getOriginalFilename();
		String path = "C:/temp/";
		String filepath = path + filename;
		File f = new File(filepath);

		String contenttype = file.getContentType();
		String type2 = contenttype.substring(contenttype.lastIndexOf("/") + 1, contenttype.length());
		
		file.transferTo(f);
			
		if (!type2.equals("jpeg")) {
			BufferedImage bufferedImage = ImageIO.read(f);
			String originname = file.getOriginalFilename();
			String prefixname = originname.substring(0, originname.indexOf("."));
			filepath = path + format + prefixname + ".jpg";
			File f_jpg_transfer = new File(filepath);
			ImageIO.write(bufferedImage, "jpg", f_jpg_transfer);
			map = runtimeexecute(filepath);
			if (f_jpg_transfer.exists()) {
				map.put("orc", orc.execute(filepath));  
				f.delete();
				f_jpg_transfer.delete();
			}
			
			return map;
		}

		map = runtimeexecute(filepath);

		if (f.exists()) {
			map.put("orc", orc.execute(filepath));  
			f.delete();

		}
		return map;

	}

	private HashMap<String, String> runtimeexecute(String filepath) throws IOException {
		List<String> cmd = new ArrayList<>();
		cmd.add("cmd ");
		cmd.add("/c");
		cmd.add("activate tensor && python retrain_run_inference.py " + filepath);
		Process p = new ProcessBuilder(cmd).start();
		InputStreamReader isr = new InputStreamReader(p.getInputStream());
		BufferedReader br = new BufferedReader(isr);
		BufferedReader error = new BufferedReader(new InputStreamReader(p.getErrorStream(), "utf-8"));
		HashMap<String, String> map = new HashMap<>();
		String[] keyset = { "score", "label" };
		int i=0;
		String result = "";
		while((result=br.readLine())!=null){
			map.put(keyset[i], result);
			i++;
		}
	
		
		p.destroy();
		return map;
	}

}
