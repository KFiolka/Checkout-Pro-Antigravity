import 'package:isar/isar.dart';

part 'match_history.g.dart';

@collection
class MatchHistory {
  Id id = Isar.autoIncrement;

  late DateTime timestamp;
  
  late String gameType; // X01, Cricket, etc.
  
  late int winnerId;
  
  late String opponentType; // Human, Bot
  
  late int player1Id;
  late int player2Id;

  // JSON or serialized list of scores/legs
  late List<String> legData;
}
