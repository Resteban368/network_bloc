import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          create: (context) => NetworkBloc()..add(NetworkObserve()),
        ),
      ],
      child: BlocBuilder<NetworkBloc, NetworkState>(
        builder: (context, state) {
            if (state is NetworkFailure) {
              return const MaterialApp(
                title: 'Hosc1',
                home: Scaffold(
                  backgroundColor: Colors.deepPurple,
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("No Internet Connection",
                            style: TextStyle(color: Colors.white, fontSize: 24)),
                        SizedBox(height: 20),
                        //icono de internet
                        Icon(Icons.wifi_off, color: Colors.white, size: 50),
                      ],
                    ),
                  ),
                ),
                debugShowCheckedModeBanner: false,
              );
            }
          return MaterialApp.router(
            title: 'Hosc2',
            routerConfig: appRouter,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
