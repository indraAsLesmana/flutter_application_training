import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/create_task_form.dart';
import 'package:flutter_application_1/widgets/empty_state_widget.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';

class TeacherHomeScreen extends StatefulWidget {
  const TeacherHomeScreen({super.key});

  @override
  State<TeacherHomeScreen> createState() => _TeacherHomeScreenState();
}

class _TeacherHomeScreenState extends State<TeacherHomeScreen> {
  void _showCreateTaskBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => const CreateTaskForm(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = context.watch<AuthProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Guru'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Keluar',
            onPressed: () => authProvider.logout(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showCreateTaskBottomSheet(context),
        icon: const Icon(Icons.add),
        label: const Text('Buat Tugas Baru'),
      ),
      body: EmptyStateWidget(
        icon: Icons.assignment_outlined,
        title: 'Belum Ada Tugas',
        message:
            'Tugas yang Anda buat akan muncul di sini. Klik "Buat Tugas Baru" untuk menambahkan.',
      ),
    );
  }
}
