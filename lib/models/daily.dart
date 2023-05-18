import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Daily {
  Daily({required this.name}) : id = uuid.v4();

  final String name;
  final String id;
}
