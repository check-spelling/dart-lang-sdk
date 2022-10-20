// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// This file has been automatically generated. Please do not edit it manually.
// Generated by tests/ffi/generator/structs_by_value_tests_generator.dart.
//
// SharedObjects=ffi_test_functions
// VMOptions=
// VMOptions=--deterministic --optimization-counter-threshold=90
// VMOptions=--use-slow-path
// VMOptions=--use-slow-path --stacktrace-every=100

import 'dart:ffi';

import "package:expect/expect.dart";
import "package:ffi/ffi.dart";

import 'dylib_utils.dart';

// Reuse the compound classes.
import 'function_structs_by_value_generated_compounds.dart';

final ffiTestFunctions = dlopenPlatformSpecific("ffi_test_functions");
void main() {
  for (int i = 0; i < 100; ++i) {
    testReturnStructArgumentStruct1ByteIntLeaf();
    testReturnStructArgumentInt32x8Struct1ByteIntLeaf();
    testReturnStructArgumentStruct8BytesHomogeneousFloatLeaf();
    testReturnStructArgumentStruct20BytesHomogeneousInt32Leaf();
    testReturnStructArgumentInt32x8Struct20BytesHomogeneouLeaf();
    testReturnStructArgumentStruct8BytesInlineArrayIntLeaf();
    testReturnStructArgumentStructStruct16BytesHomogeneousLeaf();
    testReturnStructArgumentStructStruct32BytesHomogeneousLeaf();
    testReturnStructArgumentStructStruct16BytesMixed3Leaf();
    testReturnStructAlignmentInt16Leaf();
    testReturnStructAlignmentInt32Leaf();
    testReturnStructAlignmentInt64Leaf();
    testReturnStruct8BytesNestedIntLeaf();
    testReturnStruct8BytesNestedFloatLeaf();
    testReturnStruct8BytesNestedFloat2Leaf();
    testReturnStruct8BytesNestedMixedLeaf();
    testReturnStruct16BytesNestedIntLeaf();
    testReturnStruct32BytesNestedIntLeaf();
    testReturnStructNestedIntStructAlignmentInt16Leaf();
    testReturnStructNestedIntStructAlignmentInt32Leaf();
    testReturnStructNestedIntStructAlignmentInt64Leaf();
    testReturnStructNestedIrregularEvenBiggerLeaf();
  }
}

final returnStructArgumentStruct1ByteIntLeaf = ffiTestFunctions.lookupFunction<
    Struct1ByteInt Function(Struct1ByteInt),
    Struct1ByteInt Function(
        Struct1ByteInt)>("ReturnStructArgumentStruct1ByteInt", isLeaf: true);

/// Test that a struct passed in as argument can be returned.
/// Especially for ffi callbacks.
/// Struct is passed in int registers in most ABIs.
void testReturnStructArgumentStruct1ByteIntLeaf() {
  final a0Pointer = calloc<Struct1ByteInt>();
  final Struct1ByteInt a0 = a0Pointer.ref;

  a0.a0 = -1;

  final result = returnStructArgumentStruct1ByteIntLeaf(a0);

  print("result = $result");

  Expect.equals(a0.a0, result.a0);

  calloc.free(a0Pointer);
}

final returnStructArgumentInt32x8Struct1ByteIntLeaf =
    ffiTestFunctions
        .lookupFunction<
                Struct1ByteInt Function(Int32, Int32, Int32, Int32, Int32, Int32,
                    Int32, Int32, Struct1ByteInt),
                Struct1ByteInt Function(
                    int, int, int, int, int, int, int, int, Struct1ByteInt)>(
            "ReturnStructArgumentInt32x8Struct1ByteInt",
            isLeaf: true);

/// Test that a struct passed in as argument can be returned.
/// Especially for ffi callbacks.
/// Struct is passed on stack on all ABIs.
void testReturnStructArgumentInt32x8Struct1ByteIntLeaf() {
  int a0;
  int a1;
  int a2;
  int a3;
  int a4;
  int a5;
  int a6;
  int a7;
  final a8Pointer = calloc<Struct1ByteInt>();
  final Struct1ByteInt a8 = a8Pointer.ref;

  a0 = -1;
  a1 = 2;
  a2 = -3;
  a3 = 4;
  a4 = -5;
  a5 = 6;
  a6 = -7;
  a7 = 8;
  a8.a0 = -9;

  final result = returnStructArgumentInt32x8Struct1ByteIntLeaf(
      a0, a1, a2, a3, a4, a5, a6, a7, a8);

  print("result = $result");

  Expect.equals(a8.a0, result.a0);

  calloc.free(a8Pointer);
}

