package dto;

import java.io.Serializable;

public class Product {
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String productId; // 상품 아이디
	private String pname; //곡명
	private Integer unitPrice; //상품 가격
	private String artist; //아티스트
	private String description; //상품 설명
	private String part; // 파트
	private String category; //분류
	private String key; // 조(key)
	private String filename; //이미지 파일명
	private int quantity; //장바구니에 담은 개수
	
	public Product() {
		super();
	}
	
	public Product(String productId, String pname, Integer unitPrice) {
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}
	
	public String getProductId() {
		return productId;
	}
	
	public String getPname() {
		return pname;
	}
	
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	public Integer getUnitPrice() {
		return unitPrice;
	}
	
	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	public String getArtist() {
		return artist;
	}
	
	public void setArtist(String artist) {
		this.artist = artist;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}	
	public String getPart() {
		return part;
	}
	
	public void setPart(String part) {
		this.part = part;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getFilename() {
		return filename;
	}
	
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public String getKey() {
		return key;
	}
	
	public void setKey(String key) {
		this.key = key;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
