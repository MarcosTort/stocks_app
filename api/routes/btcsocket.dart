import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';

Future<Response> onRequest(RequestContext context) async {
  final wsUrl = Uri.parse(
    'wss://ws.bitmex.com/realtime?subscribe=instrument,orderBookL2_25:XBTUSD',
  );
  final stockChannel = WebSocketChannel.connect(wsUrl);

  final handler = webSocketHandler(
    (channel, protocol) {
      // A new client has connected to our server.
      print('connected');

      // Send a message to the client.
      channel.sink.add('hello from the server');
      stockChannel.stream.listen((event) {
        channel.sink.add(event);
      });
      // Listen for messages from the client.
      channel.stream.listen(
        print,
        // The client has disconnected.
        onDone: () => print('disconnected'),
      );
    },
  );
  return handler(context);
}
