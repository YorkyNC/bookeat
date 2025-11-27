import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:bookeat/src/features/auth/domain/entities/request_password_reset_entity.dart';
import 'package:bookeat/src/features/auth/domain/repositories/authorization_repository_impl.dart'
    show AuthorizationRepositoryImpl;
import 'package:bookeat/src/features/auth/domain/request/request_password_reset_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';

@lazySingleton
class RequestPasswordResetUseCase
    extends UseCase<RequestPasswordResetEntity, RequestPasswordResetRequest> {
  final IAuthRepository _authRepository;

  RequestPasswordResetUseCase(@Named.from(AuthorizationRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, RequestPasswordResetEntity>> execute(
    RequestPasswordResetRequest requestModel,
  ) =>
      _authRepository.requestPasswordReset(requestModel);
}

