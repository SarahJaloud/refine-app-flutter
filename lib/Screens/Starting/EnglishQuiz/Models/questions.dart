class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.answer, this.question, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Can I park here?",
    "options": [
      "Sorry, I did that.",
      "It's the same place.",
      "Only for half an hour."
    ],
    "answer_index": 2
  },
  {
    "id": 2,
    "question": "What colour will you paint the children's bedroom?",
    "options": [
      "I hope it was right.",
      "We can't decide.",
      "It wasn't very difficult."
    ],
    "answer_index": 1
  },
  {
    "id": 3,
    "question": "I can't understand this email.",
    "options": [
      "Would you like some help?",
      "Don't you know?",
      "I suppose you can."
    ],
    "answer_index": 0
  },
  {
    "id": 4,
    "question": "I'd like two tickets for tomorrow night.",
    "options": [
      "How much did you pay?",
      "Afternoon and evening.",
      "I'll just check for you."
    ],
    "answer_index": 2
  },
  {
    "id": 5,
    "question": "Shall we go to the gym now?",
    "options": ["I'm too tired.", "It's very good.", "Not at all."],
    "answer_index": 0
  },
  {
    "id": 6,
    "question":
        "His eyes were ...... bad that he couldn't read the number plate of the car in front.",
    "options": ["such", "too", "so"],
    "answer_index": 2
  },
  {
    "id": 7,
    "question":
        "The company needs to decide ...... and for all what its position is on this point.",
    "options": ["once", "first", "finally"],
    "answer_index": 0
  },
  {
    "id": 8,
    "question":
        "Don't put your cup on the ...... of the table – someone will knock it off.",
    "options": ["outside", "edge", "border"],
    "answer_index": 1
  },
  {
    "id": 9,
    "question": "I'm sorry - I didn't ...... to disturb you.",
    "options": ["hope", "think", "mean"],
    "answer_index": 2
  },
  {
    "id": 10,
    "question":
        "Would you mind ...... these plates a wipe before putting them in the cupboard?",
    "options": ["making", "getting", "giving"],
    "answer_index": 2
  },
  {
    "id": 11,
    "question":
        "I was looking forward ...... at the new restaurant, but it was closed.",
    "options": ["to eat", "to eating", "eating"],
    "answer_index": 1
  },
  {
    "id": 12,
    "question":
        "...... tired Melissa is when she gets home from work, she always makes time to say goodnight to the children.",
    "options": ["No matter how", "However much", "Whatever"],
    "answer_index": 0
  },
  {
    "id": 13,
    "question": "It was only ten days ago ...... she started her new job.",
    "options": ["then", "since", "that"],
    "answer_index": 2
  },
  {
    "id": 14,
    "question":
        "The shop didn't have the shoes I wanted, but they've ...... a pair specially for me.",
    "options": ["ordered", "commanded", "asked"],
    "answer_index": 0
  },
  {
    "id": 15,
    "question":
        "Have you got time to discuss your work now or are you ...... to leave?",
    "options": ["thinking", "about", "planned"],
    "answer_index": 1
  },
  {
    "id": 16,
    "question": "She came to live here ...... a month ago.",
    "options": ["almost", "quite", "already"],
    "answer_index": 1
  },
  {
    "id": 17,
    "question":
        "Once the plane is in the air, you can ...... your seat belts if you wish.",
    "options": ["unlock", "undress", "unfasten"],
    "answer_index": 2
  },
  {
    "id": 18,
    "question": "I left my last job because I had no ...... to travel.",
    "options": ["opportunity", "position", "possibility"],
    "answer_index": 0
  },
  {
    "id": 19,
    "question": "It wasn't a bad crash and ...... damage was done to my car.",
    "options": ["little", "small", "light"],
    "answer_index": 0
  },
  {
    "id": 20,
    "question": "I'd rather you ...... to her why we can't go.",
    "options": ["would explain", "to explain", "explained"],
    "answer_index": 2
  },
  {
    "id": 21,
    "question":
        "Before making a decision, the leader considered all ...... of the argument.",
    "options": ["features", "sides", "perspectives"],
    "answer_index": 1
  },
  {
    "id": 22,
    "question": "This new printer is recommended as being ...... reliable.",
    "options": ["strongly", "greatly", "highly"],
    "answer_index": 2
  },
  {
    "id": 23,
    "question":
        "When I realised I had dropped my gloves, I decided to ...... my steps.",
    "options": ["retrace", "return", "resume"],
    "answer_index": 0
  },
  {
    "id": 24,
    "question":
        "Anne's house is somewhere in the ...... of the railway station.",
    "options": ["vicinity", "district", "region"],
    "answer_index": 0
  },
];
