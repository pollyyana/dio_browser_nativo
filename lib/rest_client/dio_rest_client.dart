import 'package:dio/dio.dart';
import 'package:dio/io.dart';

//customizar a entrada do Dio pra nao ter que configurar em toda a aplicação o connectTimeout qnd necessario
class DioRestClient extends DioForNative {
  DioRestClient()
      : super(
          BaseOptions(connectTimeout: Duration(seconds: 10)),
        );
}
