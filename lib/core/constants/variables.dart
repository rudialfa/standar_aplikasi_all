// core/constants/variables.dart

/// Variabel-variabel global aplikasi, terutama yang berkaitan dengan
/// koneksi ke backend. Disatukan di sini supaya kalau ganti environment
/// (dev/staging/prod) cukup ubah di satu tempat.
class Variables {
  Variables._();

  static const String baseUrl = 'https://api.kosan.com';

  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
}

/// Daftar endpoint API, dikelompokkan per modul supaya mudah dicari.
/// Path di sini akan digabung dengan [Variables.baseUrl] di datasource.
class ApiEndpoints {
  ApiEndpoints._();

  // Auth
  static const String login = '/api/auth/login';
  static const String register = '/api/auth/register';
  static const String logout = '/api/auth/logout';
  static const String forgotPassword = '/api/auth/forgot-password';

  // HR - Employee
  static const String hrEmployees = '/api/company/hr/employees';
}
