import 'package:amazon/constants/global_variables.dart';
import 'package:amazon/features/auth/screens/auth_screen.dart';
import 'package:amazon/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          colorScheme: const ColorScheme.light(
            primary: GlobalVariables.secondaryColor,
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          )),
      onGenerateRoute: (settings) => generateRoute(settings),
      // home: Scaffold(
      //     appBar: AppBar(
      //       title: const Text("Hello"),
      //       centerTitle: true,
      //       // backgroundColor: Colors.orange,
      //     ),
      //     body: Column(
      //       children: [
      //         const Center(child: Text("Flutter Demo Home Page")),
      //         Builder(builder: (context) {
      //           return ElevatedButton(
      //             onPressed: () {
      //               Navigator.pushNamed(context, AuthScreen.routeName);
      //             },
      //             child: const Text("Click me!"),
      //           );
      //         })
      //       ],
      //     )),

      home: const AuthScreen(),
    );
  }
}
