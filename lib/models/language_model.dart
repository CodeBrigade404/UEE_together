class Language {
  final int id;
  final String flag;
  final String name;
  final String languageCode;

  Language(this.id, this.flag, this.name, this.languageCode);

  static List<Language> languageList() {
    return [
      Language(1, "EN", "English", "en"),
      Language(2, "LK", "සිංහල", "si"),
      // Language(3, "🇱y", "தமிழ்", "ta"),
    ];
  }
}
