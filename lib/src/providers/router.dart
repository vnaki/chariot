import 'package:dkit/dkit.dart';

class RouterProvider extends Provider {
  @override
  void handle(IContainer c) {
    c.set(Symbol('router'), (c) => Collector());
  }
}
