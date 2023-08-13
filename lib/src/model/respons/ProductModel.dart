
class ProductModel {
  ProductModel({
      bool? success, 
      MetaData? metaData,
    Data? data,}){
    _success = success;
    _metaData = metaData;
    _data = data;
}

  ProductModel.fromJson(dynamic json) {
    _success = json['success'];
    _metaData = json['meta_data'] != null ? MetaData.fromJson(json['meta_data']) : null;
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  MetaData? _metaData;
  Data? _data;
ProductModel copyWith({  bool? success,
  MetaData? metaData,
  Data? data,
}) => ProductModel(  success: success ?? _success,
  metaData: metaData ?? _metaData,
  data: data ?? _data,
);
  bool? get success => _success;
  MetaData? get metaData => _metaData;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_metaData != null) {
      map['meta_data'] = _metaData?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}


class Data {
  Data({
      List<ProductData>? data, dynamic extra,}){
    _data = data;
    _extra = extra;
}

  Data.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(ProductData.fromJson(v));
      });
    }
    _extra = json['extra'];
  }
  List<ProductData>? _data;
  dynamic _extra;


  List<ProductData>? get data => _data;
  dynamic get extra => _extra;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['extra'] = _extra;
    return map;
  }

}


class ProductData {
  ProductData({
      num? id, 
      String? images, 
      num? taxValue, 
      num? updatedSellingPrice, 
      bool? stockAvailable, 
      String? name, 
      Translation? translation, 
      String? slug, 
      String? sku, 
      num? sellingPrice, 
      List<dynamic>? specifications, 
      Meta? meta, 
      dynamic onlineDiscount, 
      dynamic offlineDiscount, 
      num? serviceWarranty, 
      dynamic gsheba, 
      dynamic gshebaWarrantyDurationType, 
      dynamic serviceWarrantyDurationType, 
      num? sellWarranty, 
      dynamic officialWarranty, 
      dynamic officialWarrantyDurationType, 
      dynamic replacementWarranty, 
      dynamic replacementWarrantyDurationType, 
      String? sellWarrantyDurationType, 
      num? minimumStockQuantity, 
      bool? isActive, 
      bool? isFeatured, 
      bool? isTopSale, 
      bool? isUpcoming, 
      bool? isNewArrival, 
      bool? showOnLandingPage, 
      bool? showInEcommerce, 
      bool? onTheGo, 
      bool? isCartDisabled, 
      bool? isSpecialDay,
      double? rating,
      IntegrityGuaranteed? integrityGuaranteed, 
      num? ordering, 
      dynamic bannerMessage, 
      String? metaTitle, 
      String? metaDescription, 
      String? canonical, 
      String? ogImage, 
      String? ogTitle, 
      String? ogDescription, 
      String? ogUrl, 
      bool? isOnlyPos, 
      dynamic notes, 
      num? brand, 
      dynamic posProductInfo,}){
    _id = id;
    _images = images;
    _taxValue = taxValue;
    _updatedSellingPrice = updatedSellingPrice;
    _stockAvailable = stockAvailable;
    _name = name;
    _translation = translation;
    _slug = slug;
    _sku = sku;
    _sellingPrice = sellingPrice;
    _specifications = specifications;
    _meta = meta;
    _onlineDiscount = onlineDiscount;
    _offlineDiscount = offlineDiscount;
    _serviceWarranty = serviceWarranty;
    _gsheba = gsheba;
    _gshebaWarrantyDurationType = gshebaWarrantyDurationType;
    _serviceWarrantyDurationType = serviceWarrantyDurationType;
    _sellWarranty = sellWarranty;
    _officialWarranty = officialWarranty;
    _officialWarrantyDurationType = officialWarrantyDurationType;
    _replacementWarranty = replacementWarranty;
    _replacementWarrantyDurationType = replacementWarrantyDurationType;
    _sellWarrantyDurationType = sellWarrantyDurationType;
    _minimumStockQuantity = minimumStockQuantity;
    _isActive = isActive;
    _isFeatured = isFeatured;
    _isTopSale = isTopSale;
    _isUpcoming = isUpcoming;
    _isNewArrival = isNewArrival;
    _showOnLandingPage = showOnLandingPage;
    _showInEcommerce = showInEcommerce;
    _onTheGo = onTheGo;
    _isCartDisabled = isCartDisabled;
    _isSpecialDay = isSpecialDay;
    _rating = rating;
    _integrityGuaranteed = integrityGuaranteed;
    _ordering = ordering;
    _bannerMessage = bannerMessage;
    _metaTitle = metaTitle;
    _metaDescription = metaDescription;
    _canonical = canonical;
    _ogImage = ogImage;
    _ogTitle = ogTitle;
    _ogDescription = ogDescription;
    _ogUrl = ogUrl;
    _isOnlyPos = isOnlyPos;
    _notes = notes;
    _brand = brand;
    _posProductInfo = posProductInfo;
}