final returnStructArgumentStruct8BytesHomogeneousFloatLeaf =
    ffiTestFunctions.lookupFunction<
            Struct8BytesHomogeneousFloat Function(Struct8BytesHomogeneousFloat),
            Struct8BytesHomogeneousFloat Function(
                Struct8BytesHomogeneousFloat)>(
        "ReturnStructArgumentStruct8BytesHomogeneousFloat",
        isLeaf: true);

/// Test that a struct passed in as argument can be returned.
/// Especially for ffi callbacks.
/// Struct is passed in float registers in most ABIs.
void testReturnStructArgumentStruct8BytesHomogeneousFloatLeaf() {
  final a0Pointer = calloc<Struct8BytesHomogeneousFloat>();
  final Struct8BytesHomogeneousFloat a0 = a0Pointer.ref;

  a0.a0 = -1.0;
  a0.a1 = 2.0;

  final result = returnStructArgumentStruct8BytesHomogeneousFloatLeaf(a0);

  print("result = $result");

  Expect.approxEquals(a0.a0, result.a0);
  Expect.approxEquals(a0.a1, result.a1);

  calloc.free(a0Pointer);
}

final returnStructArgumentStruct20BytesHomogeneousInt32Leaf =
    ffiTestFunctions
        .lookupFunction<
                Struct20BytesHomogeneousInt32 Function(
                    Struct20BytesHomogeneousInt32),
                Struct20BytesHomogeneousInt32 Function(
                    Struct20BytesHomogeneousInt32)>(
            "ReturnStructArgumentStruct20BytesHomogeneousInt32",
            isLeaf: true);

/// On arm64, both argument and return value are passed in by pointer.
void testReturnStructArgumentStruct20BytesHomogeneousInt32Leaf() {
  final a0Pointer = calloc<Struct20BytesHomogeneousInt32>();
  final Struct20BytesHomogeneousInt32 a0 = a0Pointer.ref;

  a0.a0 = -1;
  a0.a1 = 2;
  a0.a2 = -3;
  a0.a3 = 4;
  a0.a4 = -5;

  final result = returnStructArgumentStruct20BytesHomogeneousInt32Leaf(a0);

  print("result = $result");

  Expect.equals(a0.a0, result.a0);
  Expect.equals(a0.a1, result.a1);
  Expect.equals(a0.a2, result.a2);
  Expect.equals(a0.a3, result.a3);
  Expect.equals(a0.a4, result.a4);

  calloc.free(a0Pointer);
}

final returnStructArgumentInt32x8Struct20BytesHomogeneouLeaf =
    ffiTestFunctions.lookupFunction<
            Struct20BytesHomogeneousInt32 Function(Int32, Int32, Int32, Int32,
                Int32, Int32, Int32, Int32, Struct20BytesHomogeneousInt32),
            Struct20BytesHomogeneousInt32 Function(int, int, int, int, int, int,
                int, int, Struct20BytesHomogeneousInt32)>(
        "ReturnStructArgumentInt32x8Struct20BytesHomogeneou",
        isLeaf: true);

/// On arm64, both argument and return value are passed in by pointer.
/// Ints exhaust registers, so that pointer is passed on stack.
void testReturnStructArgumentInt32x8Struct20BytesHomogeneouLeaf() {
  int a0;
  int a1;
  int a2;
  int a3;
  int a4;
  int a5;
  int a6;
  int a7;
  final a8Pointer = calloc<Struct20BytesHomogeneousInt32>();
  final Struct20BytesHomogeneousInt32 a8 = a8Pointer.ref;

  a0 = -1;
  a1 = 2;
  a2 = -3;
  a3 = 4;
  a4 = -5;
  a5 = 6;
  a6 = -7;
  a7 = 8;
  a8.a0 = -9;
  a8.a1 = 10;
  a8.a2 = -11;
  a8.a3 = 12;
  a8.a4 = -13;

  final result = returnStructArgumentInt32x8Struct20BytesHomogeneouLeaf(
      a0, a1, a2, a3, a4, a5, a6, a7, a8);

  print("result = $result");

  Expect.equals(a8.a0, result.a0);
  Expect.equals(a8.a1, result.a1);
  Expect.equals(a8.a2, result.a2);
  Expect.equals(a8.a3, result.a3);
  Expect.equals(a8.a4, result.a4);

  calloc.free(a8Pointer);
}

final returnStructArgumentStruct8BytesInlineArrayIntLeaf =
    ffiTestFunctions.lookupFunction<
            Struct8BytesInlineArrayInt Function(Struct8BytesInlineArrayInt),
            Struct8BytesInlineArrayInt Function(Struct8BytesInlineArrayInt)>(
        "ReturnStructArgumentStruct8BytesInlineArrayInt",
        isLeaf: true);

