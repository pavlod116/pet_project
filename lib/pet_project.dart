import 'package:flutter/material.dart';
import 'package:pet_project/routing/router.dart';
import 'package:pet_project/ui/splash/splash_view.dart';
import 'package:pet_project/ui/splash/splash_view_model.dart';
import 'package:provider/provider.dart';

class PetProject extends StatefulWidget {
  const PetProject({super.key});

  @override
  State<PetProject> createState() => _PetProjectState();
}

final _appRouter = AppRouter();

class _PetProjectState extends State<PetProject> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashViewModel()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
        builder: (BuildContext ctx, widget) {
          return Stack(
            children: [
              widget ?? const SizedBox.shrink(),
            ],
          );
        },
      ),
    );
  }
}
