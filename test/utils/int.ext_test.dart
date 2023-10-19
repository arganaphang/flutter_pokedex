import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon/utils/int.ext.dart';

void main() {
  test("int extension", () {
    expect(3.leftPad(3), "003");
    expect(12.leftPad(3), "012");
    expect(999.leftPad(3), "999");
    expect(1000.leftPad(3), "1000");
  });
}