/// Test returning struct with inline array.
void testReturnStructArgumentStruct8BytesInlineArrayIntLeaf() {
  final a0Pointer = calloc<Struct8BytesInlineArrayInt>();
  final Struct8BytesInlineArrayInt a0 = a0Pointer.ref;

  a0.a0[0] = 1;
  a0.a0[1] = 2;
  a0.a0[2] = 3;
  a0.a0[3] = 4;
  a0.a0[4] = 5;
  a0.a0[5] = 6;
  a0.a0[6] = 7;
  a0.a0[7] = 8;

  final result = returnStructArgumentStruct8BytesInlineArrayIntLeaf(a0);

  print("result = $result");

  for (int i = 0; i < 8; i++) {
    Expect.equals(a0.a0[i], result.a0[i]);
  }

  calloc.free(a0Pointer);
}

final returnStructArgumentStructStruct16BytesHomogeneousLeaf =
    ffiTestFunctions.lookupFunction<
            StructStruct16BytesHomogeneousFloat2 Function(
                StructStruct16BytesHomogeneousFloat2),
            StructStruct16BytesHomogeneousFloat2 Function(
                StructStruct16BytesHomogeneousFloat2)>(
        "ReturnStructArgumentStructStruct16BytesHomogeneous",
        isLeaf: true);

/// Return value in FPU registers on arm hardfp and arm64.
void testReturnStructArgumentStructStruct16BytesHomogeneousLeaf() {
  final a0Pointer = calloc<StructStruct16BytesHomogeneousFloat2>();
  final StructStruct16BytesHomogeneousFloat2 a0 = a0Pointer.ref;

  a0.a0.a0 = -1.0;
  a0.a1[0].a0 = 2.0;
  a0.a1[1].a0 = -3.0;
  a0.a2 = 4.0;

  final result = returnStructArgumentStructStruct16BytesHomogeneousLeaf(a0);

  print("result = $result");

  Expect.approxEquals(a0.a0.a0, result.a0.a0);
  for (int i = 0; i < 2; i++) {
    Expect.approxEquals(a0.a1[i].a0, result.a1[i].a0);
  }
  Expect.approxEquals(a0.a2, result.a2);

  calloc.free(a0Pointer);
}

final returnStructArgumentStructStruct32BytesHomogeneousLeaf =
    ffiTestFunctions.lookupFunction<
            StructStruct32BytesHomogeneousDouble2 Function(
                StructStruct32BytesHomogeneousDouble2),
            StructStruct32BytesHomogeneousDouble2 Function(
                StructStruct32BytesHomogeneousDouble2)>(
        "ReturnStructArgumentStructStruct32BytesHomogeneous",
        isLeaf: true);

/// Return value in FPU registers on arm64.
void testReturnStructArgumentStructStruct32BytesHomogeneousLeaf() {
  final a0Pointer = calloc<StructStruct32BytesHomogeneousDouble2>();
  final StructStruct32BytesHomogeneousDouble2 a0 = a0Pointer.ref;

  a0.a0.a0 = -1.0;
  a0.a1[0].a0 = 2.0;
  a0.a1[1].a0 = -3.0;
  a0.a2 = 4.0;

  final result = returnStructArgumentStructStruct32BytesHomogeneousLeaf(a0);

  print("result = $result");

  Expect.approxEquals(a0.a0.a0, result.a0.a0);
  for (int i = 0; i < 2; i++) {
    Expect.approxEquals(a0.a1[i].a0, result.a1[i].a0);
  }
  Expect.approxEquals(a0.a2, result.a2);

  calloc.free(a0Pointer);
}

final returnStructArgumentStructStruct16BytesMixed3Leaf =
    ffiTestFunctions.lookupFunction<
            StructStruct16BytesMixed3 Function(StructStruct16BytesMixed3),
            StructStruct16BytesMixed3 Function(StructStruct16BytesMixed3)>(
        "ReturnStructArgumentStructStruct16BytesMixed3",
        isLeaf: true);

