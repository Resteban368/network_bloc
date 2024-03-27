import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'network_event.dart';
import 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  NetworkBloc() : super(NetworkInitialState()) {
    on<NetworkObserveEvent>(_observe);
  }

  void _observe(event, Emitter<NetworkState> emit) async {
    await emit.forEach<ConnectivityResult>(
      Connectivity().onConnectivityChanged,
      onData: (result) {
        if (result == ConnectivityResult.none) {
          return NetworkFailureState();
        } else {
          return NetworkSuccessState();
        }
      },
    );
  }
}
