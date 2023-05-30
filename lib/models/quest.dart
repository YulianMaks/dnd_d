import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.MMMd();

const uuid = Uuid();

enum QuestStat { str, dex, con, int, wis, cha }

const nameOfStat = {
  QuestStat.str: "STR",
  QuestStat.dex: "DEX",
  QuestStat.con: "CON",
  QuestStat.int: "INT",
  QuestStat.wis: "WIS",
  QuestStat.cha: "CHA",
};

class Quest {
  Quest({
    required this.name,
    required this.date,
    required this.stat,
  }) : id = uuid.v4();

  final String name;
  final String id;
  final DateTime date;
  final QuestStat stat;

  String get formattedDate {
    return formatter.format(date);
  }
}
