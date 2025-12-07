import 'dart:developer';

import 'package:bookeat/src/features/home/data/datasources/remote/home_remote_impl.dart';
import 'package:bookeat/src/features/home/data/datasources/remote/i_home_remote.dart';
import 'package:bookeat/src/features/home/domain/entities/get_promotions_entity.dart';
import 'package:bookeat/src/features/home/domain/request/get_promotions_request.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_home_repository.dart';

@named
@LazySingleton(as: IHomeRepository)
class HomeRepositoryImpl implements IHomeRepository {
  final IHomeRemote _homeRemote;

  HomeRepositoryImpl(@Named.from(HomeRemoteImpl) this._homeRemote);

  @override
  Future<Either<DomainException, GetPromotionsEntity>> getPromotions(GetPromotionsRequest body) async {
    try {
      final requests = await _homeRemote.getPromotions(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }
}
