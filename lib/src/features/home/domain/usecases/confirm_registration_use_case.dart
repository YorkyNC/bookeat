import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:bookeat/src/features/auth/domain/entities/confirm_registration_entity.dart';
import 'package:bookeat/src/features/auth/domain/repositories/authorization_repository_impl.dart'
    show AuthorizationRepositoryImpl;
import 'package:bookeat/src/features/auth/domain/request/confirm_registration_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';

@lazySingleton
class ConfirmRegistrationUseCase
    extends UseCase<ConfirmRegistrationEntity, ConfirmRegistrationRequest> {
  final IAuthRepository _authRepository;

  ConfirmRegistrationUseCase(@Named.from(AuthorizationRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, ConfirmRegistrationEntity>> execute(
    ConfirmRegistrationRequest requestModel,
  ) =>
      _authRepository.confirmRegistration(requestModel);
}

