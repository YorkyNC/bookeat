import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:bookeat/src/core/api/client/endpoints.dart';
import 'package:bookeat/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:bookeat/src/core/router/router.dart';
import 'package:bookeat/src/features/auth/domain/entities/forgot_password_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/refresh_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/reset_password_entity.dart';
import 'package:bookeat/src/features/auth/domain/enum/auth_status_type.dart';
import 'package:bookeat/src/features/auth/domain/request/forgot_password_request.dart';
import 'package:bookeat/src/features/auth/domain/request/request_otp_code.dart';
import 'package:bookeat/src/features/auth/domain/request/reset_password_request.dart';
import 'package:bookeat/src/features/auth/domain/request/sign_in_request.dart';
import 'package:bookeat/src/features/auth/domain/request/sign_up_request.dart';
import 'package:bookeat/src/features/auth/domain/request/verify_otp_request.dart';
import 'package:bookeat/src/features/auth/domain/usecases/forgot_password_use_case.dart';
import 'package:bookeat/src/features/auth/domain/usecases/request_otp_code_use_case.dart';
import 'package:bookeat/src/features/auth/domain/usecases/reset_password_use_case.dart';
import 'package:bookeat/src/features/auth/domain/usecases/sign_in_use_case.dart';
import 'package:bookeat/src/features/auth/domain/usecases/sing_up_use_case.dart';
import 'package:bookeat/src/features/auth/domain/usecases/verify_otp_use_case.dart';

part 'authorization_bloc.freezed.dart';
part 'authorization_event.dart';
part 'authorization_state.dart';