  ProductData.fromJson(dynamic json) {
    _id = json['id'];
    _images = json['images'];
    _taxValue = json['tax_value'];
    _updatedSellingPrice = json['updated_selling_price'];
    _stockAvailable = json['stock_available'];
    _name = json['name'];
    _translation = json['translation'] != null ? Translation.fromJson(json['translation']) : null;
    _slug = json['slug'];
    _sku = json['sku'];
    _sellingPrice = json['selling_price'];

    // if (json['specifications'] != null) {
    //   _specifications = [];
    //   json['specifications'].forEach((v) {
    //     _specifications?.add(Dynamic.fromJson(v));
    //   });
    // }


    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    _onlineDiscount = json['online_discount'];
    _offlineDiscount = json['offline_discount'];
    _serviceWarranty = json['service_warranty'];
    _gsheba = json['gsheba'];
    _gshebaWarrantyDurationType = json['gsheba_warranty_duration_type'];
    _serviceWarrantyDurationType = json['service_warranty_duration_type'];
    _sellWarranty = json['sell_warranty'];
    _officialWarranty = json['official_warranty'];
    _officialWarrantyDurationType = json['official_warranty_duration_type'];
    _replacementWarranty = json['replacement_warranty'];
    _replacementWarrantyDurationType = json['replacement_warranty_duration_type'];
    _sellWarrantyDurationType = json['sell_warranty_duration_type'];
    _minimumStockQuantity = json['minimum_stock_quantity'];
    _isActive = json['is_active'];
    _isFeatured = json['is_featured'];
    _isTopSale = json['is_top_sale'];
    _isUpcoming = json['is_upcoming'];
    _isNewArrival = json['is_new_arrival'];
    _showOnLandingPage = json['show_on_landing_page'];
    _showInEcommerce = json['show_in_ecommerce'];
    _onTheGo = json['on_the_go'];
    _isCartDisabled = json['is_cart_disabled'];
    _isSpecialDay = json['is_special_day'];
    _rating = json['rating'];
    _integrityGuaranteed = json['integrity_guaranteed'] != null ? IntegrityGuaranteed.fromJson(json['integrity_guaranteed']) : null;
    _ordering = json['ordering'];
    _bannerMessage = json['banner_message'];
    _metaTitle = json['metaTitle'];
    _metaDescription = json['metaDescription'];
    _canonical = json['canonical'];
    _ogImage = json['ogImage'];
    _ogTitle = json['ogTitle'];
    _ogDescription = json['ogDescription'];
    _ogUrl = json['ogUrl'];
    _isOnlyPos = json['is_only_pos'];
    _notes = json['notes'];
    _brand = json['brand'];
    _posProductInfo = json['pos_product_info'];
  }
  num? _id;
  String? _images;
  num? _taxValue;
  num? _updatedSellingPrice;
  bool? _stockAvailable;
  String? _name;
  Translation? _translation;
  String? _slug;
  String? _sku;
  num? _sellingPrice;
  List<dynamic>? _specifications;
  Meta? _meta;
  dynamic _onlineDiscount;
  dynamic _offlineDiscount;
  num? _serviceWarranty;
  dynamic _gsheba;
  dynamic _gshebaWarrantyDurationType;
  dynamic _serviceWarrantyDurationType;
  num? _sellWarranty;
  dynamic _officialWarranty;
  dynamic _officialWarrantyDurationType;
  dynamic _replacementWarranty;
  dynamic _replacementWarrantyDurationType;
  String? _sellWarrantyDurationType;
  num? _minimumStockQuantity;
  bool? _isActive;
  bool? _isFeatured;
  bool? _isTopSale;
  bool? _isUpcoming;
  bool? _isNewArrival;
  bool? _showOnLandingPage;
  bool? _showInEcommerce;
  bool? _onTheGo;
  bool? _isCartDisabled;
  bool? _isSpecialDay;
  double? _rating;
  IntegrityGuaranteed? _integrityGuaranteed;
  num? _ordering;
  dynamic _bannerMessage;
  String? _metaTitle;
  String? _metaDescription;
  String? _canonical;
  String? _ogImage;
  String? _ogTitle;
  String? _ogDescription;
  String? _ogUrl;
  bool? _isOnlyPos;
  dynamic _notes;
  num? _brand;
  dynamic _posProductInfo;
ProductData copyWith({  num? id,
  String? images,
  num? taxValue,
  num? updatedSellingPrice,
  bool? stockAvailable,
  String? name,
  Translation? translation,
  String? slug,
  String? sku,
  num? sellingPrice,
  List<dynamic>? specifications,
  Meta? meta,
  dynamic onlineDiscount,
  dynamic offlineDiscount,
  num? serviceWarranty,
  dynamic gsheba,
  dynamic gshebaWarrantyDurationType,
  dynamic serviceWarrantyDurationType,
  num? sellWarranty,
  dynamic officialWarranty,
  dynamic officialWarrantyDurationType,
  dynamic replacementWarranty,
  dynamic replacementWarrantyDurationType,
  String? sellWarrantyDurationType,
  num? minimumStockQuantity,
  bool? isActive,
  bool? isFeatured,
  bool? isTopSale,
  bool? isUpcoming,
  bool? isNewArrival,
  bool? showOnLandingPage,
  bool? showInEcommerce,
  bool? onTheGo,
  bool? isCartDisabled,
  bool? isSpecialDay,
  double? rating,
  IntegrityGuaranteed? integrityGuaranteed,
  num? ordering,
  dynamic bannerMessage,
  String? metaTitle,
  String? metaDescription,
  String? canonical,
  String? ogImage,
  String? ogTitle,
  String? ogDescription,
  String? ogUrl,
  bool? isOnlyPos,
  dynamic notes,
  num? brand,
  dynamic posProductInfo,
}) => ProductData(  id: id ?? _id,
  images: images ?? _images,
  taxValue: taxValue ?? _taxValue,
  updatedSellingPrice: updatedSellingPrice ?? _updatedSellingPrice,
  stockAvailable: stockAvailable ?? _stockAvailable,
  name: name ?? _name,
  translation: translation ?? _translation,
  slug: slug ?? _slug,
  sku: sku ?? _sku,
  sellingPrice: sellingPrice ?? _sellingPrice,
  specifications: specifications ?? _specifications,
  meta: meta ?? _meta,
  onlineDiscount: onlineDiscount ?? _onlineDiscount,
  offlineDiscount: offlineDiscount ?? _offlineDiscount,
  serviceWarranty: serviceWarranty ?? _serviceWarranty,
  gsheba: gsheba ?? _gsheba,
  gshebaWarrantyDurationType: gshebaWarrantyDurationType ?? _gshebaWarrantyDurationType,
  serviceWarrantyDurationType: serviceWarrantyDurationType ?? _serviceWarrantyDurationType,
  sellWarranty: sellWarranty ?? _sellWarranty,
  officialWarranty: officialWarranty ?? _officialWarranty,
  officialWarrantyDurationType: officialWarrantyDurationType ?? _officialWarrantyDurationType,
  replacementWarranty: replacementWarranty ?? _replacementWarranty,
  replacementWarrantyDurationType: replacementWarrantyDurationType ?? _replacementWarrantyDurationType,
  sellWarrantyDurationType: sellWarrantyDurationType ?? _sellWarrantyDurationType,
  minimumStockQuantity: minimumStockQuantity ?? _minimumStockQuantity,
  isActive: isActive ?? _isActive,
  isFeatured: isFeatured ?? _isFeatured,
  isTopSale: isTopSale ?? _isTopSale,
  isUpcoming: isUpcoming ?? _isUpcoming,
  isNewArrival: isNewArrival ?? _isNewArrival,
  showOnLandingPage: showOnLandingPage ?? _showOnLandingPage,
  showInEcommerce: showInEcommerce ?? _showInEcommerce,
  onTheGo: onTheGo ?? _onTheGo,
  isCartDisabled: isCartDisabled ?? _isCartDisabled,
  isSpecialDay: isSpecialDay ?? _isSpecialDay,
  rating: rating ?? _rating,
  integrityGuaranteed: integrityGuaranteed ?? _integrityGuaranteed,
  ordering: ordering ?? _ordering,
  bannerMessage: bannerMessage ?? _bannerMessage,
  metaTitle: metaTitle ?? _metaTitle,
  metaDescription: metaDescription ?? _metaDescription,
  canonical: canonical ?? _canonical,
  ogImage: ogImage ?? _ogImage,
  ogTitle: ogTitle ?? _ogTitle,
  ogDescription: ogDescription ?? _ogDescription,
  ogUrl: ogUrl ?? _ogUrl,
  isOnlyPos: isOnlyPos ?? _isOnlyPos,
  notes: notes ?? _notes,
  brand: brand ?? _brand,
  posProductInfo: posProductInfo ?? _posProductInfo,
);
  num? get id => _id;
  String? get images => _images;
  num? get taxValue => _taxValue;
  num? get updatedSellingPrice => _updatedSellingPrice;
  bool? get stockAvailable => _stockAvailable;
  String? get name => _name;
  Translation? get translation => _translation;
  String? get slug => _slug;
  String? get sku => _sku;
  num? get sellingPrice => _sellingPrice;
  List<dynamic>? get specifications => _specifications;
  Meta? get meta => _meta;
  dynamic get onlineDiscount => _onlineDiscount;
  dynamic get offlineDiscount => _offlineDiscount;
  num? get serviceWarranty => _serviceWarranty;
  dynamic get gsheba => _gsheba;
  dynamic get gshebaWarrantyDurationType => _gshebaWarrantyDurationType;
  dynamic get serviceWarrantyDurationType => _serviceWarrantyDurationType;
  num? get sellWarranty => _sellWarranty;
  dynamic get officialWarranty => _officialWarranty;
  dynamic get officialWarrantyDurationType => _officialWarrantyDurationType;
  dynamic get replacementWarranty => _replacementWarranty;
  dynamic get replacementWarrantyDurationType => _replacementWarrantyDurationType;
  String? get sellWarrantyDurationType => _sellWarrantyDurationType;
  num? get minimumStockQuantity => _minimumStockQuantity;
  bool? get isActive => _isActive;
  bool? get isFeatured => _isFeatured;
  bool? get isTopSale => _isTopSale;
  bool? get isUpcoming => _isUpcoming;
  bool? get isNewArrival => _isNewArrival;
  bool? get showOnLandingPage => _showOnLandingPage;
  bool? get showInEcommerce => _showInEcommerce;
  bool? get onTheGo => _onTheGo;
  bool? get isCartDisabled => _isCartDisabled;
  bool? get isSpecialDay => _isSpecialDay;
  double? get rating => _rating;
  IntegrityGuaranteed? get integrityGuaranteed => _integrityGuaranteed;
  num? get ordering => _ordering;
  dynamic get bannerMessage => _bannerMessage;
  String? get metaTitle => _metaTitle;
  String? get metaDescription => _metaDescription;
  String? get canonical => _canonical;
  String? get ogImage => _ogImage;
  String? get ogTitle => _ogTitle;
  String? get ogDescription => _ogDescription;
  String? get ogUrl => _ogUrl;
  bool? get isOnlyPos => _isOnlyPos;
  dynamic get notes => _notes;
  num? get brand => _brand;
  dynamic get posProductInfo => _posProductInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['images'] = _images;
    map['tax_value'] = _taxValue;
    map['updated_selling_price'] = _updatedSellingPrice;
    map['stock_available'] = _stockAvailable;
    map['name'] = _name;
    if (_translation != null) {
      map['translation'] = _translation?.toJson();
    }
    map['slug'] = _slug;
    map['sku'] = _sku;
    map['selling_price'] = _sellingPrice;
    if (_specifications != null) {
      map['specifications'] = _specifications?.map((v) => v.toJson()).toList();
    }
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    map['online_discount'] = _onlineDiscount;
    map['offline_discount'] = _offlineDiscount;
    map['service_warranty'] = _serviceWarranty;
    map['gsheba'] = _gsheba;
    map['gsheba_warranty_duration_type'] = _gshebaWarrantyDurationType;
    map['service_warranty_duration_type'] = _serviceWarrantyDurationType;
    map['sell_warranty'] = _sellWarranty;
    map['official_warranty'] = _officialWarranty;
    map['official_warranty_duration_type'] = _officialWarrantyDurationType;
    map['replacement_warranty'] = _replacementWarranty;
    map['replacement_warranty_duration_type'] = _replacementWarrantyDurationType;
    map['sell_warranty_duration_type'] = _sellWarrantyDurationType;
    map['minimum_stock_quantity'] = _minimumStockQuantity;
    map['is_active'] = _isActive;
    map['is_featured'] = _isFeatured;
    map['is_top_sale'] = _isTopSale;
    map['is_upcoming'] = _isUpcoming;
    map['is_new_arrival'] = _isNewArrival;
    map['show_on_landing_page'] = _showOnLandingPage;
    map['show_in_ecommerce'] = _showInEcommerce;
    map['on_the_go'] = _onTheGo;
    map['is_cart_disabled'] = _isCartDisabled;
    map['is_special_day'] = _isSpecialDay;
    map['rating'] = _rating;
    if (_integrityGuaranteed != null) {
      map['integrity_guaranteed'] = _integrityGuaranteed?.toJson();
    }
    map['ordering'] = _ordering;
    map['banner_message'] = _bannerMessage;
    map['metaTitle'] = _metaTitle;
    map['metaDescription'] = _metaDescription;
    map['canonical'] = _canonical;
    map['ogImage'] = _ogImage;
    map['ogTitle'] = _ogTitle;
    map['ogDescription'] = _ogDescription;
    map['ogUrl'] = _ogUrl;
    map['is_only_pos'] = _isOnlyPos;
    map['notes'] = _notes;
    map['brand'] = _brand;
    map['pos_product_info'] = _posProductInfo;
    return map;
  }

}


