abstract class NetworkEvent {}

class NetworkObserveEvent extends NetworkEvent {
  final bool isConnected;
  NetworkObserveEvent({this.isConnected = false});
}