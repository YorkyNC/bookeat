class EndPoints {
  static const String baseUrl = 'http://157.245.172.32:8000/api';

  static const login = '/v1/auth/login';
  static const register = '/v1/auth/register';
  static const confirmRegistration = '/v1/auth/register/confirm';
  static const resendRegistrationCode = '/v1/auth/register/resend-code';
  static const requestOtpLoginCode = '/v1/auth/login/request-otp';
  static const verifyOtpAndLogin = '/v1/auth/login/verify-otp';
  static const refreshToken = '/v1/auth/refresh';
  static const confirmUserEmail = '/v1/auth/email/confirm';
  static const confirmUserPhone = '/v1/auth/phone/confirm';
  static const sendEmailConfirmationCode = '/v1/auth/email/send-code';
  static const sendPhoneConfirmationCode = '/v1/auth/phone/send-code';
  static const requestPasswordReset = '/v1/auth/password/request-reset';
  static const resetPassword = '/v1/auth/password/reset';
  static const logoutV1 = '/v1/auth/logout';
  static const promotions = '/v1/promotions';
}
