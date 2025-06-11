import 'package:dartz/dartz.dart';
import 'package:posts_clesn_app/core/error/failure.dart';
import 'package:posts_clesn_app/features/user/domain/entities/users_entity.dart';

abstract class  UsersRepository {

 Future<Either<Failure,UsersEntity>> getUsers();
}