// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('browser')
library;

import 'dart:html';

import 'package:_test/app.dart';
import 'package:test/test.dart';

import 'common/message.dart' deferred as m;

void main() {
  setUp(startApp);

  tearDown(() {
    document.body!.innerHtml = '';
  });

  test('hello world', () async {
    await m.loadLibrary();
    expect(document.body?.text, contains(m.message));
  });
}
