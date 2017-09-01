package kr.co.bit.mongo.book.domain.vo;

public class BookListVo {
	private String publisher, subtitle, title, image, writer, detailpage, detailNo, dispNo, price;

	public BookListVo(String publisher, String subtitle, String title, String image, String writer, String detailpage,
			String detailNo, String dispNo, String price) {
		super();
		this.publisher = publisher;
		this.subtitle = subtitle;
		this.title = title;
		this.image = image;
		this.writer = writer;
		this.detailpage = detailpage;
		this.detailNo = detailNo;
		this.dispNo = dispNo;
		this.price = price;
	}

	@Override
	public String toString() {
		return "BookVo [publisher=" + publisher + ", subtitle=" + subtitle + ", title=" + title + ", image=" + image
				+ ", writer=" + writer + ", detailpage=" + detailpage + ", detailNo=" + detailNo + ", dispNo=" + dispNo
				+ ", price=" + price + "]";
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getDetailpage() {
		return detailpage;
	}

	public void setDetailpage(String detailpage) {
		this.detailpage = detailpage;
	}

	public String getDetailNo() {
		return detailNo;
	}

	public void setDetailNo(String detailNo) {
		this.detailNo = detailNo;
	}

	public String getDispNo() {
		return dispNo;
	}

	public void setDispNo(String dispNo) {
		this.dispNo = dispNo;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
}
