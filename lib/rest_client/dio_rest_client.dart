import 'package:dio/dio.dart';

//import condicional
import 'dio_native.dart' if (dart.library.html) 'dio_browser.dart';

//customizar a entrada do Dio pra nao ter que configurar em toda a aplicação o connectTimeout qnd necessario
class DioRestClient extends BaseDio {
  DioRestClient()
      : super(
          BaseOptions(
            connectTimeout: const Duration(seconds: 10),
          ),
        );
}
