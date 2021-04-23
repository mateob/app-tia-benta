import 'package:app_tia_benta/page/client/client.service.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class ClientBloc extends BlocBase {
  final _service = ClientService();
  final _controller = BehaviorSubject<int>.seeded(0);
  Stream get saida => _controller.stream;
  Sink<int> get entrada => _controller.sink;

  getById(String id) async {
    await _service.getById(id).then(entrada.add);
  }

  @override
  void disponse() {
    _controller.close();
    super.dispose();
  }
}
