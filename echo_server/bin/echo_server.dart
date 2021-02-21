import 'dart:io';
import 'dart:typed_data';

void main() async {
  final server = await ServerSocket.bind('localhost', 5000);
  server.listen((client){
    client.listen((Uint8List data) {
      client.write(String.fromCharCodes(data));
    });
  });
}
