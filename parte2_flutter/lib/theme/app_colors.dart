import 'package:flutter/material.dart';

/// Paleta DivideAí — tons para camadas, superfícies e marca.
///
/// Fundo da splash / ícone: cinza da logo (`logoGray` / `#585858`).
abstract final class AppColors {
  // —— Marca / primários ——
  /// Cinza amostrado do círculo da logo (splash e fundo do ícone).
  static const Color logoGray = Color(0xFF585858);
  static const Color navy = Color(0xFF4A6FA5);
  static const Color navyLight = Color(0xFF6B8FBE);
  static const Color navyDark = Color(0xFF355280);
  static const Color navyMuted = Color(0xFF5C7A9E);

  // —— Brancos e “brancos falsos” ——
  static const Color white = Color(0xFFFFFFFF);
  static const Color whiteSoft = Color(0xFFFAFBFC);
  static const Color whiteWarm = Color(0xFFF7F8FA);
  static const Color whiteCool = Color(0xFFF2F5F9);
  static const Color whiteMuted = Color(0xFFECEFF4);

  // —— Cinzas (camadas / profundidade) ——
  static const Color gray50 = Color(0xFFF5F6F8);
  static const Color gray100 = Color(0xFFE8EAEE);
  static const Color gray200 = Color(0xFFD1D5DC);
  static const Color gray300 = Color(0xFFB0B7C3);
  static const Color gray400 = Color(0xFF8B93A3);
  static const Color gray500 = Color(0xFF6B7385);
  static const Color gray600 = Color(0xFF525A6A);
  static const Color gray700 = Color(0xFF3D4452);
  static const Color gray800 = Color(0xFF2A2F3A);
  static const Color gray900 = Color(0xFF1A1D24);

  // —— Tons da logo (pie chart / círculo) ——
  static const Color ink = Color(0xFF0D0D0D);
  static const Color inkSoft = Color(0xFF1F1F1F);
  static const Color charcoal = Color(0xFF3A3A3A);
  static const Color slate = logoGray;
  static const Color mist = Color(0xFF8E8E8E);

  // —— Texto ——
  static const Color textPrimary = Color(0xFF1A1D24);
  static const Color textSecondary = Color(0xFF525A6A);
  static const Color textMuted = Color(0xFF8B93A3);
  static const Color textOnNavy = Color(0xFFFFFFFF);
  static const Color textOnNavyMuted = Color(0xFFE8EEF6);

  // —— Sombras (usar com .withValues(alpha: …)) ——
  static const Color shadow = Color(0xFF1A1D24);
  static const Color shadowSoft = Color(0xFF2A2F3A);
  static const Color shadowNavy = Color(0xFF355280);

  // —— Superfícies (impressão de camadas) ——
  static const Color surface = whiteSoft;
  static const Color surfaceRaised = white;
  static const Color surfaceSunken = whiteCool;
  static const Color surfaceCard = white;
  static const Color surfaceOverlay = Color(0xFFF0F3F7);
  static const Color divider = gray100;

  // —— Semântica leve ——
  static const Color success = Color(0xFF3D8B6E);
  static const Color warning = Color(0xFFC4922A);
  static const Color danger = Color(0xFFB54A4A);

  static List<BoxShadow> elevation1({Color? color}) => [
        BoxShadow(
          color: (color ?? shadow).withValues(alpha: 0.08),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ];

  static List<BoxShadow> elevation2({Color? color}) => [
        BoxShadow(
          color: (color ?? shadow).withValues(alpha: 0.10),
          blurRadius: 16,
          offset: const Offset(0, 4),
        ),
        BoxShadow(
          color: (color ?? shadowSoft).withValues(alpha: 0.04),
          blurRadius: 4,
          offset: const Offset(0, 1),
        ),
      ];

  static List<BoxShadow> elevation3({Color? color}) => [
        BoxShadow(
          color: (color ?? shadow).withValues(alpha: 0.14),
          blurRadius: 24,
          offset: const Offset(0, 8),
        ),
        BoxShadow(
          color: (color ?? shadowSoft).withValues(alpha: 0.06),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ];
}
