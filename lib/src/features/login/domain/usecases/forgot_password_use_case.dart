import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:bookeat/src/features/login/domain/entities/forgot_password_entity.dart';
import 'package:bookeat/src/features/login/domain/repositories/authorization_repository_impl.dart'
    show AuthorizationRepositoryImpl;
import 'package:bookeat/src/features/login/domain/request/forgot_password_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';

@lazySingleton
class ForgotPasswordUseCase extends UseCase<ForgotPasswordEntity, ForgotPasswordRequest> {
  final IAuthRepository _authRepository;

  ForgotPasswordUseCase(@Named.from(AuthorizationRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, ForgotPasswordEntity>> execute(ForgotPasswordRequest requestModel) async =>
      _authRepository.forgotPassword(requestModel);
}
