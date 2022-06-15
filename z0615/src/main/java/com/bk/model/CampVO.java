package com.bk.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CampVO {
	
	private int camp_num;
	private String camp_name;
	private String location;
	private String mainfacilities;
	private String phone;
	private String homepage;
	private String pet;
	private String explanation;
	private String amenities;
	private String tag;
	private String division;
	private String address;
	private float rank;
	private String photo;
	private String image1;
	private String image2;
	private String image3;
	
}
