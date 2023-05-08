import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Stat { str, dex, con, int, wis, cha }

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
}
