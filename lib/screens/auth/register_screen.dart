import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _nipNikController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String _role = 'siswa';
  String? _selectedTingkat;
  String? _selectedNamaKelas;
  String? _selectedClassId;

  @override
  void dispose() {
    _namaController.dispose();
    _nipNikController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(labelText: 'Nama Lengkap'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                initialValue: _role,
                decoration: const InputDecoration(labelText: 'Peran'),
                items: const [
                  DropdownMenuItem(value: 'siswa', child: Text('Siswa')),
                  DropdownMenuItem(value: 'guru', child: Text('Guru')),
                ],
                onChanged: (val) {
                  setState(() {
                    _role = val!;
                    if (_role == 'guru') {
                      _selectedTingkat = null;
                      _selectedNamaKelas = null;
                      _selectedClassId = null;
                    }
                  });
                },
              ),
              // Add other form fields here...
            ],
          ),
        ),
      ),
    );
  }
}