/// On x64 Linux, return value is split over FP and int registers.
void testReturnStructArgumentStructStruct16BytesMixed3Leaf() {
  final a0Pointer = calloc<StructStruct16BytesMixed3>();
  final StructStruct16BytesMixed3 a0 = a0Pointer.ref;

  a0.a0.a0 = -1.0;
  a0.a1[0].a0 = 2.0;
  a0.a1[0].a1 = -3;
  a0.a1[0].a2 = 4;
  a0.a2[0] = -5;
  a0.a2[1] = 6;

  final result = returnStructArgumentStructStruct16BytesMixed3Leaf(a0);

  print("result = $result");

  Expect.approxEquals(a0.a0.a0, result.a0.a0);
  for (int i = 0; i < 1; i++) {
    Expect.approxEquals(a0.a1[i].a0, result.a1[i].a0);
    Expect.equals(a0.a1[i].a1, result.a1[i].a1);
    Expect.equals(a0.a1[i].a2, result.a1[i].a2);
  }
  for (int i = 0; i < 2; i++) {
    Expect.equals(a0.a2[i], result.a2[i]);
  }

  calloc.free(a0Pointer);
}

final returnStructAlignmentInt16Leaf = ffiTestFunctions.lookupFunction<
    StructAlignmentInt16 Function(Int8, Int16, Int8),
    StructAlignmentInt16 Function(
        int, int, int)>("ReturnStructAlignmentInt16", isLeaf: true);

/// Test alignment and padding of 16 byte int within struct.
void testReturnStructAlignmentInt16Leaf() {
  int a0;
  int a1;
  int a2;

  a0 = -1;
  a1 = 2;
  a2 = -3;

  final result = returnStructAlignmentInt16Leaf(a0, a1, a2);

  print("result = $result");

  Expect.equals(a0, result.a0);
  Expect.equals(a1, result.a1);
  Expect.equals(a2, result.a2);
}

final returnStructAlignmentInt32Leaf = ffiTestFunctions.lookupFunction<
    StructAlignmentInt32 Function(Int8, Int32, Int8),
    StructAlignmentInt32 Function(
        int, int, int)>("ReturnStructAlignmentInt32", isLeaf: true);

/// Test alignment and padding of 32 byte int within struct.
void testReturnStructAlignmentInt32Leaf() {
  int a0;
  int a1;
  int a2;

  a0 = -1;
  a1 = 2;
  a2 = -3;

  final result = returnStructAlignmentInt32Leaf(a0, a1, a2);

  print("result = $result");

  Expect.equals(a0, result.a0);
  Expect.equals(a1, result.a1);
  Expect.equals(a2, result.a2);
}

final returnStructAlignmentInt64Leaf = ffiTestFunctions.lookupFunction<
    StructAlignmentInt64 Function(Int8, Int64, Int8),
    StructAlignmentInt64 Function(
        int, int, int)>("ReturnStructAlignmentInt64", isLeaf: true);

/// Test alignment and padding of 64 byte int within struct.
void testReturnStructAlignmentInt64Leaf() {
  int a0;
  int a1;
  int a2;

  a0 = -1;
  a1 = 2;
  a2 = -3;

  final result = returnStructAlignmentInt64Leaf(a0, a1, a2);

  print("result = $result");

  Expect.equals(a0, result.a0);
  Expect.equals(a1, result.a1);
  Expect.equals(a2, result.a2);
}

final returnStruct8BytesNestedIntLeaf = ffiTestFunctions.lookupFunction<
        Struct8BytesNestedInt Function(
            Struct4BytesHomogeneousInt16, Struct4BytesHomogeneousInt16),
        Struct8BytesNestedInt Function(
            Struct4BytesHomogeneousInt16, Struct4BytesHomogeneousInt16)>(
    "ReturnStruct8BytesNestedInt",
    isLeaf: true);

/// Simple nested struct.
void testReturnStruct8BytesNestedIntLeaf() {
  final a0Pointer = calloc<Struct4BytesHomogeneousInt16>();
  final Struct4BytesHomogeneousInt16 a0 = a0Pointer.ref;
  final a1Pointer = calloc<Struct4BytesHomogeneousInt16>();
  final Struct4BytesHomogeneousInt16 a1 = a1Pointer.ref;

  a0.a0 = -1;
  a0.a1 = 2;
  a1.a0 = -3;
  a1.a1 = 4;

  final result = returnStruct8BytesNestedIntLeaf(a0, a1);

  print("result = $result");

  Expect.equals(a0.a0, result.a0.a0);
  Expect.equals(a0.a1, result.a0.a1);
  Expect.equals(a1.a0, result.a1.a0);
  Expect.equals(a1.a1, result.a1.a1);

  calloc.free(a0Pointer);
  calloc.free(a1Pointer);
}

final returnStruct8BytesNestedFloatLeaf = ffiTestFunctions.lookupFunction<
    Struct8BytesNestedFloat Function(Struct4BytesFloat, Struct4BytesFloat),
    Struct8BytesNestedFloat Function(Struct4BytesFloat,
        Struct4BytesFloat)>("ReturnStruct8BytesNestedFloat", isLeaf: true);

