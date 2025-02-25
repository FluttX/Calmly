// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get onboardingTitle => 'Somos lo que hacemos';

  @override
  String get onboardingSubtitle => 'Miles de personas usan Silent Moon para pequeñas meditaciones';

  @override
  String get login => 'INICIAR SESIÓN';

  @override
  String get welcomeBack => '¡Bienvenido de nuevo!';

  @override
  String get continueWithGoogle => 'CONTINUAR CON GOOGLE';

  @override
  String get continueWithFacebook => 'CONTINUAR CON FACEBOOK';

  @override
  String get orLoginWithEmail => 'o iniciar sesión con correo electrónico';

  @override
  String get emailAddress => 'Dirección de correo electrónico';

  @override
  String get password => 'Contraseña';

  @override
  String get forgetPassword => '¿Olvidaste tu contraseña?';

  @override
  String get alreadyHaveAccount => '¿Ya tienes una cuenta?';

  @override
  String get donNotHaveAccount => '¿No tienes una cuenta?';

  @override
  String get createYourAccount => 'Crea tu cuenta';

  @override
  String get orSignupWithEmail => 'o regístrate con el correo electrónico';

  @override
  String get name => 'Nombre';

  @override
  String get iHaveReadThe => 'He leído la';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get getStarted => 'Comenzar';

  @override
  String get signup => 'REGISTRARSE';

  @override
  String hiUser(Object name) {
    return 'Hola $name,';
  }

  @override
  String welComeToAppName(Object app_name) {
    return 'Bienvenido a $app_name';
  }

  @override
  String get welcomeSubtitle => 'Explora la aplicación, encuentra un poco de paz mental para prepararte para la meditación.';

  @override
  String get whatBringsYou => '¿Qué te trae';

  @override
  String toAppName(Object app_name) {
    return 'a $app_name?';
  }

  @override
  String get chooseATopic => 'elige un tema en el que concentrarte:';

  @override
  String get meditateTimeTitle => '¿A qué hora te gustaría meditar?';

  @override
  String get meditateTimeSubtitle => 'Puedes elegir cualquier hora, pero recomendamos hacerlo a primera hora de la mañana.';

  @override
  String get meditateDayTitle => '¿Qué día te gustaría meditar?';

  @override
  String get meditateDaySubtitle => 'Lo ideal es todos los días, pero recomendamos al menos cinco.';

  @override
  String get save => 'GUARDAR';

  @override
  String get noThanks => 'NO, GRACIAS';

  @override
  String get home => 'Inicio';

  @override
  String get sleep => 'Dormir';

  @override
  String get meditate => 'Meditar';

  @override
  String get music => 'Música';

  @override
  String get profile => 'Perfil';

  @override
  String get exitApp => 'Salir de la aplicación';

  @override
  String get areYouSureToExit => '¿Estás seguro de que quieres salir?';

  @override
  String get no => 'No';

  @override
  String get yes => 'Sí';

  @override
  String goodMorningUser(Object name) {
    return 'Buenos días, $name';
  }

  @override
  String goodAfternoonUser(Object name) {
    return 'Buenas tardes, $name';
  }

  @override
  String goodEveningUser(Object name) {
    return 'Buenas noches, $name';
  }

  @override
  String get weWishYouHaveAGoodDay => '¡Esperamos que tengas un buen día!';

  @override
  String get basics => 'Conceptos básicos';

  @override
  String get course => 'CURSO';

  @override
  String minCount(Object minCount) {
    return '$minCount MIN';
  }

  @override
  String get relaxation => 'Relajación';

  @override
  String get start => 'EMPEZAR';

  @override
  String get dailyThought => 'Pensamiento diario';

  @override
  String get meditation => 'MEDITACIÓN';

  @override
  String get goodMorning => 'Feliz mañana';

  @override
  String get courseDetails => 'Relaja la mente para una noche de sueño reparador con estos tonos profundos y ambientales.';

  @override
  String favoriteCount(Object count) {
    return '$count Favoritos';
  }

  @override
  String listenCount(Object count) {
    return '$count Escuchando';
  }

  @override
  String get pickANarrator => 'Elige un narrador';

  @override
  String get maleVoice => 'VOZ MASCULINA';

  @override
  String get femaleVoice => 'VOZ FEMENINA';

  @override
  String get meditateSubtitle => 'Podemos aprender a reconocer cuando nuestras mentes están haciendo sus acrobacias diarias habituales.';

  @override
  String get emailIsRequired => 'El correo electrónico es obligatorio';

  @override
  String get enterAValidEmail => 'Ingrese un correo electrónico válido';

  @override
  String get passwordIsRequired => 'La contraseña es obligatoria';

  @override
  String get passwordValidation => 'La contraseña debe tener al menos 6 caracteres';

  @override
  String get nameIsRequired => 'El nombre es obligatorio';

  @override
  String get nameValidation => 'El nombre debe tener al menos 3 caracteres';

  @override
  String get privacyPolicyValidation => 'Por favor, acepte la Política de Privacidad para continuar.';

  @override
  String get signupSuccess => '¡Registro exitoso! Redirigiendo...';

  @override
  String get dailyClam => 'Calma Diaria';

  @override
  String get pausePractice => 'Pausar Práctica';
}
