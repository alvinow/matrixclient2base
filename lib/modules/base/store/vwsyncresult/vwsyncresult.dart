import 'package:json_annotation/json_annotation.dart';
part 'vwsyncresult.g.dart';

@JsonSerializable()
class VwSyncResult{
  VwSyncResult({
    required this.acknowledge,
    required this.createdCount,
    required this.updatedCount,
    required this.deletedCount,
    this.errorMessage,
    this.successMessage,
    this.createdRowRecordIdList=const <String>[],
    this.updatedRowRecordIdList=const <String>[],
    this.deletedRowRecordIdList=const <String>[]
});



  bool acknowledge;
  int createdCount;
  int updatedCount;
  int deletedCount;
  String? errorMessage;
  String? successMessage;
  List<String> createdRowRecordIdList;
  List<String> updatedRowRecordIdList;
  List<String> deletedRowRecordIdList;

  factory VwSyncResult.fromJson(Map<String, dynamic> json) => _$VwSyncResultFromJson(json);
  Map<String, dynamic> toJson() => _$VwSyncResultToJson(this);
}