import 'package:app_tia_benta/shared/model/client.model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/http.dart';

@RestApi(baseUrl: "")
abstract class ClientService {
  factory ClientService(Dio dio, {String baseUrl}) = _ClientService;

  @GET('/client/{id}')
  Future<ClientModel> getById(@Path("id") String id);

  @POST("/client")
  Future<ClientModel> createClient(@Body() ClientModel clientModel);

  @override
  void initState() {
    super.initState();
    BaseOptions options = new BaseOptions(
      baseUrl: env[]
    );
  }

  getById(String id) async {
    Response resp = await dio.get(env['URL_API']);
    return resp.data;
  }
}
