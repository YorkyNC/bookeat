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
import 'package:bookeat/src/features/auth/domain/usecases/forgot_password_use_case.dart'
    as _i32;
import 'package:bookeat/src/features/auth/domain/usecases/logout_use_case.dart'
    as _i765;
import 'package:bookeat/src/features/auth/domain/usecases/request_otp_code_use_case.dart'
    as _i357;
import 'package:bookeat/src/features/auth/domain/usecases/reset_password_use_case.dart'
    as _i233;
import 'package:bookeat/src/features/auth/domain/usecases/sign_in_use_case.dart'
    as _i1000;
import 'package:bookeat/src/features/auth/domain/usecases/sing_up_use_case.dart'
    as _i54;
import 'package:bookeat/src/features/auth/domain/usecases/verify_otp_use_case.dart'
    as _i36;
import 'package:bookeat/src/features/auth/presentation/bloc/authorization_bloc.dart'
    as _i485;
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
    gh.lazySingleton<_i765.LogoutUseCase>(() => _i765.LogoutUseCase(
        gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i54.SignUpUseCase>(() => _i54.SignUpUseCase(
        gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i1000.SignInUseCase>(() => _i1000.SignInUseCase(
        gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i357.RequestOtpCodeUseCase>(() =>
        _i357.RequestOtpCodeUseCase(gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i233.ResetPasswordUseCase>(() =>
        _i233.ResetPasswordUseCase(gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i32.ForgotPasswordUseCase>(() =>
        _i32.ForgotPasswordUseCase(gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i36.VerifyOtpUseCase>(() => _i36.VerifyOtpUseCase(
        gh<_i683.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.factory<_i485.AuthorizationBloc>(() => _i485.AuthorizationBloc(
          gh<_i1000.SignInUseCase>(),
          gh<_i54.SignUpUseCase>(),
          gh<_i357.RequestOtpCodeUseCase>(),
          gh<_i36.VerifyOtpUseCase>(),
          gh<_i32.ForgotPasswordUseCase>(),
          gh<_i233.ResetPasswordUseCase>(),
        ));
    return this;
  }
}
