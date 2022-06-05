
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_delivery_app/bloc/cubit/cubit_bottom_nav.dart';
import 'package:home_delivery_app/bloc/cubit/cubit_theme.dart';

class ScreenBottomNav extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<ScreenBottomNav> {
  /// Create a list of pages to make the code shorter and better readability
  ///
  final _pageNavigation = [
    Container(child: Center(child: Text('Screen 1'),),),
    Container(child: Center(child: Text('Screen 2'),),),
    Container(child: Center(child: Text('Screen 3'),),),
    Container(child: Center(child: Text('Screen 4'),),),
    Container(child: Center(child: Text('Screen 5'),),),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Switch themes'),
            actions: [
              BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, state) {
                  return Switch(
                    value: state.isDarkThemeOn,
                    onChanged: (newValue) {
                      context.read<ThemeCubit>().toggleSwitch(newValue);
                    },
                  );
                },
              ),
            ],
          ),
          body: _buildBody(state),
          bottomNavigationBar: _buildBottomNav(),
        );
      },
    );
  }

  Widget _buildBody(int index) {
    /// Check if index is in range
    /// else return Not Found widget
    return _pageNavigation.elementAt(index);
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: context.read<BottomNavCubit>().state,
      type: BottomNavigationBarType.fixed,
      onTap: _getChangeBottomNav,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined), label: "Get Trained"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "Post"),
        BottomNavigationBarItem(
            icon: Icon(Icons.border_top_outlined), label: 'Tools'),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
      ],
    );
  }

  void _getChangeBottomNav(int index) {
    context.read<BottomNavCubit>().updateIndex(index);
  }
}
