import 'package:flutter/material.dart';

import '../../featureds/home/presentation/views/home_view.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});
  static const routeName = '/navBarView';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.black,
          child: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                ),
                text: 'home',
              ),
              Tab(
                icon: Icon(Icons.search),
                text: 'search',
              ),
              Tab(
                icon: Icon(Icons.download),
                text: 'Download',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'profile',
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          HomeView(),
          Scaffold(),
          Scaffold(),
          Scaffold(),
        ]),
      ),
    );
  }
}
