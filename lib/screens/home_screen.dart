import 'package:facebook_responsive_ui/config/palette.dart';
import 'package:facebook_responsive_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: const TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                icon: Icons.search,
                onPressed: () => print('search'),
              ),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                onPressed: () => print('messages'),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100.0,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}