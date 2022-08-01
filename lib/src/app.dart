import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibracall_app/src/application/providers/home_provider.dart';
import 'package:vibracall_app/src/ui/pages/home_page.dart';

import 'application/providers/vibrate_provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<VibrateProvider>(create: (_) => VibrateProvider()),
        ChangeNotifierProvider(create: (context) => HomeProvider(context.read())),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Vibracall App",
        home: HomePage(),
      ),
    );
  }
}
