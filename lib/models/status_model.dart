import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopywell/enums/common_enums.dart';

part 'status_model.freezed.dart';
part 'status_model.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class StatusModel<T> with _$StatusModel<T> {
  const factory StatusModel({
    String? title,
    String? message,
    OperationStatus? status,
    T? data,
    dynamic indicator,
  }) = _StatusModel<T>;

  factory StatusModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$StatusModelFromJson(json, fromJsonT);
}