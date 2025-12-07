import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:bookeat/src/features/auth/domain/entities/resend_registration_code_entity.dart';
import 'package:bookeat/src/features/auth/domain/repositories/authorization_repository_impl.dart'
    show AuthorizationRepositoryImpl;
import 'package:bookeat/src/features/auth/domain/request/resend_registration_code_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';

@lazySingleton
class ResendRegistrationCodeUseCase
    extends UseCase<ResendRegistrationCodeEntity, ResendRegistrationCodeRequest> {
  final IAuthRepository _authRepository;

  ResendRegistrationCodeUseCase(@Named.from(AuthorizationRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, ResendRegistrationCodeEntity>> execute(
    ResendRegistrationCodeRequest requestModel,
  ) =>
      _authRepository.resendRegistrationCode(requestModel);
}