/// Simple nested struct with floats.
void testReturnStruct8BytesNestedFloatLeaf() {
  final a0Pointer = calloc<Struct4BytesFloat>();
  final Struct4BytesFloat a0 = a0Pointer.ref;
  final a1Pointer = calloc<Struct4BytesFloat>();
  final Struct4BytesFloat a1 = a1Pointer.ref;

  a0.a0 = -1.0;
  a1.a0 = 2.0;

  final result = returnStruct8BytesNestedFloatLeaf(a0, a1);

  print("result = $result");

  Expect.approxEquals(a0.a0, result.a0.a0);
  Expect.approxEquals(a1.a0, result.a1.a0);

  calloc.free(a0Pointer);
  calloc.free(a1Pointer);
}

final returnStruct8BytesNestedFloat2Leaf = ffiTestFunctions.lookupFunction<
    Struct8BytesNestedFloat2 Function(Struct4BytesFloat, Float),
    Struct8BytesNestedFloat2 Function(Struct4BytesFloat,
        double)>("ReturnStruct8BytesNestedFloat2", isLeaf: true);

/// The nesting is irregular, testing homogenous float rules on arm and arm64,
/// and the fpu register usage on x64.
void testReturnStruct8BytesNestedFloat2Leaf() {
  final a0Pointer = calloc<Struct4BytesFloat>();
  final Struct4BytesFloat a0 = a0Pointer.ref;
  double a1;

  a0.a0 = -1.0;
  a1 = 2.0;

  final result = returnStruct8BytesNestedFloat2Leaf(a0, a1);

  print("result = $result");

  Expect.approxEquals(a0.a0, result.a0.a0);
  Expect.approxEquals(a1, result.a1);

  calloc.free(a0Pointer);
}

final returnStruct8BytesNestedMixedLeaf = ffiTestFunctions.lookupFunction<
    Struct8BytesNestedMixed Function(
        Struct4BytesHomogeneousInt16, Struct4BytesFloat),
    Struct8BytesNestedMixed Function(Struct4BytesHomogeneousInt16,
        Struct4BytesFloat)>("ReturnStruct8BytesNestedMixed", isLeaf: true);

/// Simple nested struct with mixed members.
void testReturnStruct8BytesNestedMixedLeaf() {
  final a0Pointer = calloc<Struct4BytesHomogeneousInt16>();
  final Struct4BytesHomogeneousInt16 a0 = a0Pointer.ref;
  final a1Pointer = calloc<Struct4BytesFloat>();
  final Struct4BytesFloat a1 = a1Pointer.ref;

  a0.a0 = -1;
  a0.a1 = 2;
  a1.a0 = -3.0;

  final result = returnStruct8BytesNestedMixedLeaf(a0, a1);

  print("result = $result");

  Expect.equals(a0.a0, result.a0.a0);
  Expect.equals(a0.a1, result.a0.a1);
  Expect.approxEquals(a1.a0, result.a1.a0);

  calloc.free(a0Pointer);
  calloc.free(a1Pointer);
}

final returnStruct16BytesNestedIntLeaf = ffiTestFunctions.lookupFunction<
    Struct16BytesNestedInt Function(
        Struct8BytesNestedInt, Struct8BytesNestedInt),
    Struct16BytesNestedInt Function(Struct8BytesNestedInt,
        Struct8BytesNestedInt)>("ReturnStruct16BytesNestedInt", isLeaf: true);

/// Deeper nested struct to test recursive member access.
void testReturnStruct16BytesNestedIntLeaf() {
  final a0Pointer = calloc<Struct8BytesNestedInt>();
  final Struct8BytesNestedInt a0 = a0Pointer.ref;
  final a1Pointer = calloc<Struct8BytesNestedInt>();
  final Struct8BytesNestedInt a1 = a1Pointer.ref;

  a0.a0.a0 = -1;
  a0.a0.a1 = 2;
  a0.a1.a0 = -3;
  a0.a1.a1 = 4;
  a1.a0.a0 = -5;
  a1.a0.a1 = 6;
  a1.a1.a0 = -7;
  a1.a1.a1 = 8;

  final result = returnStruct16BytesNestedIntLeaf(a0, a1);

  print("result = $result");

  Expect.equals(a0.a0.a0, result.a0.a0.a0);
  Expect.equals(a0.a0.a1, result.a0.a0.a1);
  Expect.equals(a0.a1.a0, result.a0.a1.a0);
  Expect.equals(a0.a1.a1, result.a0.a1.a1);
  Expect.equals(a1.a0.a0, result.a1.a0.a0);
  Expect.equals(a1.a0.a1, result.a1.a0.a1);
  Expect.equals(a1.a1.a0, result.a1.a1.a0);
  Expect.equals(a1.a1.a1, result.a1.a1.a1);

  calloc.free(a0Pointer);
  calloc.free(a1Pointer);
}

