import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_delivery_app/bloc/cubit/cubit_bottom_nav.dart';
import 'package:home_delivery_app/presentation/widgets/bottom_nav/custom_app_bar.dart';
import 'package:home_delivery_app/presentation/widgets/bottom_nav/custom_body.dart';
import 'package:home_delivery_app/presentation/widgets/bottom_nav/custom_nav_bar.dart';
import 'package:home_delivery_app/util/constants.dart';

class ScreenBottomNav extends StatefulWidget {
  @override
  _ScreenBottomState createState() => _ScreenBottomState();
}

class _ScreenBottomState extends State<ScreenBottomNav> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitBottomNavScreen, int>(
      builder: (context, stateBottomNav) {
        return Scaffold(
          appBar: CustomAppBar(title: TX_SWITH_THEME),
          body: CustomBody(index: stateBottomNav, list: CKL_SELECTPAGE),
          bottomNavigationBar: CustomBottomNavBar(
              index: context.read<CubitBottomNavScreen>().state,
              function: _getChangeBottomNav),
        );
      },
    );
  }

  void _getChangeBottomNav(int index) {
    context.read<CubitBottomNavScreen>().updateIndex(index);
  }
}
