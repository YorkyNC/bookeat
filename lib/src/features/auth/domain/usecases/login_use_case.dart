import 'package:bookeat/src/features/auth/domain/entities/login_entity.dart';
import 'package:bookeat/src/features/auth/domain/repositories/authorization_repository_impl.dart'
    show AuthorizationRepositoryImpl;
import 'package:bookeat/src/features/auth/domain/request/login_request.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';

@lazySingleton
class LoginUseCase extends UseCase<LoginEntity, LoginRequest> {
  final IAuthRepository _authRepository;

  LoginUseCase(@Named.from(AuthorizationRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, LoginEntity>> execute(LoginRequest requestModel) =>
      _authRepository.login(requestModel);
}