final returnStruct32BytesNestedIntLeaf = ffiTestFunctions.lookupFunction<
    Struct32BytesNestedInt Function(
        Struct16BytesNestedInt, Struct16BytesNestedInt),
    Struct32BytesNestedInt Function(Struct16BytesNestedInt,
        Struct16BytesNestedInt)>("ReturnStruct32BytesNestedInt", isLeaf: true);

/// Even deeper nested struct to test recursive member access.
void testReturnStruct32BytesNestedIntLeaf() {
  final a0Pointer = calloc<Struct16BytesNestedInt>();
  final Struct16BytesNestedInt a0 = a0Pointer.ref;
  final a1Pointer = calloc<Struct16BytesNestedInt>();
  final Struct16BytesNestedInt a1 = a1Pointer.ref;

  a0.a0.a0.a0 = -1;
  a0.a0.a0.a1 = 2;
  a0.a0.a1.a0 = -3;
  a0.a0.a1.a1 = 4;
  a0.a1.a0.a0 = -5;
  a0.a1.a0.a1 = 6;
  a0.a1.a1.a0 = -7;
  a0.a1.a1.a1 = 8;
  a1.a0.a0.a0 = -9;
  a1.a0.a0.a1 = 10;
  a1.a0.a1.a0 = -11;
  a1.a0.a1.a1 = 12;
  a1.a1.a0.a0 = -13;
  a1.a1.a0.a1 = 14;
  a1.a1.a1.a0 = -15;
  a1.a1.a1.a1 = 16;

  final result = returnStruct32BytesNestedIntLeaf(a0, a1);

  print("result = $result");

  Expect.equals(a0.a0.a0.a0, result.a0.a0.a0.a0);
  Expect.equals(a0.a0.a0.a1, result.a0.a0.a0.a1);
  Expect.equals(a0.a0.a1.a0, result.a0.a0.a1.a0);
  Expect.equals(a0.a0.a1.a1, result.a0.a0.a1.a1);
  Expect.equals(a0.a1.a0.a0, result.a0.a1.a0.a0);
  Expect.equals(a0.a1.a0.a1, result.a0.a1.a0.a1);
  Expect.equals(a0.a1.a1.a0, result.a0.a1.a1.a0);
  Expect.equals(a0.a1.a1.a1, result.a0.a1.a1.a1);
  Expect.equals(a1.a0.a0.a0, result.a1.a0.a0.a0);
  Expect.equals(a1.a0.a0.a1, result.a1.a0.a0.a1);
  Expect.equals(a1.a0.a1.a0, result.a1.a0.a1.a0);
  Expect.equals(a1.a0.a1.a1, result.a1.a0.a1.a1);
  Expect.equals(a1.a1.a0.a0, result.a1.a1.a0.a0);
  Expect.equals(a1.a1.a0.a1, result.a1.a1.a0.a1);
  Expect.equals(a1.a1.a1.a0, result.a1.a1.a1.a0);
  Expect.equals(a1.a1.a1.a1, result.a1.a1.a1.a1);

  calloc.free(a0Pointer);
  calloc.free(a1Pointer);
}

final returnStructNestedIntStructAlignmentInt16Leaf =
    ffiTestFunctions.lookupFunction<
            StructNestedIntStructAlignmentInt16 Function(
                StructAlignmentInt16, StructAlignmentInt16),
            StructNestedIntStructAlignmentInt16 Function(
                StructAlignmentInt16, StructAlignmentInt16)>(
        "ReturnStructNestedIntStructAlignmentInt16",
        isLeaf: true);

/// Test alignment and padding of nested struct with 16 byte int.
void testReturnStructNestedIntStructAlignmentInt16Leaf() {
  final a0Pointer = calloc<StructAlignmentInt16>();
  final StructAlignmentInt16 a0 = a0Pointer.ref;
  final a1Pointer = calloc<StructAlignmentInt16>();
  final StructAlignmentInt16 a1 = a1Pointer.ref;

  a0.a0 = -1;
  a0.a1 = 2;
  a0.a2 = -3;
  a1.a0 = 4;
  a1.a1 = -5;
  a1.a2 = 6;

  final result = returnStructNestedIntStructAlignmentInt16Leaf(a0, a1);

  print("result = $result");

  Expect.equals(a0.a0, result.a0.a0);
  Expect.equals(a0.a1, result.a0.a1);
  Expect.equals(a0.a2, result.a0.a2);
  Expect.equals(a1.a0, result.a1.a0);
  Expect.equals(a1.a1, result.a1.a1);
  Expect.equals(a1.a2, result.a1.a2);

  calloc.free(a0Pointer);
  calloc.free(a1Pointer);
}

