import 'package:covid19/bloc/corona_bloc.dart';
import 'package:covid19/di/injector.dart';
import 'package:covid19/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injector.setup();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => Injector.resolve<CoronaBloc>(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Noto Sans"
      ),
      home: HomeScreen(),
    );
  }
}
