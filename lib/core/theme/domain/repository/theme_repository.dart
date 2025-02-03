abstract class ThemeRepository {
  Future<void> saveTheme(String theme);

  String? getSavedTheme();
}
