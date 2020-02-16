import 'package:dkit/dkit.dart';

class LoggerProvider extends Provider {
  @override
  void handle(IContainer c) {
    c.set(Symbol('logger'), (c) => Logger());
  }
}
