package com.hsbc.pojo;

import java.time.*;;

public class AssetBean {
	
	private int assetId;
	private String subcategory;
	private String category;
	private LocalDate dateAdded;
	private String description;
	private boolean isAvailable;
	
	public AssetBean(){}
	
	public AssetBean(int assetId, String subcategory, String category, LocalDate dateAdded, String description,
			boolean isAvailable) {
		super();
		this.assetId = assetId;
		this.subcategory = subcategory;
		this.category = category;
		this.dateAdded = dateAdded;
		this.description = description;
		this.isAvailable = isAvailable;
	}
	
	public int getAssetId() {
		return assetId;
	}
	public void setAssetId(int assetId) {
		this.assetId = assetId;
	}
	public String getSubcategory() {
		return subcategory;
	}
	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public LocalDate getDateAdded() {
		return dateAdded;
	}
	public void setDateAdded(LocalDate date) {
		this.dateAdded = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public boolean isAvailable() {
		return isAvailable;
	}
	public void setAvailable(boolean isAvailable) {
		this.isAvailable = isAvailable;
	}

	@Override
	public String toString() {
		return "AssetBean [assetId=" + assetId + ", subcategory=" + subcategory + ", category=" + category
				+ ", dateAdded=" + dateAdded + ", description=" + description + ", isAvailable=" + isAvailable + "]";
	}
	
	

}
