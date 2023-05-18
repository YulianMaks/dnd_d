import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.MMMd();

const uuid = Uuid();

enum Stat { str, dex, con, int, wis, cha }

const nameOfStat = {
  Stat.str: "STR",
  Stat.dex: "DEX",
  Stat.con: "CON",
  Stat.int: "INT",
  Stat.wis: "WIS",
  Stat.cha: "CHA",
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
  final Stat stat;

  String get formattedDate {
    return formatter.format(date);
  }
}
