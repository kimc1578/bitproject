package kr.co.bit.mongo.book.domain.dto;

public class BookmarkDto {
	private	String  title ,subtitle,publisher ,price ,userid,writer,image,detailNo ;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getPrice() {
		return price;
	}

	@Override
	public String toString() {
		return "BookmarkDto [title=" + title + ", subtitle=" + subtitle + ", publisher=" + publisher + ", price="
				+ price + ", userid=" + userid + ", writer=" + writer + ", image=" + image + ", detailNo=" + detailNo
				+ "]";
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDetailNo() {
		return detailNo;
	}

	public void setDetailNo(String detailNo) {
		this.detailNo = detailNo;
	}
}
