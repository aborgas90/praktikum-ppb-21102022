import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum_firebase/bloc/login/login_cubit.dart';
import 'package:praktikum_firebase/bloc/register/register_cubit.dart';
import 'package:praktikum_firebase/firebase_options.dart';
import 'package:praktikum_firebase/ui/home_screen.dart';
import 'package:praktikum_firebase/ui/login.dart';
import 'package:praktikum_firebase/ui/register.dart';
import 'package:praktikum_firebase/ui/splash.dart';
import 'package:praktikum_firebase/utils/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => LoginCubit()),
          BlocProvider(create: (context) => RegisterCubit())
        ],
        child: MaterialApp(
          title: "Praktikum 6",
          debugShowCheckedModeBanner: false,
          home: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasData) {
                return HomeScreen();
              }else if(snapshot.hasError){
                return const Center(
                  child: Text(
                    'Something went wrong!'
                  ),
                );
              }else{
                return LoginScreen();
              }
            },
          ),
          navigatorKey: NAV_KEY,
          onGenerateRoute: generateRoute,
      ));
  }
}
