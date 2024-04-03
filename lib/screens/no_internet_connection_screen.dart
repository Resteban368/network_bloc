// ignore_for_file: deprecated_member_use

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
      child: Scaffold(
        backgroundColor:
            //181818
            // const Color.fromARGB(255, 27, 26, 26),
            Colors.amber[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: -10 *
                    (3.141592653589793 / 120), // Ángulo en radianes (45 grados)

                child: const Text(
                  "Whoops!",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black54,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/dog.png",
                    width: 350,
                  )),
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "it seems like some playful paws disconnected you from the internet. please check your connection and restart the app.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontFamily: 'Roboto',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

             
            ],
          ),
        ),
      ),
    );
  }

}
