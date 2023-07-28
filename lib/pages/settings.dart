import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_responsive_dashboard/providers/currentUser.dart';
import 'package:store_responsive_dashboard/root.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              Provider.of<CurrentUser>(context, listen: false).signOut();
            });

            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Root()),
                (route) => false);
          },
          child: Text("Logout"),
        ),
      ),
    );
  }
}
