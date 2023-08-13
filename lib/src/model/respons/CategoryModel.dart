class CategoryModel {
  CategoryModel({
      bool? success, 
      String? message, 
      List<CategoryData>? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  CategoryModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(CategoryData.fromJson(v));
      });
    }
  }
  bool? _success;
  String? _message;
  List<CategoryData>? _data;
CategoryModel copyWith({  bool? success,
  String? message,
  List<CategoryData>? data,
}) => CategoryModel(  success: success ?? _success,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get success => _success;
  String? get message => _message;
  List<CategoryData>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


class CategoryData {
  CategoryData({
      String? name, 
      String? slug, 
      num? ordering, 
      List<Categories>? categories, 
      Translation? translation,}){
    _name = name;
    _slug = slug;
    _ordering = ordering;
    _categories = categories;
    _translation = translation;
}

  CategoryData.fromJson(dynamic json) {
    _name = json['name'];
    _slug = json['slug'];
    _ordering = json['ordering'];
    if (json['categories'] != null) {
      _categories = [];
      json['categories'].forEach((v) {
        _categories?.add(Categories.fromJson(v));
      });
    }
    _translation = json['translation'] != null ? Translation.fromJson(json['translation']) : null;
  }
  String? _name;
  String? _slug;
  num? _ordering;
  List<Categories>? _categories;
  Translation? _translation;
CategoryData copyWith({  String? name,
  String? slug,
  num? ordering,
  List<Categories>? categories,
  Translation? translation,
}) => CategoryData(  name: name ?? _name,
  slug: slug ?? _slug,
  ordering: ordering ?? _ordering,
  categories: categories ?? _categories,
  translation: translation ?? _translation,
);
  String? get name => _name;
  String? get slug => _slug;
  num? get ordering => _ordering;
  List<Categories>? get categories => _categories;
  Translation? get translation => _translation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['slug'] = _slug;
    map['ordering'] = _ordering;
    if (_categories != null) {
      map['categories'] = _categories?.map((v) => v.toJson()).toList();
    }
    if (_translation != null) {
      map['translation'] = _translation?.toJson();
    }
    return map;
  }

}

/// bn_name : "কম্পিউটার এবং ট্যাবলেট"

class Translation {
  Translation({
      String? bnName,}){
    _bnName = bnName;
}

  Translation.fromJson(dynamic json) {
    _bnName = json['bn_name'];
  }
  String? _bnName;
Translation copyWith({  String? bnName,
}) => Translation(  bnName: bnName ?? _bnName,
);
  String? get bnName => _bnName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bn_name'] = _bnName;
    return map;
  }

}


class Categories {
  Categories({
      String? name, 
      String? slug, 
      String? logo, 
      List<Subcategories>? subcategories, 
      Translation? translation,}){
    _name = name;
    _slug = slug;
    _logo = logo;
    _subcategories = subcategories;
    _translation = translation;
}

  Categories.fromJson(dynamic json) {
    _name = json['name'];
    _slug = json['slug'];
    _logo = json['logo'];
    if (json['subcategories'] != null) {
      _subcategories = [];
      json['subcategories'].forEach((v) {
        _subcategories?.add(Subcategories.fromJson(v));
      });
    }
    _translation = json['translation'] != null ? Translation.fromJson(json['translation']) : null;
  }
  String? _name;
  String? _slug;
  String? _logo;
  List<Subcategories>? _subcategories;
  Translation? _translation;
Categories copyWith({  String? name,
  String? slug,
  String? logo,
  List<Subcategories>? subcategories,
  Translation? translation,
}) => Categories(  name: name ?? _name,
  slug: slug ?? _slug,
  logo: logo ?? _logo,
  subcategories: subcategories ?? _subcategories,
  translation: translation ?? _translation,
);
  String? get name => _name;
  String? get slug => _slug;
  String? get logo => _logo;
  List<Subcategories>? get subcategories => _subcategories;
  Translation? get translation => _translation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['slug'] = _slug;
    map['logo'] = _logo;
    if (_subcategories != null) {
      map['subcategories'] = _subcategories?.map((v) => v.toJson()).toList();
    }
    if (_translation != null) {
      map['translation'] = _translation?.toJson();
    }
    return map;
  }

}



class Subcategories {
  Subcategories({
      String? name, 
      String? slug, 
      dynamic logo, 
      Translation? translation,}){
    _name = name;
    _slug = slug;
    _logo = logo;
    _translation = translation;
}

  Subcategories.fromJson(dynamic json) {
    _name = json['name'];
    _slug = json['slug'];
    _logo = json['logo'];
    _translation = json['translation'] != null ? Translation.fromJson(json['translation']) : null;
  }
  String? _name;
  String? _slug;
  dynamic _logo;
  Translation? _translation;
Subcategories copyWith({  String? name,
  String? slug,
  dynamic logo,
  Translation? translation,
}) => Subcategories(  name: name ?? _name,
  slug: slug ?? _slug,
  logo: logo ?? _logo,
  translation: translation ?? _translation,
);
  String? get name => _name;
  String? get slug => _slug;
  dynamic get logo => _logo;
  Translation? get translation => _translation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['slug'] = _slug;
    map['logo'] = _logo;
    if (_translation != null) {
      map['translation'] = _translation?.toJson();
    }
    return map;
  }

}