final returnStructNestedIntStructAlignmentInt32Leaf =
    ffiTestFunctions.lookupFunction<
            StructNestedIntStructAlignmentInt32 Function(
                StructAlignmentInt32, StructAlignmentInt32),
            StructNestedIntStructAlignmentInt32 Function(
                StructAlignmentInt32, StructAlignmentInt32)>(
        "ReturnStructNestedIntStructAlignmentInt32",
        isLeaf: true);

/// Test alignment and padding of nested struct with 32 byte int.
void testReturnStructNestedIntStructAlignmentInt32Leaf() {
  final a0Pointer = calloc<StructAlignmentInt32>();
  final StructAlignmentInt32 a0 = a0Pointer.ref;
  final a1Pointer = calloc<StructAlignmentInt32>();
  final StructAlignmentInt32 a1 = a1Pointer.ref;

  a0.a0 = -1;
  a0.a1 = 2;
  a0.a2 = -3;
  a1.a0 = 4;
  a1.a1 = -5;
  a1.a2 = 6;

  final result = returnStructNestedIntStructAlignmentInt32Leaf(a0, a1);

  print("result = $result");

  Expect.equals(a0.a0, result.a0.a0);
  Expect.equals(a0.a1, result.a0.a1);
  Expect.equals(a0.a2, result.a0.a2);
  Expect.equals(a1.a0, result.a1.a0);
  Expect.equals(a1.a1, result.a1.a1);
  Expect.equals(a1.a2, result.a1.a2);

  calloc.free(a0Pointer);
  calloc.free(a1Pointer);
}

final returnStructNestedIntStructAlignmentInt64Leaf =
    ffiTestFunctions.lookupFunction<
            StructNestedIntStructAlignmentInt64 Function(
                StructAlignmentInt64, StructAlignmentInt64),
            StructNestedIntStructAlignmentInt64 Function(
                StructAlignmentInt64, StructAlignmentInt64)>(
        "ReturnStructNestedIntStructAlignmentInt64",
        isLeaf: true);

/// Test alignment and padding of nested struct with 64 byte int.
void testReturnStructNestedIntStructAlignmentInt64Leaf() {
  final a0Pointer = calloc<StructAlignmentInt64>();
  final StructAlignmentInt64 a0 = a0Pointer.ref;
  final a1Pointer = calloc<StructAlignmentInt64>();
  final StructAlignmentInt64 a1 = a1Pointer.ref;

  a0.a0 = -1;
  a0.a1 = 2;
  a0.a2 = -3;
  a1.a0 = 4;
  a1.a1 = -5;
  a1.a2 = 6;

  final result = returnStructNestedIntStructAlignmentInt64Leaf(a0, a1);

  print("result = $result");

  Expect.equals(a0.a0, result.a0.a0);
  Expect.equals(a0.a1, result.a0.a1);
  Expect.equals(a0.a2, result.a0.a2);
  Expect.equals(a1.a0, result.a1.a0);
  Expect.equals(a1.a1, result.a1.a1);
  Expect.equals(a1.a2, result.a1.a2);

  calloc.free(a0Pointer);
  calloc.free(a1Pointer);
}

final returnStructNestedIrregularEvenBiggerLeaf =
    ffiTestFunctions.lookupFunction<
        StructNestedIrregularEvenBigger Function(Uint64,
            StructNestedIrregularBigger, StructNestedIrregularBigger, Double),
        StructNestedIrregularEvenBigger Function(
            int,
            StructNestedIrregularBigger,
            StructNestedIrregularBigger,
            double)>("ReturnStructNestedIrregularEvenBigger", isLeaf: true);

