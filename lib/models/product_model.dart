class ProductModel {
  int? id;
  String? name;
  String? type;
  String? description;
  int? subCategoryId;
  int? brandId;
  Null? bostaSizeId;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  int? productRating;
  int? estimatedDaysPreparing;
  Brands? brands;
  List<ProductVariations>? productVariations;
  SubCategories? subCategories;
  Null? sizeChart;
  int? notApprovedVariants;

  ProductModel(
      {this.id,
        this.name,
        this.type,
        this.description,
        this.subCategoryId,
        this.brandId,
        this.bostaSizeId,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.productRating,
        this.estimatedDaysPreparing,
        this.brands,
        this.productVariations,
        this.subCategories,
        this.sizeChart,
        this.notApprovedVariants});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    description = json['description'];
    subCategoryId = json['sub_category_id'];
    brandId = json['brand_id'];
    bostaSizeId = json['bosta_size_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    deletedAt = json['deletedAt'];
    productRating = json['product_rating'];
    estimatedDaysPreparing = json['estimated_days_preparing'];
    brands =
    json['Brands'] != null ? new Brands.fromJson(json['Brands']) : null;
    if (json['ProductVariations'] != null) {
      productVariations = <ProductVariations>[];
      json['ProductVariations'].forEach((v) {
        productVariations!.add(new ProductVariations.fromJson(v));
      });
    }
    subCategories = json['SubCategories'] != null
        ? new SubCategories.fromJson(json['SubCategories'])
        : null;
    sizeChart = json['SizeChart'];
    notApprovedVariants = json['notApprovedVariants'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    data['description'] = this.description;
    data['sub_category_id'] = this.subCategoryId;
    data['brand_id'] = this.brandId;
    data['bosta_size_id'] = this.bostaSizeId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['deletedAt'] = this.deletedAt;
    data['product_rating'] = this.productRating;
    data['estimated_days_preparing'] = this.estimatedDaysPreparing;
    if (this.brands != null) {
      data['Brands'] = this.brands!.toJson();
    }
    if (this.productVariations != null) {
      data['ProductVariations'] =
          this.productVariations!.map((v) => v.toJson()).toList();
    }
    if (this.subCategories != null) {
      data['SubCategories'] = this.subCategories!.toJson();
    }
    data['SizeChart'] = this.sizeChart;
    data['notApprovedVariants'] = this.notApprovedVariants;
    return data;
  }
}

class Brands {
  int? id;
  String? brandType;
  String? brandName;
  String? brandFacebookPageLink;
  String? brandInstagramPageLink;
  Null? brandWebsiteLink;
  String? brandMobileNumber;
  String? brandEmailAddress;
  Null? taxIdNumber;
  String? brandDescription;
  String? brandLogoImagePath;
  int? brandStatusId;
  Null? brandStoreAddressId;
  int? brandCategoryId;
  Null? deletedAt;
  String? createdAt;
  String? updatedAt;
  int? brandSellerId;
  Null? brandId;
  Null? slashContractPath;
  int? brandRating;
  int? daysLimitToReturn;
  Null? planId;

  Brands(
      {this.id,
        this.brandType,
        this.brandName,
        this.brandFacebookPageLink,
        this.brandInstagramPageLink,
        this.brandWebsiteLink,
        this.brandMobileNumber,
        this.brandEmailAddress,
        this.taxIdNumber,
        this.brandDescription,
        this.brandLogoImagePath,
        this.brandStatusId,
        this.brandStoreAddressId,
        this.brandCategoryId,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.brandSellerId,
        this.brandId,
        this.slashContractPath,
        this.brandRating,
        this.daysLimitToReturn,
        this.planId});

  Brands.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    brandType = json['brand_type'];
    brandName = json['brand_name'];
    brandFacebookPageLink = json['brand_facebook_page_link'];
    brandInstagramPageLink = json['brand_instagram_page_link'];
    brandWebsiteLink = json['brand_website_link'];
    brandMobileNumber = json['brand_mobile_number'];
    brandEmailAddress = json['brand_email_address'];
    taxIdNumber = json['tax_id_number'];
    brandDescription = json['brand_description'];
    brandLogoImagePath = json['brand_logo_image_path'];
    brandStatusId = json['brand_status_id'];
    brandStoreAddressId = json['brand_store_address_id'];
    brandCategoryId = json['brand_category_id'];
    deletedAt = json['deletedAt'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    brandSellerId = json['brand_seller_id'];
    brandId = json['brand_id'];
    slashContractPath = json['slash_contract_path'];
    brandRating = json['brand_rating'];
    daysLimitToReturn = json['days_limit_to_return'];
    planId = json['planId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['brand_type'] = this.brandType;
    data['brand_name'] = this.brandName;
    data['brand_facebook_page_link'] = this.brandFacebookPageLink;
    data['brand_instagram_page_link'] = this.brandInstagramPageLink;
    data['brand_website_link'] = this.brandWebsiteLink;
    data['brand_mobile_number'] = this.brandMobileNumber;
    data['brand_email_address'] = this.brandEmailAddress;
    data['tax_id_number'] = this.taxIdNumber;
    data['brand_description'] = this.brandDescription;
    data['brand_logo_image_path'] = this.brandLogoImagePath;
    data['brand_status_id'] = this.brandStatusId;
    data['brand_store_address_id'] = this.brandStoreAddressId;
    data['brand_category_id'] = this.brandCategoryId;
    data['deletedAt'] = this.deletedAt;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['brand_seller_id'] = this.brandSellerId;
    data['brand_id'] = this.brandId;
    data['slash_contract_path'] = this.slashContractPath;
    data['brand_rating'] = this.brandRating;
    data['days_limit_to_return'] = this.daysLimitToReturn;
    data['planId'] = this.planId;
    return data;
  }
}

class ProductVariations {
  int? id;
  int? productId;
  int? price;
  int? quantity;
  Null? warehouseId;
  bool? isDefault;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  int? productVariationStatusId;
  Null? acceptedBy;
  ProductStatusLookups? productStatusLookups;
  List<ProductVarientImages>? productVarientImages;

  ProductVariations(
      {this.id,
        this.productId,
        this.price,
        this.quantity,
        this.warehouseId,
        this.isDefault,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.productVariationStatusId,
        this.acceptedBy,
        this.productStatusLookups,
        this.productVarientImages});

  ProductVariations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    price = json['price'];
    quantity = json['quantity'];
    warehouseId = json['warehouse_id'];
    isDefault = json['is_default'];
    deletedAt = json['deletedAt'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    productVariationStatusId = json['product_variation_status_id'];
    acceptedBy = json['accepted_by'];
    productStatusLookups = json['ProductStatusLookups'] != null
        ? new ProductStatusLookups.fromJson(json['ProductStatusLookups'])
        : null;
    if (json['ProductVarientImages'] != null) {
      productVarientImages = <ProductVarientImages>[];
      json['ProductVarientImages'].forEach((v) {
        productVarientImages!.add(new ProductVarientImages.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    data['warehouse_id'] = this.warehouseId;
    data['is_default'] = this.isDefault;
    data['deletedAt'] = this.deletedAt;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['product_variation_status_id'] = this.productVariationStatusId;
    data['accepted_by'] = this.acceptedBy;
    if (this.productStatusLookups != null) {
      data['ProductStatusLookups'] = this.productStatusLookups!.toJson();
    }
    if (this.productVarientImages != null) {
      data['ProductVarientImages'] =
          this.productVarientImages!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductStatusLookups {
  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;

  ProductStatusLookups({this.id, this.name, this.createdAt, this.updatedAt});

  ProductStatusLookups.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class ProductVarientImages {
  int? id;
  String? imagePath;
  int? productVarientId;
  String? createdAt;
  String? updatedAt;

  ProductVarientImages(
      {this.id,
        this.imagePath,
        this.productVarientId,
        this.createdAt,
        this.updatedAt});

  ProductVarientImages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imagePath = json['image_path'];
    productVarientId = json['product_varient_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image_path'] = this.imagePath;
    data['product_varient_id'] = this.productVarientId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class SubCategories {
  int? id;
  String? name;
  Null? deletedAt;
  String? createdAt;
  String? updatedAt;
  int? categoryId;
  String? imagePath;

  SubCategories(
      {this.id,
        this.name,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.categoryId,
        this.imagePath});

  SubCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    deletedAt = json['deletedAt'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    categoryId = json['category_id'];
    imagePath = json['image_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['deletedAt'] = this.deletedAt;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['category_id'] = this.categoryId;
    data['image_path'] = this.imagePath;
    return data;
  }
}