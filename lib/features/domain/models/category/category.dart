import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required String title,
    required Decimal filled,
    required Decimal planned,
    required Color color,
    required Widget icon,
  }) = _Category;
}
