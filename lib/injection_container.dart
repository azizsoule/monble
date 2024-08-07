import 'package:get_it/get_it.dart';
import 'package:monble/core/persistance/repository/repositories.dart';
import 'package:monble/core/services/storage_service.dart';

final find = GetIt.instance;

void setupInjectionContainer() {
  ///
  /// 1 - Register services
  ///

  // Register storage service
  GetIt.instance.registerSingletonAsync(setupStorage);

  ///
  /// 2 - Register repositories
  ///

  // Register budget repository
  GetIt.instance.registerFactory(() => BudgetRepository(find()));
}