/// Return big irregular struct as smoke test.
void testReturnStructNestedIrregularEvenBiggerLeaf() {
  int a0;
  final a1Pointer = calloc<StructNestedIrregularBigger>();
  final StructNestedIrregularBigger a1 = a1Pointer.ref;
  final a2Pointer = calloc<StructNestedIrregularBigger>();
  final StructNestedIrregularBigger a2 = a2Pointer.ref;
  double a3;

  a0 = 1;
  a1.a0.a0 = 2;
  a1.a0.a1.a0.a0 = -3;
  a1.a0.a1.a0.a1 = 4;
  a1.a0.a1.a1.a0 = -5.0;
  a1.a0.a2 = 6;
  a1.a0.a3.a0.a0 = -7.0;
  a1.a0.a3.a1 = 8.0;
  a1.a0.a4 = 9;
  a1.a0.a5.a0.a0 = 10.0;
  a1.a0.a5.a1.a0 = -11.0;
  a1.a0.a6 = 12;
  a1.a1.a0.a0 = -13;
  a1.a1.a0.a1 = 14;
  a1.a1.a1.a0 = -15.0;
  a1.a2 = 16.0;
  a1.a3 = -17.0;
  a2.a0.a0 = 18;
  a2.a0.a1.a0.a0 = -19;
  a2.a0.a1.a0.a1 = 20;
  a2.a0.a1.a1.a0 = -21.0;
  a2.a0.a2 = 22;
  a2.a0.a3.a0.a0 = -23.0;
  a2.a0.a3.a1 = 24.0;
  a2.a0.a4 = 25;
  a2.a0.a5.a0.a0 = 26.0;
  a2.a0.a5.a1.a0 = -27.0;
  a2.a0.a6 = 28;
  a2.a1.a0.a0 = -29;
  a2.a1.a0.a1 = 30;
  a2.a1.a1.a0 = -31.0;
  a2.a2 = 32.0;
  a2.a3 = -33.0;
  a3 = 34.0;

  final result = returnStructNestedIrregularEvenBiggerLeaf(a0, a1, a2, a3);

  print("result = $result");

  Expect.equals(a0, result.a0);
  Expect.equals(a1.a0.a0, result.a1.a0.a0);
  Expect.equals(a1.a0.a1.a0.a0, result.a1.a0.a1.a0.a0);
  Expect.equals(a1.a0.a1.a0.a1, result.a1.a0.a1.a0.a1);
  Expect.approxEquals(a1.a0.a1.a1.a0, result.a1.a0.a1.a1.a0);
  Expect.equals(a1.a0.a2, result.a1.a0.a2);
  Expect.approxEquals(a1.a0.a3.a0.a0, result.a1.a0.a3.a0.a0);
  Expect.approxEquals(a1.a0.a3.a1, result.a1.a0.a3.a1);
  Expect.equals(a1.a0.a4, result.a1.a0.a4);
  Expect.approxEquals(a1.a0.a5.a0.a0, result.a1.a0.a5.a0.a0);
  Expect.approxEquals(a1.a0.a5.a1.a0, result.a1.a0.a5.a1.a0);
  Expect.equals(a1.a0.a6, result.a1.a0.a6);
  Expect.equals(a1.a1.a0.a0, result.a1.a1.a0.a0);
  Expect.equals(a1.a1.a0.a1, result.a1.a1.a0.a1);
  Expect.approxEquals(a1.a1.a1.a0, result.a1.a1.a1.a0);
  Expect.approxEquals(a1.a2, result.a1.a2);
  Expect.approxEquals(a1.a3, result.a1.a3);
  Expect.equals(a2.a0.a0, result.a2.a0.a0);
  Expect.equals(a2.a0.a1.a0.a0, result.a2.a0.a1.a0.a0);
  Expect.equals(a2.a0.a1.a0.a1, result.a2.a0.a1.a0.a1);
  Expect.approxEquals(a2.a0.a1.a1.a0, result.a2.a0.a1.a1.a0);
  Expect.equals(a2.a0.a2, result.a2.a0.a2);
  Expect.approxEquals(a2.a0.a3.a0.a0, result.a2.a0.a3.a0.a0);
  Expect.approxEquals(a2.a0.a3.a1, result.a2.a0.a3.a1);
  Expect.equals(a2.a0.a4, result.a2.a0.a4);
  Expect.approxEquals(a2.a0.a5.a0.a0, result.a2.a0.a5.a0.a0);
  Expect.approxEquals(a2.a0.a5.a1.a0, result.a2.a0.a5.a1.a0);
  Expect.equals(a2.a0.a6, result.a2.a0.a6);
  Expect.equals(a2.a1.a0.a0, result.a2.a1.a0.a0);
  Expect.equals(a2.a1.a0.a1, result.a2.a1.a0.a1);
  Expect.approxEquals(a2.a1.a1.a0, result.a2.a1.a1.a0);
  Expect.approxEquals(a2.a2, result.a2.a2);
  Expect.approxEquals(a2.a3, result.a2.a3);
  Expect.approxEquals(a3, result.a3);

  calloc.free(a1Pointer);
  calloc.free(a2Pointer);
}
