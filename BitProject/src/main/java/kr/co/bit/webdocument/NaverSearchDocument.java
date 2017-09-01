package kr.co.bit.webdocument;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Component;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import kr.co.bit.webdocument.vo.NaverWebVo;

@Component
public class NaverSearchDocument {

	public HashMap<String,Object> naverWebSearch(String q ,String start,String display){
			String total ="";
			HashMap<String,Object> map = new HashMap<>();
		
			List<NaverWebVo>webList = new ArrayList<>();
			String clientId = "17WUB6cBAjZ53erqav9q";//애플리케이션 클라이언트 아이디값";
	        String clientSecret = "3pec22XuCT";//애플리케이션 클라이언트 시크릿값";
	        try {
	            String text = URLEncoder.encode(q, "UTF-8");
	            String apiURL = "https://openapi.naver.com/v1/search/webkr.json?query="+ text+"&display="+display+"&start="+start; // json 결과
	            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml 결과
	            URL url = new URL(apiURL);
	            HttpURLConnection con = (HttpURLConnection)url.openConnection();
	            con.setRequestMethod("GET");
	            con.setRequestProperty("X-Naver-Client-Id", clientId);
	            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
	            int responseCode = con.getResponseCode();
	            BufferedReader br;
	            if(responseCode==200) { // 정상 호출
	                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	            } else {  // 에러 발생
	                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	            }
	            String inputLine;
	            StringBuffer response = new StringBuffer();
	            while ((inputLine = br.readLine()) != null) {
	                response.append(inputLine);
	            }
	            br.close();
	            JsonParser jsonParser = new JsonParser();
	            Object obj = jsonParser.parse(response.toString());
	            JsonObject jobj = (JsonObject) obj;
	            total =  jobj.get("total").toString();
	            JsonArray jarray = (JsonArray) jobj.get("items");
	            
	            for(int i = 0; i<jarray.size();i++){
	            	JsonObject json = (JsonObject) jarray.get(i);
	            	NaverWebVo webVo=  new NaverWebVo();
	            	webVo.setTitle(json.get("title").toString().replaceAll("[\"\"]", ""));
	            	webVo.setLink(json.get("link").toString().replaceAll("[\"\"]", ""));
	            	webVo.setDescription(json.get("description").toString().replaceAll("[\"\"]", ""));
	            	webList.add(webVo);
	            	
	            }
	            
	            map.put("total", total);
	            map.put("weblist", webList);
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return map;
	}
	
}
