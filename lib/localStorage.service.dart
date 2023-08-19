import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class LocaleStorageService extends GetxService {
  static LocaleStorageService get to => Get.find();

  // properties
  late GetStorage instance;
  final String container;

  LocaleStorageService({required this.container});

  Future<LocaleStorageService> init() async {
    // initialization
    final bool instantiated = await GetStorage.init(container);

    // instantiate
    if (instantiated) instance = GetStorage(container);
    return this;
  }
}
