
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_delivery_app/bloc/cubit/cubit_bottom_nav.dart';
import 'package:home_delivery_app/bloc/cubit/cubit_theme.dart';
import 'package:home_delivery_app/presentation/route/route.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavCubit>(
          create: (BuildContext context) => BottomNavCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (BuildContext context) => ThemeCubit(),
        ),
      ],
      child:  BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Fitness Tracker',
            debugShowCheckedModeBanner: false,
            color: Colors.blue,
            theme: state.currentTheme,
            initialRoute: RouteGenerator.bottomNavScreen,
            onGenerateRoute: RouteGenerator.generateRoute,
          );
        },
      ),
    );
  }
}