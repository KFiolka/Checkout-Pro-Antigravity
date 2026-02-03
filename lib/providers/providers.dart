import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/database_service.dart';
import '../services/player_service.dart';
import '../services/match_service.dart';
import '../services/statistics_service.dart';

final databaseServiceProvider = Provider<DatabaseService>((ref) {
  return DatabaseService();
});

final playerServiceProvider = Provider<LocalPlayerService>((ref) {
  final db = ref.watch(databaseServiceProvider);
  return LocalPlayerService(db);
});

final matchServiceProvider = Provider<MatchHistoryService>((ref) {
  final db = ref.watch(databaseServiceProvider);
  final playerService = ref.watch(playerServiceProvider);
  return MatchHistoryService(db, playerService);
});

final statisticsServiceProvider = Provider<StatisticsService>((ref) {
  return StatisticsService();
});
