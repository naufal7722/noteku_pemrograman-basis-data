import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mynote/main.dart';
import 'package:mynote/screens/home_screen.dart';
import 'package:mynote/screens/login_screen.dart';
import 'package:mynote/screens/add_note_screen.dart';

void main() {
  testWidgets('Splash screen renders properly and transitions',
      (WidgetTester tester) async {
    await tester.pumpWidget(const CatatanKuApp());

    // Memverifikasi teks judul CatatanKu pada Splash Screen
    expect(find.text('CatatanKu'), findsOneWidget);
    expect(find.text('CATATAN HARIAN MODERN'), findsOneWidget);

    // Mensimulasikan timer transisi 3 detik
    await tester.pump(const Duration(seconds: 4));
  });

  testWidgets('Login screen displays all elements and actions',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen(),
      ),
    );

    // Memverifikasi elemen-elemen Login
    expect(find.text('Masuk Sekarang'), findsOneWidget);
    expect(find.text('Masuk dengan Google'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
  });

  testWidgets('Home screen displays header and note list',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: HomeScreen(),
      ),
    );

    // Memverifikasi elemen Beranda
    expect(find.text('Cari catatan...'), findsOneWidget);
    expect(find.byIcon(Icons.add_rounded), findsOneWidget);
  });

  testWidgets('Add note screen displays inputs and save button',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AddNoteScreen(),
      ),
    );

    // Memverifikasi elemen form input catatan
    expect(find.text('Tambah Catatan'), findsOneWidget);
    expect(find.text('Simpan Catatan'), findsOneWidget);
    expect(find.text('Judul Catatan'), findsOneWidget);
    expect(find.text('Isi Catatan'), findsOneWidget);
  });
}
