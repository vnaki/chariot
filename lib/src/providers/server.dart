import 'dart:io';

import 'package:dkit/dkit.dart';

class ServerProvider extends Provider {
  int index = 0;

  @override
  void handle(IContainer c) {
    c.set(Symbol('srv'), (c) => Server()..setHandler(_handleRequest));
  }

  void _handleRequest(HttpRequest req) {
    Context(req);

    req.headers.forEach((k, v) {
      print(k.toString() + '---' + v.length.toString());
    });

    req.response
      ..writeln(
          'Hi, beauty: ' + DateTime.now().microsecondsSinceEpoch.toString())
      ..close();
  }
}
