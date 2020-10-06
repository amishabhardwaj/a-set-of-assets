package com.hsbc.models;

import java.time.LocalDate;

public class AssetBean {
	int assetId;
	String subCategory;
	CategoryBean category;
	LocalDate dateAdded;
	String description;
	boolean isAvailable;

	public int getAssetID() {
		return assetId;
	}

	public void setAssetID(int assetID) {
		this.assetId = assetID;
	}

	public String getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(String subCategory) {
		this.subCategory = subCategory;
	}

	public CategoryBean getCategory() {
		return category;
	}

	public void setCategory(CategoryBean category) {
		this.category = category;
	}

	public LocalDate getDateAdded() {
		return dateAdded;
	}

	public void setDateAdded(LocalDate dateAdded) {
		this.dateAdded = dateAdded;
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
}
