import 'package:bloc_features/Network/network_bloc.dart';
import 'package:bloc_features/Network/network_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NoInternetConnectionScreen extends StatelessWidget {
  const NoInternetConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<NetworkBloc, NetworkState>(
      listener: (context, state) {
        if (state is NetworkSuccessState) {
          context.pop();
        }
      },
      child: const Scaffold(
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
    );
  }
}
