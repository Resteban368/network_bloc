import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'Network/network_bloc.dart';
import 'Network/network_event.dart';
import 'Network/network_state.dart';
import 'config/router/app_router.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NetworkBloc>(
          create: (context) {
            return NetworkBloc()..add(NetworkObserveEvent());
          },
        ),
      ],
      child: MaterialApp.router(
        title: 'Hosc1',
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
