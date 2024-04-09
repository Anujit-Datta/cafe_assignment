import 'dart:ui';
import 'package:cafe_assignment/presentation/widget/BackgroundWidget.dart';
import 'package:flutter/material.dart';
import '../widget/home_screen_widgets/bottom_nav_bar.dart';
import '../widget/home_screen_widgets/list_area/get_it_instantly_text.dart';
import '../widget/home_screen_widgets/list_area/list_area.dart';
import '../widget/home_screen_widgets/popular_area/populer_coffee_area.dart';
import '../widget/home_screen_widgets/topbar_area/profile_bar.dart';
import '../widget/home_screen_widgets/topbar_area/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizes = MediaQuery.sizeOf(context);
    return Scaffold(
      body: BackgroundWidget(
        brownHue: true,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                  child: Column(
                    children: [
                      ProfileBar(sizes: sizes),
                      SizedBox(height: sizes.height * 0.035),
                      const SearchBarWidget(),
                    ],
                  ),
                ),
                PopularCoffeeArea(
                    sizes: sizes,),
                const GetItInstantly(),
                ListArea(sizes: sizes),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: BottomNavBar(sizes: sizes)
    );
  }
}



