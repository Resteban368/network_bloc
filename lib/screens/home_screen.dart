import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '/Network/network_bloc.dart';
import '/Network/network_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NetworkBloc, NetworkState>(
          listener: (context, state) {
            print("NetworkBloc state 🛜: $state");
            if (state is NetworkFailureState) {
              context.push('/no-internet');
            }
          },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: const Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
