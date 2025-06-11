import 'package:posts_clesn_app/core/database/api/end_points.dart';
import 'package:posts_clesn_app/features/user/data/models/sub_models/address_model.dart';
import 'package:posts_clesn_app/features/user/domain/entities/users_entity.dart';

class UsersModel extends UsersEntity {
  final AddressModel address;
  UsersModel({
    required super.id,
    required super.firstName,
    required super.image,
    required this.address,
  }):super(address: address);

  factory UsersModel.fromJson(Map<String,dynamic>json){
    return UsersModel(id: json[ApiKey.id],
        firstName: json[ApiKey.firstName],
        image: json[ApiKey.image],
        address: AddressModel.fromJson(json[ApiKey.address]));
  }

  Map<String,dynamic> toJson(){
    return {
      ApiKey.id:id,
      ApiKey.firstName: firstName,
      ApiKey.image:image,
      ApiKey.address:address.toJson(),
    };
  }
}


