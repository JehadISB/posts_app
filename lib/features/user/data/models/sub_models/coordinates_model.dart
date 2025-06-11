import 'package:posts_clesn_app/core/database/api/end_points.dart';
import 'package:posts_clesn_app/features/user/domain/entities/sub_entites/coordinates_entity.dart';

class CoordinatesModel extends CoordinatesEntity {
  CoordinatesModel({required super.lat, required super.lng});

  factory CoordinatesModel.fromJson(Map<String,dynamic>json){
    return CoordinatesModel(lat: json[ApiKey.lat], lng: json[ApiKey.lng]);
  }
  Map<String,dynamic>toJson(){
    return{
      ApiKey.lat:lat,
      ApiKey.lng:lng
    };
  }
}
