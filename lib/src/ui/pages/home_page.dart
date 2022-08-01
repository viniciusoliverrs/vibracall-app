import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibracall_app/src/application/providers/home_provider.dart';
import 'package:vibracall_app/src/ui/pages/components/custom_switch.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return Scaffold(
        backgroundColor: provider.backgroundColor,
        body: Center(
            child: CustomSwitch(
          onChanged: provider.toggleVibrate,
          value: provider.isSwitched,
        )),
      );
    });
  }
}
