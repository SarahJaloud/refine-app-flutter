class KValidators {
  static String validateWord(String word) {
    final String wordTrimmed = word.trim();

    if (wordTrimmed.isEmpty) {
      return "Word can't be empty.";
    } else {
      return null;
    }
  }

  static String validateDefinition(String definition) {
    final String definitionTrimmed = definition.trim();

    if (definitionTrimmed.isEmpty) {
      return "Definition can't be empty.";
    } else {
      return null;
    }
  }
}
