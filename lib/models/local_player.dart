import 'package:isar/isar.dart';

part 'local_player.g.dart';

@collection
class LocalPlayer {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String name;

  String? avatarPath;

  // Stats Cache
  double average3Dart = 0.0;
  double averageFirst9 = 0.0;
  double checkoutPercentage = 0.0;
  int matchesPlayed = 0;
  int matchesWon = 0;
}
