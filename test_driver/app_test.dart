import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:cicd_test/main.dart' as app;

// import 'package:flutter_test/flutter_test.dart';
import 'package:test/test.dart';

void main() {
  group("Counter App", () {
    final counterTextFinder = find.byValueKey("counter");
    final buttonFinder = find.byValueKey("increment");

    FlutterDriver? driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() {
      if (driver != null) {
        driver?.close();
      }
    });

    test("increment the counter", () async {
      if (driver != null) {
        await driver!.tap(buttonFinder);
        await driver!.tap(buttonFinder);

        expect(await driver!.getText(counterTextFinder), "2");
      }
    });
  });
}
