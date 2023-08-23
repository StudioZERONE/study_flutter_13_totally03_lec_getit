import 'package:get_it/get_it.dart';
import 'package:study_flutter_13_totally03_lec_getit/service/album_service.dart';

GetIt locator = GetIt.instance;

initLocator() {
  locator
      .registerLazySingleton<AlbumService>(() => AlbumServiceImplementation());
}
