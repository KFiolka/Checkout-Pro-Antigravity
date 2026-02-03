import 'package:isar/isar.dart';
import '../models/local_player.dart';
import 'database_service.dart';

class LocalPlayerService {
  final DatabaseService _dbService;

  LocalPlayerService(this._dbService);

  Future<void> createPlayer(String name, {String? avatarPath}) async {
    final isar = await _dbService.db;
    final newPlayer = LocalPlayer()
      ..name = name
      ..avatarPath = avatarPath;

    await isar.writeTxn(() async {
      await isar.localPlayers.put(newPlayer);
    });
  }

  Future<LocalPlayer?> getPlayer(int id) async {
    final isar = await _dbService.db;
    return await isar.localPlayers.get(id);
  }

  Future<List<LocalPlayer>> getAllPlayers() async {
    final isar = await _dbService.db;
    return await isar.localPlayers.where().findAll();
  }

  Stream<List<LocalPlayer>> watchAllPlayers() async* {
    final isar = await _dbService.db;
    yield* isar.localPlayers.where().watch(fireImmediately: true);
  }

  Future<void> updatePlayerStats(int playerId, {
    required double avg3Dart,
    required double checkoutPct,
    required bool won,
  }) async {
    final isar = await _dbService.db;
    await isar.writeTxn(() async {
      final player = await isar.localPlayers.get(playerId);
      if (player != null) {
        // Update running averages (simplified for MVP, ideally should be re-calculated from history)
        // For MVP we just overwrite or simple weighted avg could be done if we tracked total darts.
        // Here we just update the "last known" or "current session" stats for display.
        // A full re-calc from MatchHistory is preferred for accuracy.
        
        player.average3Dart = avg3Dart;
        player.checkoutPercentage = checkoutPct;
        player.matchesPlayed += 1;
        if (won) {
          player.matchesWon += 1;
        }
        await isar.localPlayers.put(player);
      }
    });
  }
}
