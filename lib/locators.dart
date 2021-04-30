import 'package:get_it/get_it.dart';
import 'package:refineapp/services/auth.dart';
//import 'package:refineapp/services/storage.dart';

final locator = GetIt.instance;

void setupServices() {
  locator.registerSingleton<AuthService>(AuthService());
  // locator.registerSingleton<Storage>(Storage());
}
