package DTO;

public class DTO {
	
	private String num, depart, name, address, phone;

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getDepart() {
		return depart;
	}

	public void setDepart(String depart) {
		this.depart = depart;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public DTO(String num, String depart, String name, String address, String phone) {
		super();
		this.num = num;
		this.depart = depart;
		this.name = name;
		this.address = address;
		this.phone = phone;
	}

	

}
