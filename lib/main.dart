import 'package:flutter/material.dart';
import 'package:food_stuff_app/src/controller/botton_nav_provider.dart';
import 'package:food_stuff_app/src/controller/form_provider.dart';
import 'package:food_stuff_app/src/controller/tab_provider.dart';
import 'package:provider/provider.dart';
import 'src/views/login/login_screen.dart';
import 'src/views/main/main_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FormProvider>(
          create: (_) => FormProvider(),
        ),
        ChangeNotifierProvider<BottomNavProvider>(
          create: (_) => BottomNavProvider(),
        ),
        ChangeNotifierProvider<TabProvider>(
          create: (_) => TabProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
