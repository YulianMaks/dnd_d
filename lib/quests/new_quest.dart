import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.MMMd();

class NewQuest extends StatefulWidget {
  // final Function addQuest;
  // NewQuest({super.key, required this.addQuest});

  @override
  State<NewQuest> createState() => _NewQuestState();
}

class _NewQuestState extends State<NewQuest> {
  final _nameController = TextEditingController();
  DateTime? _selectedDate;

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            // onChanged: _saveQuestName,
            controller: _nameController,
            maxLength: 40,
            decoration: const InputDecoration(
              label: Text('Enter a name for your quest'),
            ),
          ),
          Row(
            children: [
              Text(_selectedDate == null
                  ? 'No Date selected'
                  : formatter.format(_selectedDate!)),
              IconButton(
                  onPressed: _questDatePicker,
                  icon: const Icon(Icons.calendar_today_outlined))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              ElevatedButton(
                  onPressed: () {
                    print(_nameController.text);
                  },
                  child: const Text('Save'))
            ],
          )
        ],
      ),
    );
  }
}
