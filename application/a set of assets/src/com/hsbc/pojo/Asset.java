package com.hsbc.pojo;

import java.util.Date;

public class Asset {

	private int assetId;
	private String category;
	private String subcategory;
	private String featureDescription;
	private Date dateAdded;
	private boolean isAvailable;

	public Asset() {
	}

	public Asset(int assetId, String category, String subcategory, String featureDescription, Date dateAdded,
			boolean isAvailable) {
		super();
		this.assetId = assetId;
		this.category = category;
		this.subcategory = subcategory;
		this.featureDescription = featureDescription;
		this.dateAdded = dateAdded;
		this.isAvailable = isAvailable;
	}

	public int getAssetId() {
		return assetId;
	}

	public void setAssetId(int assetId) {
		this.assetId = assetId;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSubcategory() {
		return subcategory;
	}

	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
	}

	public String getFeatureDescription() {
		return featureDescription;
	}

	public void setFeatureDescription(String featureDescription) {
		this.featureDescription = featureDescription;
	}

	public Date getDateAdded() {
		return dateAdded;
	}

	public void setDateAdded(Date dateAdded) {
		this.dateAdded = dateAdded;
	}

	public boolean isAvailable() {
		return isAvailable;
	}

	public void setAvailable(boolean isAvailable) {
		this.isAvailable = isAvailable;
	}

	@Override
	public String toString() {
		return "Asset [assetId=" + assetId + ", category=" + category + ", subcategory=" + subcategory
				+ ", featureDescription=" + featureDescription + ", dateAdded=" + dateAdded + ", isAvailable="
				+ isAvailable + "]";
	}

	

}