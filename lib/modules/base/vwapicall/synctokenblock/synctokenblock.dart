import 'package:json_annotation/json_annotation.dart';
part 'synctokenblock.g.dart';

@JsonSerializable()
class SyncTokenBlock {
  SyncTokenBlock(
      {required this.respondedDate,
        this.isServerResponded=false,
      required this.loginSessionId,
      required this.tokenList});

  DateTime respondedDate;
  bool isServerResponded;
  String loginSessionId;
  List<String> tokenList;

  factory SyncTokenBlock.fromJson(Map<String, dynamic> json) =>
      _$SyncTokenBlockFromJson(json);
  Map<String, dynamic> toJson() => _$SyncTokenBlockToJson(this);
}
