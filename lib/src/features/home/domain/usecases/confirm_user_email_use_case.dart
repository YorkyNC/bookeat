import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:bookeat/src/features/auth/domain/entities/confirm_user_email_entity.dart';
import 'package:bookeat/src/features/auth/domain/repositories/authorization_repository_impl.dart'
    show AuthorizationRepositoryImpl;
import 'package:bookeat/src/features/auth/domain/request/confirm_user_email_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';

@lazySingleton
class ConfirmUserEmailUseCase
    extends UseCase<ConfirmUserEmailEntity, ConfirmUserEmailRequest> {
  final IAuthRepository _authRepository;

  ConfirmUserEmailUseCase(@Named.from(AuthorizationRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, ConfirmUserEmailEntity>> execute(
    ConfirmUserEmailRequest requestModel,
  ) =>
      _authRepository.confirmUserEmail(requestModel);
}

