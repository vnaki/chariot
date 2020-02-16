import 'package:chariot/chariot.dart';

abstract class Kernel extends Container {
  ///内核版本号
  String get version => '1.1.0';

  ///服务提供者
  List<Provider> providers = [];

  ///全局路由动作
  List<Action> actions = [];

  void run() {
    providers.forEach((provider) => provider.handle(this));
  }

  @override
  dynamic noSuchMethod(Invocation invocation) {
    if (!invocation.isMethod && has(invocation.memberName)) {
      return get(invocation.memberName, singleton: true);
    }

    return super.noSuchMethod(invocation);
  }
}
