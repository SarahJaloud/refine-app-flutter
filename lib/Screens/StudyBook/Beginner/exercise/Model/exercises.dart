class Exercise {
  final int id, answer;
  final String question;
  final List<String> options;

  Exercise({this.id, this.answer, this.question, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "She ____ yesturday.",
    "options": ["Cooked.", "Cooks.", "Cooking."],
    "answer_index": 1
  },
  {
    "id": 2,
    "question": "Ibrahem is ____ the game right now.",
    "options": ["Watch.", "Watched.", "Watching."],
    "answer_index": 3
  },
  {
    "id": 3,
    "question": "The act of going deep into the water.",
    "options": ["Diving.", "Climbing.", "Skating."],
    "answer_index": 1
  },
  {
    "id": 4,
    "question": "The act of catching fish.",
    "options": ["Skating.", "Fishing.", "Diving."],
    "answer_index": 2
  },
];
