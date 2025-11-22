import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:bookeat/src/features/auth/domain/entities/reset_password_entity.dart';
import 'package:bookeat/src/features/auth/domain/repositories/authorization_repository_impl.dart'
    show AuthorizationRepositoryImpl;
import 'package:bookeat/src/features/auth/domain/request/reset_password_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';

@lazySingleton
class ResetPasswordUseCase extends UseCase<ResetPasswordEntity, ResetPasswordRequest> {
  final IAuthRepository _authRepository;

  ResetPasswordUseCase(@Named.from(AuthorizationRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, ResetPasswordEntity>> execute(ResetPasswordRequest requestModel) async =>
      _authRepository.resetPassword(requestModel);
}
