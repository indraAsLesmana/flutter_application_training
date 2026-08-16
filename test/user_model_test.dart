import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/models/user_model.dart';

void main() {
  test('UserModel.fromJson supports camelCase backend response', () {
    final model = UserModel.fromJson({
      'id': 'u1',
      'nama': 'Budi',
      'role': 'siswa',
      'nipNik': '12345',
      'email': null,
      'classId': 'cls-1',
    });

    expect(model.id, 'u1');
    expect(model.nama, 'Budi');
    expect(model.role, 'siswa');
    expect(model.nipNik, '12345');
    expect(model.email, isNull);
    expect(model.classId, 'cls-1');
  });
}
