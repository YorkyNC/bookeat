import 'package:bookeat/src/core/exceptions/domain_exception.dart';
import 'package:bookeat/src/features/home/domain/entities/get_promotions_entity.dart';
import 'package:bookeat/src/features/home/domain/request/get_promotions_request.dart' show GetPromotionsRequest;
import 'package:fpdart/fpdart.dart';

abstract class IHomeRemote {
  Future<Either<DomainException, GetPromotionsEntity>> getPromotions(
    GetPromotionsRequest body,
  );
}
