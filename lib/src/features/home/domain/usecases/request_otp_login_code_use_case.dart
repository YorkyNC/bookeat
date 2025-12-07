import 'package:bookeat/src/features/auth/domain/entities/request_otp_login_code_entity.dart';
import 'package:bookeat/src/features/auth/domain/repositories/authorization_repository_impl.dart'
    show AuthorizationRepositoryImpl;
import 'package:bookeat/src/features/auth/domain/request/request_otp_login_code_request.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';

@lazySingleton
class RequestOtpLoginCodeUseCase extends UseCase<RequestOtpLoginCodeEntity, RequestOtpLoginCodeRequest> {
  final IAuthRepository _authRepository;

  RequestOtpLoginCodeUseCase(@Named.from(AuthorizationRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, RequestOtpLoginCodeEntity>> execute(
    RequestOtpLoginCodeRequest requestModel,
  ) =>
      _authRepository.requestOtpLoginCode(requestModel);
}
