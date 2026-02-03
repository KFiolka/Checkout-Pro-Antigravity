import 'package:isar/isar.dart';
import '../models/match_history.dart';
import '../core/game_engine.dart';
import '../core/x01_engine.dart';
import 'database_service.dart';
import 'player_service.dart';

class MatchHistoryService {
  final DatabaseService _dbService;
  final LocalPlayerService _playerService;

  MatchHistoryService(this._dbService, this._playerService);

  Future<void> saveMatch(GameEngine engine, {required int winnerId}) async {
    final isar = await _dbService.db;
    
    // Extract data from engine
    final match = MatchHistory()
      ..timestamp = DateTime.now()
      ..gameType = engine is X01Engine ? 'X01' : 'Cricket' // Simple check
      ..winnerId = winnerId
      ..player1Id = 0 // Placeholder, logic needs to map engine players to DB IDs
      ..player2Id = 1 // Placeholder
      ..opponentType = 'Human' // Placeholder
      ..legData = []; // Serialize state if needed

    await isar.writeTxn(() async {
      await isar.matchHistorys.put(match);
    });
    
    // Trigger stats update (Mock implementation for now)
    // In real app, we calculate stats from the engine state before saving
    await _playerService.updatePlayerStats(
        winnerId, 
        avg3Dart: 60.0, // Mock
        checkoutPct: 0.5, // Mock
        won: true
    );
  }

  Future<List<MatchHistory>> getPlayerHistory(int playerId) async {
    final isar = await _dbService.db;
    return await isar.matchHistorys
        .filter()
        .player1IdEqualTo(playerId)
        .or()
        .player2IdEqualTo(playerId)
        .sortByTimestampDesc()
        .findAll();
  }
}
