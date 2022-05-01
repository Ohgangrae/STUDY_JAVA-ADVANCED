package jdbc;

public class ProductDTO {
	private String id;        //상품아이디
	private String name;      //상품이름
	private String price;     //상품가격
	public ProductDTO() {
	}
	public void setid(String id) {
		this.id = id;
	}
	public void setname(String name) {
		this.name = name;
	}
	public void setprice(String price) {
		this.price = price;
	}
	public void setimage(String image) {
		this.image = image;
	}

	private String image;      //상품사진

	public String getid() {
		return id;
	}
	public String getname() {
		return name;
	}
	public String getprice() {
		return price;
	}
	public String getimage() {
		return image;
	}	
	
	public ProductDTO(String id, String name, String price, String image) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.image = image;
	}
	
	
}
