import 'package:flutter/material.dart';
import 'package:posts_clesn_app/features/user/presentation/widgets/custom_search_bar.dart';
import 'package:posts_clesn_app/features/user/presentation/widgets/landing_widget.dart';
import 'package:posts_clesn_app/features/user/presentation/widgets/user_data_widget.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: ListView(
            children: [
              const LandingWidget(),
              UserData(),
              const CustomSearchBar(),
            ],
          )

        );
  }
}