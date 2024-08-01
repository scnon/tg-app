////////////////////////////////////////////////////////////
////           ____             __
////          / __ \____ ______/ /_
////         / / / / __ `/ ___/ __/
////        / /_/ / /_/ / /  / /_
////       /_____/\__,_/_/   \__/
////
////   GENERATED CODE - DO NOT MODIFY BY HAND
////
////////////////////////////////////////////////////////////
library;

class ResponseModel {
  final int? code;
  final dynamic data;
  final String? msg;

  ResponseModel({
    this.code,
    this.data,
    this.msg,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      code: json['code'] as int?,
      data: json['data'],
      msg: json['msg'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'data': data,
      'msg': msg,
    };
  }
}
