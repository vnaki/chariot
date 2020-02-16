library chariot;

import 'package:chariot/src/providers/logger.dart';
import 'package:chariot/src/providers/router.dart';
import 'package:chariot/src/providers/server.dart';
import 'package:dkit/dkit.dart';

class Chariot extends Kernel {
  static dynamic app;

  @override
  List<Provider> providers = [
    LoggerProvider(),
    RouterProvider(),
    ServerProvider()
  ];

  @override
  List<Action> actions = [];

  Chariot() {
    app = this;
  }

  @override
  void run() {
    super.run();

    app.srv.serve();
  }
}
