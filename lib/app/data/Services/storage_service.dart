import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {
  late GetStorage box;
  Future<StorageService> init() async {
    await GetStorage.init('main');
    box = GetStorage('box');
    return this;
  }

  Future<StorageService> init() async {
    return this;
  }

  Future<void> writeSettings() async {
    await box.write();
  }
}
