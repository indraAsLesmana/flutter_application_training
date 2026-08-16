import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/auth_provider.dart';
import 'package:flutter_application_1/providers/school_provider.dart';
import 'package:flutter_application_1/repositories/auth_repository.dart';
import 'package:flutter_application_1/screens/auth/register_screen.dart';
import 'package:provider/provider.dart';

import 'core/network/dio_client.dart';
import 'repositories/school_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final dioClient = DioClient();
  final authRepo = AuthRepository(dioClient);
  final schoolRepo = SchoolRepository(dioClient);

  runApp(
    MultiProvider(
      providers: [
        Provider.value(value: schoolRepo),
        ChangeNotifierProvider(
          create: (_) => AuthProvider(authRepo)..loadSession(),
        ),
        ChangeNotifierProvider(
          create: (_) => SchoolProvider(schoolRepo)..fetchClasses(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const RegisterScreen(),
    );
  }
}
