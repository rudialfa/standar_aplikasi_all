// core/utils/validator.dart

/// Satu-satunya sumber logic validasi form di seluruh aplikasi.
/// Tidak ada lagi extension terpisah (StringExtension.isEmail dihapus,
/// semua validasi email lewat sini saja) supaya tidak ada duplikasi regex.
class Validator {
  Validator._();

  static String? required(String? value, {String fieldName = 'Field'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName wajib diisi';
    }
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email wajib diisi';
    }

    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!regex.hasMatch(value.trim())) {
      return 'Format email tidak valid';
    }

    return null;
  }

  static String? password(String? value, {int minLength = 6}) {
    if (value == null || value.isEmpty) {
      return 'Password wajib diisi';
    }

    if (value.length < minLength) {
      return 'Password minimal $minLength karakter';
    }

    return null;
  }

  /// Untuk field konfirmasi password. [original] adalah controller.text
  /// dari field password utama.
  static String? confirmPassword(String? value, String original) {
    if (value == null || value.isEmpty) {
      return 'Konfirmasi password wajib diisi';
    }

    if (value != original) {
      return 'Password tidak sama';
    }

    return null;
  }

  static String? phone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return null; // phone biasanya opsional
    }

    final regex = RegExp(r'^[0-9+\-\s]{8,15}$');
    if (!regex.hasMatch(value.trim())) {
      return 'Format nomor telepon tidak valid';
    }

    return null;
  }
}
