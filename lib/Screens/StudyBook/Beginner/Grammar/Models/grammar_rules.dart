class GrammarRules {
  final String title;
  final String rule;
  final String example;

  GrammarRules({this.title, this.rule, this.example});
}

const List sample_data = [
  {
    "title": "-ed verbs:",
    "rule":
        "-ed verbs are actions that happened in the past. It describes things that have already happened.",
    "example": "For example: She cooked yesterday. I skated last week. ",
  },
  {
    "title": "-ing verbs:",
    "rule":
        "-ing verbs are actions that are happening in the present. It describes actions that are happening right now.",
    "example": "For example: Diving, Fishing, Skating, Climbing...",
  },
];
