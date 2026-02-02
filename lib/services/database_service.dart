import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/local_player.dart';
import '../models/match_history.dart';

class DatabaseService {
  late Future<Isar> db;

  DatabaseService() {
    db = initDb();
  }

  Future<Isar> initDb() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [LocalPlayerSchema, MatchHistorySchema],
        directory: dir.path,
      );
    }
    return Isar.getInstance()!;
  }
}
