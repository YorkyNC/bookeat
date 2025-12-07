import 'package:bookeat/src/features/home/domain/entities/get_promotions_entity.dart';
import 'package:bookeat/src/features/home/domain/request/get_promotions_request.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/exceptions/domain_exception.dart';

abstract class IHomeRepository {
  Future<Either<DomainException, GetPromotionsEntity>> getPromotions(
    GetPromotionsRequest body,
  );
}