class IntegrityGuaranteed {
  IntegrityGuaranteed({
      String? quality, 
      String? authenticity, 
      String? sellerReliability,}){
    _quality = quality;
    _authenticity = authenticity;
    _sellerReliability = sellerReliability;
}

  IntegrityGuaranteed.fromJson(dynamic json) {
    _quality = json['quality'];
    _authenticity = json['authenticity'];
    _sellerReliability = json['seller_reliability'];
  }
  String? _quality;
  String? _authenticity;
  String? _sellerReliability;
IntegrityGuaranteed copyWith({  String? quality,
  String? authenticity,
  String? sellerReliability,
}) => IntegrityGuaranteed(  quality: quality ?? _quality,
  authenticity: authenticity ?? _authenticity,
  sellerReliability: sellerReliability ?? _sellerReliability,
);
  String? get quality => _quality;
  String? get authenticity => _authenticity;
  String? get sellerReliability => _sellerReliability;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['quality'] = _quality;
    map['authenticity'] = _authenticity;
    map['seller_reliability'] = _sellerReliability;
    return map;
  }

}


class Meta {
  Meta({
      String? description, 
      String? shortDescription,}){
    _description = description;
    _shortDescription = shortDescription;
}

  Meta.fromJson(dynamic json) {
    _description = json['description'];
    _shortDescription = json['short_description'];
  }
  String? _description;
  String? _shortDescription;
Meta copyWith({  String? description,
  String? shortDescription,
}) => Meta(  description: description ?? _description,
  shortDescription: shortDescription ?? _shortDescription,
);
  String? get description => _description;
  String? get shortDescription => _shortDescription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['description'] = _description;
    map['short_description'] = _shortDescription;
    return map;
  }

}


