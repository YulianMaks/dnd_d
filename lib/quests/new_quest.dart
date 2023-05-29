import 'package:daily_and_deeds/models/quest.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.MMMd();

class NewQuest extends StatefulWidget {
  const NewQuest({super.key, required this.onAddNewQuest});

  final void Function(Quest quest) onAddNewQuest;

  @override
  State<NewQuest> createState() => _NewQuestState();
}

class _NewQuestState extends State<NewQuest> {
  final _nameController = TextEditingController();
  DateTime? _selectedDate;
  Stat _selectedStat = Stat.str;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _questDatePicker() async {
    final now = DateTime.now();
    final lastDate = DateTime(now.year, now.day, now.month + 1);
    final pickedDate = await showDatePicker(
        context: context, initialDate: now, firstDate: now, lastDate: lastDate);
    print(pickedDate);
    setState(() {
      _selectedDate = pickedDate;
    });
    print(_selectedDate);
  }

  void _submitQuestData() {
    if (_nameController.text.trim().isEmpty || _selectedDate == null) {
      showDialog(
          context: context,
          builder: ((ctx) => AlertDialog(
                title: const Text(
                  'Неправильні дані',
                ),
                content: const Text('Перевірте наявність всіх даних'),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(ctx);
                      },
                      child: const Text('Закрити'))
                ],
              )));
      return;
    }
    widget.onAddNewQuest(
      Quest(
          name: _nameController.text,
          date: _selectedDate!,
          stat: _selectedStat),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            // onChanged: _saveQuestName,
            controller: _nameController,
            maxLength: 40,
            decoration: const InputDecoration(
              label: Text('Введіть назву для вашого квеста!'),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              DropdownButton(
                  value: _selectedStat,
                  items: Stat.values
                      .map(
                        (stat) => DropdownMenuItem(
                          value: stat,
                          child: Text(stat.name.toUpperCase()),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    if (value == null) {
                      return;
                    }
                    setState(() {
                      _selectedStat = value;
                    });
                  }),
              const SizedBox(
                width: 45,
              ),
              IconButton(
                  onPressed: _questDatePicker,
                  icon: const Icon(Icons.calendar_today_outlined)),
              Text(_selectedDate == null
                  ? 'Без дати'
                  : formatter.format(_selectedDate!)),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Відміна')),
              ElevatedButton(
                onPressed: _submitQuestData,
                child: const Text('Зберегти'),
              )
            ],
          )
        ],
      ),
    );
  }
}
