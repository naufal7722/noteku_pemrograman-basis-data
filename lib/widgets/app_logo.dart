import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

/// Widget logo CatatanKu berdesain unik & modern
/// Menampilkan emblem buku terbuka berlapis dengan pena emas dan gradien Crimson Velvet
class AppLogo extends StatelessWidget {
  final double size;
  final bool showShadow;
  final bool lightBackground;

  const AppLogo({
    super.key,
    this.size = 90,
    this.showShadow = true,
    this.lightBackground = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: lightBackground
              ? [
                  Colors.white,
                  const Color(0xFFFFF0F2),
                ]
              : [
                  const Color(0xFFFF5252),
                  AppTheme.primary,
                  AppTheme.primaryDark,
                ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(size * 0.30),
        boxShadow: showShadow
            ? [
                BoxShadow(
                  color: AppTheme.primary.withValues(alpha: 0.38),
                  blurRadius: size * 0.25,
                  offset: Offset(0, size * 0.12),
                ),
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.08),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ]
            : null,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Efek ring pendar halus di bagian dalam
          Container(
            width: size * 0.88,
            height: size * 0.88,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size * 0.26),
              border: Border.all(
                color: (lightBackground ? AppTheme.primary : Colors.white)
                    .withValues(alpha: 0.15),
                width: 1.5,
              ),
            ),
          ),

          // Lembar buku modern (Layered Cards)
          Positioned(
            left: size * 0.22,
            top: size * 0.24,
            child: Transform.rotate(
              angle: -0.08,
              child: Container(
                width: size * 0.52,
                height: size * 0.52,
                decoration: BoxDecoration(
                  color: (lightBackground
                          ? AppTheme.primaryBadgeBg
                          : Colors.white)
                      .withValues(alpha: 0.35),
                  borderRadius: BorderRadius.circular(size * 0.12),
                ),
              ),
            ),
          ),

          // Lembar buku depan
          Container(
            width: size * 0.54,
            height: size * 0.54,
            decoration: BoxDecoration(
              color: lightBackground ? AppTheme.primary : Colors.white,
              borderRadius: BorderRadius.circular(size * 0.14),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.12),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(
              horizontal: size * 0.1,
              vertical: size * 0.12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Baris catatan dekoratif beraksen
                Container(
                  width: size * 0.28,
                  height: 3.5,
                  decoration: BoxDecoration(
                    color: lightBackground ? Colors.white : AppTheme.primary,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Container(
                  width: size * 0.34,
                  height: 3.2,
                  decoration: BoxDecoration(
                    color: (lightBackground
                            ? Colors.white
                            : AppTheme.primaryLight)
                        .withValues(alpha: 0.7),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Container(
                  width: size * 0.22,
                  height: 3.2,
                  decoration: BoxDecoration(
                    color: (lightBackground
                            ? Colors.white
                            : AppTheme.textLight)
                        .withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          ),

          // Floating Gold Quill / Nib Badge di sudut
          Positioned(
            right: size * 0.14,
            bottom: size * 0.14,
            child: Container(
              padding: EdgeInsets.all(size * 0.06),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFFFD54F), // Gold terang
                    Color(0xFFFF8F00), // Amber emas
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFFF8F00).withValues(alpha: 0.4),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Icon(
                Icons.edit_rounded,
                color: Colors.white,
                size: size * 0.18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
