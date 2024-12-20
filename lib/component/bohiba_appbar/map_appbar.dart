import 'package:bohiba/pages/vehicle/all_vechile_screen/all_vehicle_screen.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../bohiba_search_delegate.dart';

class MapAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const MapAppBar({
    Key? key,
    this.title = "Map",
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        title: Text(title),
        actions: [
          // Add Vehicle
          IconButton(
              tooltip: 'Add Vehicle',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AllVehicleScreen(),
                  ),
                );
              },
              icon: const Icon(EvaIcons.plus)),

          IconButton(
              tooltip: 'Search Company',
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: BohibaCompanySearchDelegate(),
                );
              },
              icon: const Icon(EvaIcons.searchOutline)),
        ],
      ),
    );
  }
}
