// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart = 2.9

library fasta.name_iterator;

import 'builder.dart';

abstract class NameIterator implements Iterator<Builder> {
  String get name;
}
