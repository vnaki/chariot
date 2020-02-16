import 'package:chariot/chariot.dart';

///服务提供者接口
abstract class Provider {
  void handle(IContainer container);
}
