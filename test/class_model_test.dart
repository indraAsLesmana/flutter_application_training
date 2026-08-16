import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/models/class_model.dart';

void main() {
  test('ClassModel.fromJson accepts backend camelCase field names', () {
    final model = ClassModel.fromJson({
      'id': 'abc',
      'tingkat': 'X',
      'namaKelas': 'a',
    });

    expect(model.id, 'abc');
    expect(model.tingkat, 'X');
    expect(model.namaKelas, 'a');
  });
}
