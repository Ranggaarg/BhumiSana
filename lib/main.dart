import 'package:bhumisana/core/navigation/application_root.dart';
import 'package:bhumisana/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(BhumiSanaApp());
}

class BhumiSanaApp extends StatelessWidget {
  BhumiSanaApp({super.key});
  
  final ApplicationRoot _applicationRoot = ApplicationRoot();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      builder: (_, __) {
        return MaterialApp(
          title: 'BhumiSana App',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: _applicationRoot.onGenerateRoute,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
        );
      },
    );
  }
}

