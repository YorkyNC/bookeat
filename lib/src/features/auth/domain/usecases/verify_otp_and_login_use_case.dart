import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:bookeat/src/features/auth/domain/entities/verify_otp_and_login_entity.dart';
import 'package:bookeat/src/features/auth/domain/repositories/authorization_repository_impl.dart'
    show AuthorizationRepositoryImpl;
import 'package:bookeat/src/features/auth/domain/request/verify_otp_and_login_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';

@lazySingleton
class VerifyOtpAndLoginUseCase
    extends UseCase<VerifyOtpAndLoginEntity, VerifyOtpAndLoginRequest> {
  final IAuthRepository _authRepository;

  VerifyOtpAndLoginUseCase(@Named.from(AuthorizationRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, VerifyOtpAndLoginEntity>> execute(
    VerifyOtpAndLoginRequest requestModel,
  ) =>
      _authRepository.verifyOtpAndLogin(requestModel);
}

