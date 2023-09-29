import 'package:perlatest/data/api/crud.dart';
import 'package:perlatest/data/models/register_model.dart';

class CrudRepo {
  final Crud crud;

  CrudRepo(this.crud);

  Future<Iterable<Map<String, dynamic>>> PostMethod() async {
    final data = await crud.PostMethod();
    return data.map((data) => RegisterModel().toJson());
  }
}
