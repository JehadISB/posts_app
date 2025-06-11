import 'package:posts_clesn_app/core/database/api/end_points.dart';
import 'package:posts_clesn_app/features/user/data/models/sub_models/coordinates_model.dart';
import 'package:posts_clesn_app/features/user/domain/entities/sub_entites/address_entity.dart';

class AddressModel extends AddressEntity {
  final CoordinatesModel coordinates;
  AddressModel({
    required super.address,
    required super.city,
    required this.coordinates,
  }):super(coordinates: coordinates);
 
  factory AddressModel.fromJson(Map<String,dynamic>json){
    return AddressModel(address: json[ApiKey.address],
        city: json[ApiKey.city],
        coordinates: CoordinatesModel.fromJson(json[ApiKey.coordinates]));
    
  }

  Map<String,dynamic>toJson(){
    return {
      ApiKey.address:address,
      ApiKey.city:city,
      ApiKey.coordinates:coordinates.toJson(),
    };
  }


}
