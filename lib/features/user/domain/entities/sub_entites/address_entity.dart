import 'package:posts_clesn_app/features/user/domain/entities/sub_entites/coordinates_entity.dart';

class AddressEntity {
  final String address;
  final String city;
  final CoordinatesEntity coordinates;

  AddressEntity({
    required this.address,
    required this.city,
    required this.coordinates,
  });
}
