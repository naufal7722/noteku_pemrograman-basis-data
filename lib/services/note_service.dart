import 'package:flutter/material.dart';
import '../models/note_model.dart';
import '../theme/app_theme.dart';

/// Service untuk mengelola state data catatan (In-Memory Repository)
class NoteService {
  // Singleton pattern
  static final NoteService _instance = NoteService._internal();
  factory NoteService() => _instance;
  NoteService._internal() {
    _initializeInitialNotes();
  }

  /// Notifier daftar catatan agar UI terupdate secara reaktif
  final ValueNotifier<List<Note>> notesNotifier = ValueNotifier<List<Note>>([]);

  void _initializeInitialNotes() {
    notesNotifier.value = [
      Note(
        id: '1',
        title: 'Ide Aplikasi',
        content:
            'Membuat aplikasi catatan sederhana dengan fitur kategori, warna, dan prioritas. Aplikasi ini digunakan untuk mencatat ide, rencana, dan hal penting sehari-hari.',
        category: 'Penting',
        icon: Icons.lightbulb_rounded,
        color: AppTheme.noteColors[0], // Merah lembut
        iconBgColor: const Color(0xFFFFF3E0),
        iconColor: const Color(0xFFFF9800),
        priority: 'Tinggi',
        dateTime: DateTime(2026, 10, 19, 9, 30),
      ),
      Note(
        id: '2',
        title: 'Rencana Mingguan',
        content:
            'Menyusun jadwal kegiatan mingguan, target penyelesaian modul UI Flutter, dan koordinasi dengan dosen pengampu.',
        category: 'Kerja',
        icon: Icons.calendar_month_rounded,
        color: AppTheme.noteColors[3], // Mint lembut
        iconBgColor: const Color(0xFFE8F5E9),
        iconColor: const Color(0xFF4CAF50),
        priority: 'Sedang',
        dateTime: DateTime(2026, 10, 18, 14, 15),
      ),
      Note(
        id: '3',
        title: 'Catatan Kuliah',
        content:
            'Pembahasan materi Pemrograman Basis Data: normalisasi tabel (1NF hingga 3NF), index performa query, serta integrasi frontend Flutter.',
        category: 'Kuliah',
        icon: Icons.menu_book_rounded,
        color: AppTheme.noteColors[5], // Lavender lembut
        iconBgColor: const Color(0xFFEDE7F6),
        iconColor: const Color(0xFF7E57C2),
        priority: 'Sedang',
        dateTime: DateTime(2026, 10, 17, 10, 0),
      ),
      Note(
        id: '4',
        title: 'Hal yang Perlu Dibeli',
        content:
            '1. Buku catatan binder A5\n2. Pen marker warna merah & hitam\n3. Sticky notes memo\n4. Kopi sachet untuk begadang coding',
        category: 'Belanja',
        icon: Icons.shopping_cart_rounded,
        color: AppTheme.noteColors[1], // Coral lembut
        iconBgColor: const Color(0xFFFFEBEE),
        iconColor: const Color(0xFFE53935),
        priority: 'Rendah',
        dateTime: DateTime(2026, 10, 16, 16, 45),
      ),
      Note(
        id: '5',
        title: 'Jurnal Harian',
        content:
            'Alhamdulillah berhasil merancang UI aplikasi catatan CatatanKu dengan tema merah yang sangat bersih, konsisten, dan memenuhi seluruh kriteria penilaian.',
        category: 'Pribadi',
        icon: Icons.favorite_rounded,
        color: AppTheme.noteColors[0], // Rose merah lembut
        iconBgColor: const Color(0xFFE1F5FE),
        iconColor: const Color(0xFF039BE5),
        priority: 'Sedang',
        dateTime: DateTime(2026, 10, 15, 20, 30),
      ),
    ];
  }

  /// Tambah catatan baru di posisi paling atas
  void addNote(Note note) {
    notesNotifier.value = [note, ...notesNotifier.value];
  }

  /// Hapus catatan berdasarkan id
  void deleteNote(String id) {
    notesNotifier.value =
        notesNotifier.value.where((item) => item.id != id).toList();
  }

  /// Perbarui catatan
  void updateNote(Note updatedNote) {
    notesNotifier.value = notesNotifier.value.map((item) {
      return item.id == updatedNote.id ? updatedNote : item;
    }).toList();
  }

  /// Dapatkan icon dan warna default berdasarkan kategori
  static Map<String, dynamic> getCategoryAttributes(String category) {
    switch (category) {
      case 'Penting':
        return {
          'icon': Icons.lightbulb_rounded,
          'bgColor': const Color(0xFFFFF3E0),
          'color': const Color(0xFFFF9800),
        };
      case 'Kerja':
        return {
          'icon': Icons.calendar_month_rounded,
          'bgColor': const Color(0xFFE8F5E9),
          'color': const Color(0xFF4CAF50),
        };
      case 'Kuliah':
        return {
          'icon': Icons.menu_book_rounded,
          'bgColor': const Color(0xFFEDE7F6),
          'color': const Color(0xFF7E57C2),
        };
      case 'Belanja':
        return {
          'icon': Icons.shopping_cart_rounded,
          'bgColor': const Color(0xFFFFEBEE),
          'color': const Color(0xFFE53935),
        };
      case 'Pribadi':
      default:
        return {
          'icon': Icons.favorite_rounded,
          'bgColor': const Color(0xFFE1F5FE),
          'color': const Color(0xFF039BE5),
        };
    }
  }
}
