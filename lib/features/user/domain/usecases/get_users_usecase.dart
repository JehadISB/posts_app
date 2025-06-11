import 'package:dartz/dartz.dart';
import 'package:posts_clesn_app/core/error/failure.dart';
import 'package:posts_clesn_app/features/user/domain/entities/users_entity.dart';
import 'package:posts_clesn_app/features/user/domain/repositories/users_repository.dart';

class GetUsersUsecase {
  final UsersRepository repository;
  GetUsersUsecase({required this.repository});

  Future<Either<Failure,UsersEntity>> call()async{
    return await repository.getUsers();
  }

}