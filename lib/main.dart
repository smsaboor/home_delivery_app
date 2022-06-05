import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_delivery_app/bloc/cubit/cubit_bottom_nav.dart';
import 'package:home_delivery_app/bloc/cubit/cubit_internet_connectivity.dart';
import 'package:home_delivery_app/bloc/cubit/cubit_theme.dart';
import 'package:home_delivery_app/presentation/route/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CubitInternetConnectivity>(
          create: (BuildContext context) => CubitInternetConnectivity(),
        ),
        BlocProvider<CubitTheme>(
          create: (BuildContext context) => CubitTheme(),
        ),
        BlocProvider<CubitBottomNavScreen>(
          create: (BuildContext context) => CubitBottomNavScreen(),
        ),
      ],
      child: BlocBuilder<CubitTheme, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp(
            title: 'Fitness Tracker',
            debugShowCheckedModeBanner: false,
            color: Colors.blue,
            theme: themeState.currentTheme,
            builder: (BuildContext context, Widget? child) {
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                      textScaleFactor: MediaQuery.of(context).textScaleFactor < 1
                          ? MediaQuery.of(context).textScaleFactor
                          : 1),
                  child: child!);
            },
            initialRoute: RouteGenerator.bottomNavScreen,
            onGenerateRoute: RouteGenerator.generateRoute,
          );
        },
      ),
    );
  }
}