class Translation {
  Translation({
      String? bnName, 
      String? bnDescription, 
      String? bnShortDescription,}){
    _bnName = bnName;
    _bnDescription = bnDescription;
    _bnShortDescription = bnShortDescription;
}

  Translation.fromJson(dynamic json) {
    _bnName = json['bn_name'];
    _bnDescription = json['bn_description'];
    _bnShortDescription = json['bn_short_description'];
  }
  String? _bnName;
  String? _bnDescription;
  String? _bnShortDescription;
Translation copyWith({  String? bnName,
  String? bnDescription,
  String? bnShortDescription,
}) => Translation(  bnName: bnName ?? _bnName,
  bnDescription: bnDescription ?? _bnDescription,
  bnShortDescription: bnShortDescription ?? _bnShortDescription,
);
  String? get bnName => _bnName;
  String? get bnDescription => _bnDescription;
  String? get bnShortDescription => _bnShortDescription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bn_name'] = _bnName;
    map['bn_description'] = _bnDescription;
    map['bn_short_description'] = _bnShortDescription;
    return map;
  }

}


class MetaData {
  MetaData({
      num? total, 
      String? pageSize, 
      num? next, 
      dynamic previous,}){
    _total = total;
    _pageSize = pageSize;
    _next = next;
    _previous = previous;
}

  MetaData.fromJson(dynamic json) {
    _total = json['total'];
    _pageSize = json['page_size'];
    _next = json['next'];
    _previous = json['previous'];
  }
  num? _total;
  String? _pageSize;
  num? _next;
  dynamic _previous;
MetaData copyWith({  num? total,
  String? pageSize,
  num? next,
  dynamic previous,
}) => MetaData(  total: total ?? _total,
  pageSize: pageSize ?? _pageSize,
  next: next ?? _next,
  previous: previous ?? _previous,
);
  num? get total => _total;
  String? get pageSize => _pageSize;
  num? get next => _next;
  dynamic get previous => _previous;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = _total;
    map['page_size'] = _pageSize;
    map['next'] = _next;
    map['previous'] = _previous;
    return map;
  }

}