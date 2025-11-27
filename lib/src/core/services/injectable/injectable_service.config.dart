// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bookeat/src/core/api/client/rest/dio/dio_client.dart' as _i826;
import 'package:bookeat/src/core/services/storage/storage_service_impl.dart'
    as _i809;
import 'package:bookeat/src/features/auth/data/datasources/remote/authorization_remote_impl.dart'
    as _i745;
import 'package:bookeat/src/features/auth/data/datasources/remote/i_authorization_remote.dart'
    as _i671;
import 'package:bookeat/src/features/auth/data/repositories/i_auth_repository.dart'
    as _i683;
import 'package:bookeat/src/features/auth/domain/repositories/authorization_repository_impl.dart'
    as _i834;
import 'package:bookeat/src/features/auth/domain/usecases/confirm_registration_use_case.dart'
    as _i343;
import 'package:bookeat/src/features/auth/domain/usecases/confirm_user_email_use_case.dart'
    as _i721;
import 'package:bookeat/src/features/auth/domain/usecases/confirm_user_phone_use_case.dart'
    as _i639;
import 'package:bookeat/src/features/auth/domain/usecases/login_use_case.dart'
    as _i483;
import 'package:bookeat/src/features/auth/domain/usecases/logout_use_case.dart'
    as _i765;
import 'package:bookeat/src/features/auth/domain/usecases/register_user_use_case.dart'
    as _i590;
import 'package:bookeat/src/features/auth/domain/usecases/request_otp_login_code_use_case.dart'
    as _i442;
import 'package:bookeat/src/features/auth/domain/usecases/request_password_reset_use_case.dart'
    as _i677;
import 'package:bookeat/src/features/auth/domain/usecases/resend_registration_code_use_case.dart'
    as _i594;
import 'package:bookeat/src/features/auth/domain/usecases/reset_password_use_case.dart'
    as _i233;
import 'package:bookeat/src/features/auth/domain/usecases/send_email_confirmation_code_use_case.dart'
    as _i39;
import 'package:bookeat/src/features/auth/domain/usecases/send_phone_confirmation_code_use_case.dart'
    as _i369;
import 'package:bookeat/src/features/auth/domain/usecases/verify_otp_and_login_use_case.dart'
    as _i453;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await gh.singletonAsync<_i826.DioRestClient>(
      () {
        final i = _i826.DioRestClient();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.singleton<_i809.StorageServiceImpl>(() => _i809.StorageServiceImpl());
    gh.lazySingleton<_i671.IAuthorizationRemote>(
      () => _i745.AuthorizationRemoteImpl(gh<_i826.DioRestClient>()),
      instanceName: 'AuthorizationRemoteImpl',
    );
    gh.lazySingleton<_i683.IAuthRepository>(
      () => _i834.AuthorizationRepositoryImpl(gh<_i671.IAuthorizationRemote>(
          instanceName: 'AuthorizationRemoteImpl')),
      instanceName: 'AuthorizationRepositoryImpl',
    );
    gh.lazySingleton<_i343.ConfirmRegistrationUseCase>(() =>
        _i343.ConfirmRegistrationUseCase(gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i639.ConfirmUserPhoneUseCase>(() =>
        _i639.ConfirmUserPhoneUseCase(gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i590.RegisterUserUseCase>(() => _i590.RegisterUserUseCase(
        gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i765.LogoutUseCase>(() => _i765.LogoutUseCase(
        gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i39.SendEmailConfirmationCodeUseCase>(() =>
        _i39.SendEmailConfirmationCodeUseCase(gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i442.RequestOtpLoginCodeUseCase>(() =>
        _i442.RequestOtpLoginCodeUseCase(gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i483.LoginUseCase>(() => _i483.LoginUseCase(
        gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i233.ResetPasswordUseCase>(() =>
        _i233.ResetPasswordUseCase(gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i594.ResendRegistrationCodeUseCase>(() =>
        _i594.ResendRegistrationCodeUseCase(gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i677.RequestPasswordResetUseCase>(() =>
        _i677.RequestPasswordResetUseCase(gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i453.VerifyOtpAndLoginUseCase>(() =>
        _i453.VerifyOtpAndLoginUseCase(gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i369.SendPhoneConfirmationCodeUseCase>(() =>
        _i369.SendPhoneConfirmationCodeUseCase(gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i721.ConfirmUserEmailUseCase>(() =>
        _i721.ConfirmUserEmailUseCase(gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    return this;
  }
}
