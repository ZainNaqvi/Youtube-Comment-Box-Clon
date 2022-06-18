import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_flutter_project/routes/routes.dart';
import 'package:firebase_flutter_project/screens/loginScreen/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  // firebase connectivity
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyCs3tDImvGfBLvi3RNxI6ZSQ1-BuUKDFYo",
        appId: "1:775149077576:web:2ba3adb62898303229847d1",
        messagingSenderId: "775149077576",
        projectId: "crud-a91ef",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          initialRoute: LoginScreen.routeName,
          routes: routes,
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.teal,
            textTheme: Typography.englishLike2018.apply(
              fontSizeFactor: 1.sp,
            ),
          ),
          home: child,
        );
      },
      child: LoginScreen(),
    );
  }
}