@injectable
class AuthorizationBloc extends BaseBloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc(
    this._signInUseCase,
    this._signUpUseCase,
    this._requestOtpCodeUseCase,
    this._verifyOtpUseCase,
    this._forgotPasswordUseCase,
    this._resetPasswordUseCase,
  ) : super(AuthorizationState()) {
    setUpHandlers();
  }

  Timer? _timer;
  final SignInUseCase _signInUseCase;
  final SignUpUseCase _signUpUseCase;
  final RequestOtpCodeUseCase _requestOtpCodeUseCase;
  final VerifyOtpUseCase _verifyOtpUseCase;
  final ForgotPasswordUseCase _forgotPasswordUseCase;
  final ResetPasswordUseCase _resetPasswordUseCase;
  void setUpHandlers() {
    on<PhoneCodeChanged>(_onPhoneCodeChanged);
    on<PhoneNumberChanged>(_onPhoneNumberChanged);
    on<SignIn>(_onSignIn);
    on<StartTimer>(_onStartTimer);
    on<TimerTicked>(_onTimerTicked);
    on<ResetTimer>(_onResetTimer);
    on<ResendOtp>(_onResendOtp);
    on<OtpChanged>(_onOtpChanged);
    on<SignUp>(_onSignUp);
    on<ValidateForm>(_onValidateForm);
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<PasswordVisibilityChanged>(_onPasswordVisibilityChanged);
    on<NameChanged>(_onNameChanged);
    on<SurnameChanged>(_onSurnameChanged);
    on<ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<ClearError>(_onClearError);
    on<OtpCodeRequested>(_onOtpCodeRequested);
    on<VerifyOtpRequested>(_onVerifyOtpRequested);
    on<TestRefreshToken>(_onTestRefreshToken);
    on<ForgotPassword>(_onForgotPassword);
    on<ResetPassword>(_onResetPassword);
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  Future<void> _onForgotPassword(ForgotPassword event, Emitter<AuthorizationState> emit) async {
    emit(
      state.copyWith(
        isForgotPasswordSuccess: false,
        isForgotPasswordLoading: true,
        isForgotPasswordError: false,
        error: null,
      ),
    );
    final result = await _forgotPasswordUseCase.execute(event.request);
    await result.fold((l) async {
      emit(state.copyWith(
        isForgotPasswordSuccess: false,
        isForgotPasswordLoading: false,
        isForgotPasswordError: true,
        error: l.message,
      ));
    }, (r) async {
      emit(state.copyWith(
        forgotPasswordEntity: r,
        error: null,
        isForgotPasswordSuccess: true,
        isForgotPasswordLoading: false,
        isForgotPasswordError: false,
      ));
    });
  }

  Future<void> _onResetPassword(ResetPassword event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      isResetPasswordSuccess: false,
      isResetPasswordLoading: true,
      isResetPasswordError: false,
    ));

    final result = await _resetPasswordUseCase.execute(event.request);
    await result.fold(
      (l) async {
        emit(state.copyWith(
          isResetPasswordSuccess: false,
          isResetPasswordLoading: false,
          isResetPasswordError: true,
          error: l.message,
          password: null,
          confirmPassword: null,
        ));
      },
      (r) async {
        emit(state.copyWith(
          resetPasswordEntity: r,
          error: null,
          isResetPasswordSuccess: true,
          isResetPasswordLoading: false,
          isResetPasswordError: false,
          password: null,
          confirmPassword: null,
        ));
      },
    );
  }

  Future<void> _onEmailChanged(EmailChanged event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      email: event.email,
      isEmailFilled: event.email.isNotEmpty,
      error: null,
    ));
  }

  Future<void> _onPasswordChanged(PasswordChanged event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      password: event.password,
      isPasswordFilled: event.password.isNotEmpty,
      error: null,
    ));
  }

  Future<void> _onPasswordVisibilityChanged(PasswordVisibilityChanged event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      isObscurePassword: event.isVisible,
    ));
  }

  Future<void> _onNameChanged(NameChanged event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      name: event.name,
      isNameFilled: event.name.isNotEmpty,
      error: null,
    ));
  }

  Future<void> _onSurnameChanged(SurnameChanged event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      surname: event.surname,
      isSurnameFilled: event.surname.isNotEmpty,
      error: null,
    ));
  }

  Future<void> _onConfirmPasswordChanged(ConfirmPasswordChanged event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      confirmPassword: event.confirmPassword,
      isConfirmPasswordFilled: event.confirmPassword.isNotEmpty,
      error: null,
    ));
  }

  Future<void> _onClearError(ClearError event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      error: null,
      success: false,
      isVerifyOtpError: false,
      isOtpError: false,
    ));
  }

  @override
  void onEventHandler(AuthorizationEvent event, Emitter emit) {
    // This method is required by BaseBloc but we're using the specific handlers
    // The actual event handling is done in the specific methods below
  }

  Future<void> _onPhoneCodeChanged(PhoneCodeChanged event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      phoneCode: event.phoneCode,
      flag: event.flag,
      isPhoneCodeFilled: event.phoneCode.isNotEmpty,
      error: null,
    ));
  }

  Future<void> _onPhoneNumberChanged(PhoneNumberChanged event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      phoneNumber: event.phoneNumber,
      isPhoneNumberFilled: event.phoneNumber.isNotEmpty,
      error: null,
    ));
  }

  Future<void> _onOtpChanged(OtpChanged event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      isOtpSuccess: false,
      isOtpLoading: true,
    ));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(
      otp: event.otp,
      isOtpFilled: event.otp.isNotEmpty,
      isOtpLoading: false,
      isOtpSuccess: true,
    ));
  }

  Future<void> _onStartTimer(StartTimer event, Emitter<AuthorizationState> emit) async {
    _timer?.cancel();
    emit(state.copyWith(
      remainingSeconds: 60,
      canRequestCode: false,
      isTimerRunning: true,
    ));

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final newSeconds = state.remainingSeconds - 1;
      add(TimerTicked(newSeconds));

      if (newSeconds <= 0) {
        timer.cancel();
      }
    });
  }

  Future<void> _onTimerTicked(TimerTicked event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      remainingSeconds: event.remainingSeconds,
      canRequestCode: event.remainingSeconds <= 0,
      isTimerRunning: event.remainingSeconds > 0,
    ));
  }

  Future<void> _onResetTimer(ResetTimer event, Emitter<AuthorizationState> emit) async {
    _timer?.cancel();
    emit(state.copyWith(
      remainingSeconds: 60,
      canRequestCode: false,
      isTimerRunning: false,
    ));
  }

  Future<void> _onResendOtp(ResendOtp event, Emitter<AuthorizationState> emit) async {
    if (state.canRequestCode) {
      add(StartTimer());
    }
  }

  Future<void> _onValidateForm(ValidateForm event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      isValidate: true,
    ));
  }

  Future<void> _onSignUp(SignUp event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      success: false,
      isLoading: true,
      authStatus: null,
      token: null,
      error: null,
    ));
    final result = await _signUpUseCase.execute(SignUpRequest(
      email: event.request.email,
      password: event.request.password,
      phoneNumber: event.request.phoneNumber,
      name: event.request.name,
      surname: event.request.surname,
    ));
    await result.fold((l) async {
      emit(state.copyWith(
        authStatus: null,
        token: null,
        isLoading: false,
        error: _localizeSignUpError(l.message),
      ));
    }, (r) async {
      await st.deleteAuthStatus();
      await st.deleteToken();

      await st.setToken(r.accessToken);
      await st.setRefreshToken(r.refreshToken);
      await st.setAuthStatus(r.authStatus.name.toUpperCase());

      await st.extractAndSavePvzIdFromToken(r.accessToken);
      await st.extractAndSaveUserIdFromToken(r.accessToken);

      emit(state.copyWith(
        authStatus: r.authStatus,
        token: r.accessToken,
        refreshToken: r.refreshToken,
        error: null,
        isLoading: false,
        success: true,
      ));
    });
  }

  Future<void> _onVerifyOtpRequested(VerifyOtpRequested event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      isVerifyOtpSuccess: false,
      isVerifyOtpLoading: true,
      isVerifyOtpError: false,
      error: null,
    ));

    final result = await _verifyOtpUseCase.execute(event.request);

    await result.fold((l) async {
      emit(state.copyWith(
        isVerifyOtpSuccess: false,
        isVerifyOtpError: true,
        isVerifyOtpLoading: false,
        error: l.message,
      ));
    }, (r) async {
      if (r.verified) {
        emit(state.copyWith(
          isVerifyOtpSuccess: true,
          isVerifyOtpError: false,
          isVerifyOtpLoading: false,
          error: null,
        ));
      } else {
        emit(state.copyWith(
          isVerifyOtpSuccess: false,
          isVerifyOtpError: true,
          isVerifyOtpLoading: false,
          error: r.pinError ?? 'Неверный код',
        ));
      }
    });
  }

  Future<void> _onSignIn(SignIn event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      success: false,
      isLoading: true,
      authStatus: null,
      token: null,
      error: null,
    ));
    final result = await _signInUseCase.execute(SignInRequest(
      email: event.email,
      password: event.password,
    ));
    await result.fold(
      (l) async {
        final localizedError = _localizeSignInError(l.message);
        emit(state.copyWith(
          authStatus: null,
          token: null,
          refreshToken: null,
          isLoading: false,
          error: localizedError,
        ));
      },
      (r) async {
        await st.deleteAuthStatus();
        await st.deleteToken();

        await st.setToken(r.accessToken);
        await st.setRefreshToken(r.refreshToken);
        await st.setAuthStatus(r.authStatus.name.toUpperCase());

        await st.extractAndSavePvzIdFromToken(r.accessToken);
        await st.extractAndSaveUserIdFromToken(r.accessToken);

        emit(
          state.copyWith(
            authStatus: r.authStatus,
            error: null,
            password: null,
            email: null,
            isPasswordFilled: false,
            isEmailFilled: false,
            token: r.accessToken,
            refreshToken: r.refreshToken,
            isLoading: false,
            success: true,
          ),
        );
      },
    );
  }

  Future<void> _onOtpCodeRequested(OtpCodeRequested event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      isOtpSuccess: false,
      isOtpLoading: true,
      error: null,
      isOtpError: false,
      isOtpFilled: false,
      pinId: null,
    ));

    final result = await _requestOtpCodeUseCase.execute(event.request);

    await result.fold((l) async {
      emit(state.copyWith(
        isOtpSuccess: false,
        isOtpLoading: false,
        pinId: null,
        error: l.message,
        isOtpError: true,
        isOtpFilled: false,
      ));
    }, (r) async {
      emit(state.copyWith(
        pinId: r.pinId,
        error: null,
        isOtpError: false,
        isOtpLoading: false,
        isOtpSuccess: true,
        isOtpFilled: true,
      ));
    });
  }

  Future<void> _onTestRefreshToken(TestRefreshToken event, Emitter<AuthorizationState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      error: null,
    ));

    try {
      final String? refreshToken = st.getRefreshToken();
      if (refreshToken == null) {
        emit(state.copyWith(
          isLoading: false,
          error: 'No refresh token found. Please sign in first.',
        ));
        return;
      }

      final dio = Dio();

      final response = await dio.post(
        '${EndPoints.baseUrl}/${EndPoints.refreshToken}',
        data: {"refreshToken": refreshToken},
        options: Options(
          headers: {'Content-Type': 'application/json'},
          sendTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        ),
      );

      if (response.statusCode == 200 && response.data != null) {
        final data = RefreshEntity.fromJson(response.data);

        await st.setToken(data.accessToken);
        await st.setRefreshToken(data.refreshToken);
        await st.extractAndSavePvzIdFromToken(data.accessToken);
        await st.extractAndSaveUserIdFromToken(data.accessToken);

        emit(state.copyWith(
          isLoading: false,
          error: null,
          success: true,
          token: data.accessToken,
          refreshToken: data.refreshToken,
          authStatus: data.authStatus,
        ));
      } else {
        emit(state.copyWith(
          isLoading: false,
          error: 'Refresh failed with status: ${response.statusCode}',
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: 'Refresh token test failed: $e',
      ));
    }
  }
}

String _localizeSignUpError(String? message) {
  if (message == null || message.isEmpty) {
    return 'Произошла ошибка. Попробуйте позже';
  }
  final normalized = message.toLowerCase();
  if (normalized.contains('user with the given username or email already exists')) {
    return 'Пользователь с таким email уже зарегистрирован';
  }
  return message;
}

String _localizeSignInError(String? message) {
  if (message == null || message.isEmpty) {
    return 'Произошла ошибка. Попробуйте позже';
  }
  final normalized = message.toLowerCase().trim();

  if (normalized.contains('invalid credentials') ||
      normalized.contains('bad credentials') ||
      normalized.contains('user not found')) {
    return 'Неверный email или пароль';
  }
  if (normalized.contains('account locked')) {
    return 'Аккаунт заблокирован. Обратитесь в поддержку';
  }
  if (normalized.contains('server returned html')) {
    return 'Сервер недоступен. Попробуйте позже';
  }
  return message;
}
