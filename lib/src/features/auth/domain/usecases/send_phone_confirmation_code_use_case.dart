import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:bookeat/src/features/auth/domain/entities/send_phone_confirmation_code_entity.dart';
import 'package:bookeat/src/features/auth/domain/repositories/authorization_repository_impl.dart'
    show AuthorizationRepositoryImpl;
import 'package:bookeat/src/features/auth/domain/request/send_phone_confirmation_code_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';

@lazySingleton
class SendPhoneConfirmationCodeUseCase
    extends UseCase<SendPhoneConfirmationCodeEntity, SendPhoneConfirmationCodeRequest> {
  final IAuthRepository _authRepository;

  SendPhoneConfirmationCodeUseCase(@Named.from(AuthorizationRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, SendPhoneConfirmationCodeEntity>> execute(
    SendPhoneConfirmationCodeRequest requestModel,
  ) =>
      _authRepository.sendPhoneConfirmationCode(requestModel);
}

