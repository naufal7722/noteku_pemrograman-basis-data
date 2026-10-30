import 'package:flutter/material.dart';

/// Model data catatan harian
class Note {
  final String id;
  final String title;
  final String content;
  final String category;
  final IconData icon;
  final Color color;
  final Color iconBgColor;
  final Color iconColor;
  final String priority;
  final DateTime dateTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.category,
    required this.icon,
    required this.color,
    required this.iconBgColor,
    required this.iconColor,
    required this.priority,
    required this.dateTime,
  });

  /// Format tanggal singkat (Contoh: "19 Oktober 2026")
  String get formattedDate {
    final months = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember',
    ];
    return '${dateTime.day} ${months[dateTime.month - 1]} ${dateTime.year}';
  }

  /// Format waktu (Contoh: "09.30")
  String get formattedTime {
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    return '$hour.$minute';
  }

  /// Format tanggal dan waktu lengkap (Contoh: "19 Oktober 2026 • 09.30")
  String get formattedFullDateTime {
    return '$formattedDate • $formattedTime';
  }

  /// Salin objek dengan beberapa atribut baru
  Note copyWith({
    String? id,
    String? title,
    String? content,
    String? category,
    IconData? icon,
    Color? color,
    Color? iconBgColor,
    Color? iconColor,
    String? priority,
    DateTime? dateTime,
  }) {
    return Note(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      category: category ?? this.category,
      icon: icon ?? this.icon,
      color: color ?? this.color,
      iconBgColor: iconBgColor ?? this.iconBgColor,
      iconColor: iconColor ?? this.iconColor,
      priority: priority ?? this.priority,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
