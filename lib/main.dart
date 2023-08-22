import 'package:basics/bloc/app_bloc.dart';
import 'package:flutter/material.dart';

import 'package:basics/gradient_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => AppBloc(),
        child: const Scaffold(
          body: GradientContainer(
            Color.fromARGB(255, 33, 5, 109),
            Color.fromARGB(255, 68, 21, 149),
          ),
        ),
      ),
    ),
  );
}
