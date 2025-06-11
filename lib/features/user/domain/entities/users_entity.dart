import 'package:posts_clesn_app/features/user/domain/entities/sub_entites/address_entity.dart';

class UsersEntity {
  final int id;
  final String firstName;
  final String image;
  final AddressEntity address;

  UsersEntity({
    required this.id,
    required this.firstName,
    required this.image,
    required this.address,
  });
}


