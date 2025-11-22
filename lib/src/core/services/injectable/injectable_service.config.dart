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
import 'package:bookeat/src/features/login/data/datasources/remote/authorization_remote_impl.dart'
    as _i160;
import 'package:bookeat/src/features/login/data/datasources/remote/i_authorization_remote.dart'
    as _i498;
import 'package:bookeat/src/features/login/data/repositories/i_auth_repository.dart'
    as _i225;
import 'package:bookeat/src/features/login/domain/repositories/authorization_repository_impl.dart'
    as _i14;
import 'package:bookeat/src/features/login/domain/usecases/forgot_password_use_case.dart'
    as _i1019;
import 'package:bookeat/src/features/login/domain/usecases/logout_use_case.dart'
    as _i496;
import 'package:bookeat/src/features/login/domain/usecases/request_otp_code_use_case.dart'
    as _i154;
import 'package:bookeat/src/features/login/domain/usecases/reset_password_use_case.dart'
    as _i1067;
import 'package:bookeat/src/features/login/domain/usecases/sign_in_use_case.dart'
    as _i322;
import 'package:bookeat/src/features/login/domain/usecases/sing_up_use_case.dart'
    as _i538;
import 'package:bookeat/src/features/login/domain/usecases/verify_otp_use_case.dart'
    as _i237;
import 'package:bookeat/src/features/login/presentation/bloc/authorization_bloc.dart'
    as _i425;
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
    gh.lazySingleton<_i498.IAuthorizationRemote>(
      () => _i160.AuthorizationRemoteImpl(gh<_i826.DioRestClient>()),
      instanceName: 'AuthorizationRemoteImpl',
    );
    gh.lazySingleton<_i225.IAuthRepository>(
      () => _i14.AuthorizationRepositoryImpl(gh<_i498.IAuthorizationRemote>(
          instanceName: 'AuthorizationRemoteImpl')),
      instanceName: 'AuthorizationRepositoryImpl',
    );
    gh.lazySingleton<_i496.LogoutUseCase>(() => _i496.LogoutUseCase(
        gh<_i225.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i538.SignUpUseCase>(() => _i538.SignUpUseCase(
        gh<_i225.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i322.SignInUseCase>(() => _i322.SignInUseCase(
        gh<_i225.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i154.RequestOtpCodeUseCase>(() =>
        _i154.RequestOtpCodeUseCase(gh<_i225.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i1067.ResetPasswordUseCase>(() =>
        _i1067.ResetPasswordUseCase(gh<_i225.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i1019.ForgotPasswordUseCase>(() =>
        _i1019.ForgotPasswordUseCase(gh<_i225.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.lazySingleton<_i237.VerifyOtpUseCase>(() => _i237.VerifyOtpUseCase(
        gh<_i225.IAuthRepository>(
            instanceName: 'AuthorizationRepositoryImpl')));
    gh.factory<_i425.AuthorizationBloc>(() => _i425.AuthorizationBloc(
          gh<_i322.SignInUseCase>(),
          gh<_i538.SignUpUseCase>(),
          gh<_i154.RequestOtpCodeUseCase>(),
          gh<_i237.VerifyOtpUseCase>(),
          gh<_i1019.ForgotPasswordUseCase>(),
          gh<_i1067.ResetPasswordUseCase>(),
        ));
    return this;
  }
}
