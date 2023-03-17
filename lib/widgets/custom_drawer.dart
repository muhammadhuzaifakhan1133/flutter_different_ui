import 'package:flutter/material.dart';
import 'package:test2/ui/chat/chat_view.dart';
import 'package:test2/ui/package/package_view.dart';
import 'package:test2/ui/pickup_date/pickup_date_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(child: Center(child: Text("Test 2"))),
          ListTile(
            title: const Text("Pickup Date"),
            leading: const Icon(Icons.calendar_month),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PickupDateView()),
                  (route) => false);
            },
          ),
          ListTile(
            title: const Text("Chat"),
            leading: const Icon(Icons.chat),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChatView()),
                  (route) => false);
            },
          ),
          ListTile(
            title: const Text("Packages"),
            leading: const Icon(Icons.production_quantity_limits),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PackageView()),
                  (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
