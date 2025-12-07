import 'package:bookeat/src/features/home/domain/repositories/home_repository_impl.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_home_repository.dart';
import '../entities/get_promotions_entity.dart';
import '../request/get_promotions_request.dart';

@lazySingleton
class PromotionsUseCase extends UseCase<GetPromotionsEntity, GetPromotionsRequest> {
  final IHomeRepository _homeRepository;

  PromotionsUseCase(@Named.from(HomeRepositoryImpl) this._homeRepository);

  @override
  Future<Either<DomainException, GetPromotionsEntity>> execute(
    GetPromotionsRequest requestModel,
  ) =>
      _homeRepository.getPromotions(requestModel);
}
