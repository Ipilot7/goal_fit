class ErrorModel {
  String? type;
  List<Errors>? errors;

  ErrorModel({this.type, this.errors});

  ErrorModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    if (json['errors'] != null) {
      errors = <Errors>[];
      json['errors'].forEach((v) {
        errors!.add(Errors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    if (errors != null) {
      data['errors'] = errors!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Errors {
  String? code;
  String? detail;
  String? attr;

  Errors({this.code, this.detail, this.attr});

  Errors.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    detail = json['detail'];
    attr = json['attr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['detail'] = detail;
    data['attr'] = attr;
    return data;
  }
}
