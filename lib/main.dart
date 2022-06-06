import 'package:counter_bloc/blocs/counter/bloc/counter_bloc.dart';
import 'package:counter_bloc/screens/screen_counter.dart';
import 'package:counter_bloc/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return CounterBloc();
      },
      child: MaterialApp(
        title: 'Flutter State Bloc',
        routes: {
          '/': (context) {
            return HomeScreen();
          },
          '/counter': (context) {
            return CounterScreen();
          }
        },
        initialRoute: '/',
      ),
    );
  }
}
