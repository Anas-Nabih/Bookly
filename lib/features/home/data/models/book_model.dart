import 'package:bookly/features/home/data/models/access_info.dart';
import 'package:bookly/features/home/data/models/sale_info_model.dart';
import 'package:bookly/features/home/data/models/volume_info_model.dart';

class BookModel {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;

  BookModel(
      {this.kind,
        this.id,
        this.etag,
        this.selfLink,
        this.volumeInfo,
        this.saleInfo,
        this.accessInfo});

  BookModel.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null
        ?   VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    saleInfo = json['saleInfo'] != null
        ?   SaleInfo.fromJson(json['saleInfo'])
        : null;
    accessInfo = json['accessInfo'] != null
        ?   AccessInfo.fromJson(json['accessInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   Map<String, dynamic>();
    data['kind'] = this.kind;
    data['id'] = this.id;
    data['etag'] = this.etag;
    data['selfLink'] = this.selfLink;
    if (this.volumeInfo != null) {
      data['volumeInfo'] = this.volumeInfo!.toJson();
    }
    if (this.saleInfo != null) {
      data['saleInfo'] = this.saleInfo!.toJson();
    }
    if (this.accessInfo != null) {
      data['accessInfo'] = this.accessInfo!.toJson();
    }
    return data;
  }
}













