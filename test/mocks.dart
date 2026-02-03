import 'package:checkout_pro/services/match_service.dart';
import 'package:checkout_pro/core/game_engine.dart';
import 'package:checkout_pro/models/match_history.dart';
import 'package:checkout_pro/services/database_service.dart';
import 'package:checkout_pro/services/player_service.dart';

// Pure Dart Manual Mock implementing the interface
class MockMatchHistoryService implements MatchHistoryService {
  @override
  DatabaseService get _dbService => throw UnimplementedError();

  @override
  LocalPlayerService get _playerService => throw UnimplementedError();

  @override
  Future<void> saveMatch(GameEngine engine, {required int winnerId}) async {
    return;
  }

  @override
  Future<List<MatchHistory>> getPlayerHistory(int playerId) async {
    return [];
  }
}
