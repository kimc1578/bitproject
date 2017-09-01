package kr.co.bit.elastic.book.dao.impl;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.http.HttpHost;
import org.apache.http.util.EntityUtils;
import org.elasticsearch.client.Response;
import org.elasticsearch.client.RestClient;
import org.springframework.stereotype.Repository;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import kr.co.bit.elastic.book.dao.Book_Elastic_Dao;
import kr.co.bit.mongo.book.domain.vo.BookListVo;

@Repository
public class Book_Elastic_Dao_impl implements Book_Elastic_Dao{
	
	
	@Override
	public
	List<BookListVo> book_data(int page){
		List<BookListVo> list = new ArrayList<BookListVo>();
		try {
			int size = 20;
		
			RestClient restClient = RestClient
					.builder(new HttpHost("192.168.1.84", 9200, "http"), new HttpHost("192.168.1.84", 9201, "http"))
					.build();
			Map<String, String> map = new HashMap<String, String>();
			String query =  "/book_list/book_list/_search?size="+size+"&from="+((page-1)*size);

			Response response = restClient.performRequest("get", query, Collections.singletonMap("pretty", "true"));

			String result = EntityUtils.toString(response.getEntity());


			JsonParser jsonParser = new JsonParser();
			Object obj = jsonParser.parse(result);

			JsonObject jsonObject = (JsonObject) obj;

			JsonObject jobj = (JsonObject) jsonObject.get("hits");
			JsonArray jarray = (JsonArray) jobj.get("hits");
			
			for (int i = 0; i < jarray.size(); i++) {
				JsonObject json = (JsonObject) jarray.get(i);
				JsonObject jsObject = (JsonObject) json.get("_source");
				String publisher = jsObject.get("publisher").toString().replaceAll("[\"\"]", "");
				String subtitle = jsObject.get("subtitle").toString().replaceAll("[\"\"]", "");
				String title2 = jsObject.get("title").toString().replaceAll("[\"\"]", "");
				String image = jsObject.get("image").toString().replaceAll("[\"\"]", "");
				String writer = jsObject.get("writer").toString().replaceAll("[\"\"]", "");
				String detailpage = jsObject.get("detailpage").toString().replaceAll("[\"\"]", "");
				String detailNo = jsObject.get("detailNo").toString().replaceAll("[\"\"]", "");
				String dispNo = jsObject.get("dispNo").toString().replaceAll("[\"\"]", "");
				String price = jsObject.get("price").toString().replaceAll("[\"\"]", "");
				
				BookListVo vo = new BookListVo(publisher, subtitle, title2, image, writer, detailpage, detailNo, dispNo, price);

				list.add(vo);
			}
			

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	

	@Override
	public List<BookListVo> book_list(String title, int page,int size) {
		// TODO Auto-generated method stub
		List<BookListVo> list = new ArrayList<BookListVo>();
		try {String encodeResult ="";
				
		
				encodeResult = URLEncoder.encode(title, "UTF-8");
		
			RestClient restClient = RestClient
					.builder(new HttpHost("192.168.1.84", 9200, "http"), new HttpHost("192.168.1.84", 9201, "http"))
					.build();
			Map<String, String> map = new HashMap<String, String>();
			String query =  "/book_list/book_list/_search?q=title:" + encodeResult + "&size="+size+"&from="+((page-1)*size);

			Response response = restClient.performRequest("get", query, Collections.singletonMap("pretty", "true"));

			String result = EntityUtils.toString(response.getEntity());


			JsonParser jsonParser = new JsonParser();
			Object obj = jsonParser.parse(result);

			JsonObject jsonObject = (JsonObject) obj;

			JsonObject jobj = (JsonObject) jsonObject.get("hits");
			JsonArray jarray = (JsonArray) jobj.get("hits");
			
			for (int i = 0; i < jarray.size(); i++) {
				JsonObject json = (JsonObject) jarray.get(i);
				JsonObject jsObject = (JsonObject) json.get("_source");
				String publisher = jsObject.get("publisher").toString().replaceAll("[\"\"]", "");
				String subtitle = jsObject.get("subtitle").toString().replaceAll("[\"\"]", "");
				String title2 = jsObject.get("title").toString().replaceAll("[\"\"]", "");
				String image = jsObject.get("image").toString().replaceAll("[\"\"]", "");
				String writer = jsObject.get("writer").toString().replaceAll("[\"\"]", "");
				String detailpage = jsObject.get("detailpage").toString().replaceAll("[\"\"]", "");
				String detailNo = jsObject.get("detailNo").toString().replaceAll("[\"\"]", "");
				String dispNo = jsObject.get("dispNo").toString().replaceAll("[\"\"]", "");
				String price = jsObject.get("price").toString().replaceAll("[\"\"]", "");
				
				BookListVo vo = new BookListVo(publisher, subtitle, title2, image, writer, detailpage, detailNo, dispNo, price);

				list.add(vo);
			}
			

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}


	@Override
	public int total_book_list_size(String title) {
		// TODO Auto-generated method stub
		 int cnt = 0;
		
		try {
			String encodeResult;
			encodeResult = URLEncoder.encode(title, "UTF-8");
			RestClient restClient = RestClient
					.builder(new HttpHost("192.168.1.84", 9200, "http"), new HttpHost("192.168.1.84", 9201, "http"))
					.build();
			Map<String, String> map = new HashMap<String, String>();
			String query = "/book_list/book_list/_count?q=title:" + encodeResult;

			Response response = restClient.performRequest("get", query, Collections.singletonMap("pretty", "true"));

			String result = EntityUtils.toString(response.getEntity());
			JsonParser parser = new JsonParser();
			Object object = parser.parse(result);
			JsonObject jobj2 = (JsonObject) object;
			
			 cnt =Integer.parseInt(jobj2.get("count").toString());
			 System.out.println(" 총 데이터 수 :"+cnt);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		
		return cnt;
	}

}
