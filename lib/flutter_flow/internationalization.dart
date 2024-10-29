import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr', 'de', 'ru', 'it'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
    String? deText = '',
    String? ruText = '',
    String? itText = '',
  }) =>
      [enText, frText, deText, ruText, itText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Authentication
  {
    'zy2dcfw8': {
      'en': 'Sign In',
      'de': 'Anmelden',
      'fr': 'Se connecter',
      'it': 'Registrazione',
      'ru': 'Войти',
    },
    '467m5kkd': {
      'en': 'Let\'s get started by filling out the form below.',
      'de': 'Beginnen wir, indem Sie das folgende Formular ausfüllen.',
      'fr': 'Commençons par remplir le formulaire ci-dessous.',
      'it': 'Iniziamo compilando il modulo sottostante.',
      'ru': 'Давайте начнем с заполнения формы ниже.',
    },
    'mrw43gxr': {
      'en': 'Email',
      'de': 'E-Mail',
      'fr': 'E-mail',
      'it': 'E-mail',
      'ru': 'Электронная почта',
    },
    'axjck4wx': {
      'en': 'Password',
      'de': 'Passwort',
      'fr': 'Mot de passe',
      'it': 'Password',
      'ru': 'Пароль',
    },
    '6g7l98ue': {
      'en': 'Sign In',
      'de': 'Anmelden',
      'fr': 'Se connecter',
      'it': 'Registrazione',
      'ru': 'Войти',
    },
    '8xdyajsj': {
      'en': 'Forgot Password',
      'de': 'Passwort vergessen',
      'fr': 'Mot de passe oublié',
      'it': 'Ha dimenticato la password',
      'ru': 'Забыли пароль',
    },
    'ov2qy1a8': {
      'en': 'Register',
      'de': 'Registrieren',
      'fr': 'S\'inscrire',
      'it': 'Iscrizione',
      'ru': 'Зарегистрироваться',
    },
    'hquq31mg': {
      'en': 'Let\'s get started by filling out the form below.',
      'de': 'Beginnen wir, indem Sie das folgende Formular ausfüllen.',
      'fr': 'Commençons par remplir le formulaire ci-dessous.',
      'it': 'Iniziamo compilando il modulo sottostante.',
      'ru': 'Давайте начнем с заполнения формы ниже.',
    },
    'ow0gka9v': {
      'en': 'Email',
      'de': 'E-Mail',
      'fr': 'E-mail',
      'it': 'E-mail',
      'ru': 'Электронная почта',
    },
    'fvwdyl57': {
      'en': 'Password',
      'de': 'Passwort',
      'fr': 'Mot de passe',
      'it': 'Password',
      'ru': 'Пароль',
    },
    'bicbm1xn': {
      'en': 'Confirm Password',
      'de': 'Passwort bestätigen',
      'fr': 'Confirmez le mot de passe',
      'it': 'Conferma password',
      'ru': 'Подтвердите пароль',
    },
    'mklwrcq1': {
      'en': 'Create Account',
      'de': 'Benutzerkonto erstellen',
      'fr': 'Créer un compte',
      'it': 'Creare un account',
      'ru': 'Зарегистрироваться',
    },
    '7cue03ji': {
      'en': 'Authentication',
      'de': 'Authentifizierung',
      'fr': 'Authentification',
      'it': 'Autenticazione',
      'ru': 'Аутентификация',
    },
    'mt3hlfue': {
      'en': 'Auth',
      'de': 'Authentifizierung',
      'fr': 'Authentifier',
      'it': 'Autenticazione',
      'ru': 'Аутентификация',
    },
  },
  // Profile
  {
    '8pu2vt7a': {
      'en': 'Account Settings',
      'de': 'Kontoeinstellungen',
      'fr': 'Paramètres du compte',
      'it': 'Impostazioni dell\'account',
      'ru': 'Настройки учетной записи',
    },
    '8d76rn5o': {
      'en': 'Change Password',
      'de': 'Kennwort ändern',
      'fr': 'Changer le mot de passe',
      'it': 'Cambiare la password',
      'ru': 'Изменить пароль',
    },
    'u4xeq61r': {
      'en': 'Edit Profile',
      'de': 'Profil bearbeiten',
      'fr': 'Modifier le profil',
      'it': 'Modifica profilo',
      'ru': 'Редактировать профиль',
    },
    '9wgsical': {
      'en': 'My Purchases',
      'de': 'Meine Einkäufe',
      'fr': 'Mes achats',
      'it': 'I miei acquisti',
      'ru': 'Мои покупки',
    },
    'ds22guh7': {
      'en': 'Log Out',
      'de': 'Ausloggen',
      'fr': 'Se déconnecter',
      'it': 'Esci',
      'ru': 'Выйти',
    },
    'qw4ezgbw': {
      'en': 'Profile',
      'de': 'Profil',
      'fr': 'Profil',
      'it': 'Profilo',
      'ru': 'Профиль',
    },
    'aotgvfyf': {
      'en': 'Profile',
      'de': 'Profil',
      'fr': 'Profil',
      'it': 'Profilo',
      'ru': 'Профиль',
    },
  },
  // EditProfile
  {
    'vmxyyc9y': {
      'en': 'Edit Profile',
      'de': 'Profil bearbeiten',
      'fr': 'Modifier le profil',
      'it': 'Modifica profilo',
      'ru': 'Редактировать профиль',
    },
    'r61s427k': {
      'en': 'Upload',
      'de': 'Hochladen',
      'fr': 'Télécharger',
      'it': 'Caricamento',
      'ru': 'Загрузить',
    },
    'vfg8jss9': {
      'en': 'Display Name',
      'de': 'Anzeigename',
      'fr': 'Nom d\'affichage',
      'it': 'Nome da visualizzare',
      'ru': 'Отображаемое имя',
    },
    '1ximo2fz': {
      'en': 'Phone Number',
      'de': 'Telefonnummer',
      'fr': 'Numéro de téléphone',
      'it': 'Numero di telefono',
      'ru': 'Номер телефона',
    },
    'ge6kmdfa': {
      'en': 'First Name',
      'de': 'Vorname',
      'fr': 'Prénom',
      'it': 'Nome di battesimo',
      'ru': 'Имя',
    },
    'djtpnex8': {
      'en': 'Last Name',
      'de': 'Nachname',
      'fr': 'Nom de famille',
      'it': 'Cognome',
      'ru': 'Фамилия',
    },
    'lkykbfxk': {
      'en': 'Save Changes',
      'de': 'Änderungen speichern',
      'fr': 'Enregistrer les modifications',
      'it': 'Salva le modifiche',
      'ru': 'Сохранить изменения',
    },
    '9nh61ubr': {
      'en': 'Invalid Input.',
      'de': 'Ungültige Eingabe.',
      'fr': 'Entrée non valide.',
      'it': 'Input non valido.',
      'ru': 'Неверный ввод.',
    },
    'ae2xwcqu': {
      'en': 'Max 20 chars allowed',
      'de': 'Maximal 20 Zeichen erlaubt',
      'fr': 'Max 20 caractères autorisés',
      'it': 'Sono consentiti al massimo 20 caratteri',
      'ru': 'Разрешено максимум 20 символов.',
    },
    '6te478f3': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    'zl80aovk': {
      'en': 'Invalid Input',
      'de': 'Ungültige Eingabe',
      'fr': 'Entrée non valide',
      'it': 'Input non valido',
      'ru': 'Неверный ввод',
    },
    'a8y133ss': {
      'en': 'Max 20 chars allowed',
      'de': 'Maximal 20 Zeichen erlaubt',
      'fr': 'Max 20 caractères autorisés',
      'it': 'Sono consentiti al massimo 20 caratteri',
      'ru': 'Разрешено максимум 20 символов.',
    },
    'h6luo13p': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    'uqxtfcgl': {
      'en': 'Field is required',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    'mq7ejtfx': {
      'en': 'Max 20 chars allowed',
      'de': 'Maximal 20 Zeichen erlaubt',
      'fr': 'Max 20 caractères autorisés',
      'it': 'Sono consentiti al massimo 20 caratteri',
      'ru': 'Разрешено максимум 20 символов.',
    },
    'qba4y0l9': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    '8e4u40z1': {
      'en': 'Invalid Input',
      'de': 'Ungültige Eingabe',
      'fr': 'Entrée non valide',
      'it': 'Input non valido',
      'ru': 'Неверный ввод',
    },
    'oy6buge5': {
      'en': 'Max 20 chars allowed',
      'de': 'Maximal 20 Zeichen erlaubt',
      'fr': 'Max 20 caractères autorisés',
      'it': 'Sono consentiti al massimo 20 caratteri',
      'ru': 'Разрешено максимум 20 символов.',
    },
    'bnq3r28u': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
  },
  // Start
  {
    'cuuvs4if': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
    'y2tkc6v9': {
      'en': '4.25',
      'de': '4,25',
      'fr': '4.25',
      'it': '4.25',
      'ru': '4.25',
    },
    'elrslp3x': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // QuestLocationCheck
  {
    '6wlwpxwq': {
      'en': 'Start Game',
      'de': 'Weitermachen',
      'fr': 'Continuer',
      'it': 'Continuare',
      'ru': 'Продолжать',
    },
    '1zcg5vm3': {
      'en': 'Back',
      'de': 'Zurück',
      'fr': 'Dos',
      'it': 'Indietro',
      'ru': 'Назад',
    },
    '91tkinqz': {
      'en': 'Quest Location Check',
      'de': 'Quest-Standortprüfung',
      'fr': 'Vérification de l\'emplacement de la quête',
      'it': 'Controllo della posizione della missione',
      'ru': 'Проверка местоположения квеста',
    },
    'xtiupjav': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // LocationDetails
  {
    'ui7o6ffx': {
      'en': 'About',
      'de': 'Um',
      'fr': 'À propos',
      'it': 'Di',
      'ru': 'О',
    },
    '25gxwn27': {
      'en': 'Address',
      'de': 'Adresse',
      'fr': 'Adresse',
      'it': 'Indirizzo',
      'ru': 'Адрес',
    },
    '7tijo8ms': {
      'en': 'Continue',
      'de': 'Weitermachen',
      'fr': 'Continuer',
      'it': 'Continuare',
      'ru': 'Продолжать',
    },
    'i1hutsok': {
      'en': 'Location Details',
      'de': 'Details zur Station',
      'fr': 'Détails de l\'emplacement',
      'it': 'Dettagli sulla posizione',
      'ru': 'Подробности местоположения',
    },
    'bcduwlfi': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // QandAtext
  {
    '5ql31095': {
      'en': 'Question',
      'de': 'Frage',
      'fr': 'Question',
      'it': 'Domanda',
      'ru': 'Вопрос',
    },
    '9mht5mio': {
      'en': 'Answer',
      'de': 'Antwort',
      'fr': 'Répondre',
      'it': 'Risposta',
      'ru': 'Отвечать',
    },
    '3ws03l4d': {
      'en': 'Type Your Answer',
      'de': 'Geben Sie Ihre Antwort ein',
      'fr': 'Tapez votre réponse',
      'it': 'Digita la tua risposta',
      'ru': 'Введите свой ответ',
    },
    'pjgaruvt': {
      'en': 'Submit',
      'de': 'Einreichen',
      'fr': 'Soumettre',
      'it': 'Invia',
      'ru': 'Представлять на рассмотрение',
    },
    '2z4hx81j': {
      'en': 'Question: Textual',
      'de': 'Frage: Textuell',
      'fr': 'Question : Textuel',
      'it': 'Domanda: Testuale',
      'ru': 'Вопрос: Текстовый',
    },
    '3f20plsb': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // Hint
  {
    'suw0kd86': {
      'en': 'Hint',
      'de': 'Hinweis',
      'fr': 'Indice',
      'it': 'Suggerimento',
      'ru': 'Намекать',
    },
    'st1ego4z': {
      'en': 'Still unable to figure out the answer?',
      'de': 'Sie wissen immer noch nicht die Antwort?',
      'fr': 'Vous n’arrivez toujours pas à trouver la réponse ?',
      'it': 'Non riesci ancora a trovare la risposta?',
      'ru': 'Все еще не можете найти ответ?',
    },
    '1tetg96c': {
      'en': 'Hint',
      'de': 'Hinweis',
      'fr': 'Indice',
      'it': 'Suggerimento',
      'ru': 'Намекать',
    },
    'fcq37m8j': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // AnswerText
  {
    '7htsgmzk': {
      'en': 'Answer',
      'de': 'Antwort',
      'fr': 'Répondre',
      'it': 'Risposta',
      'ru': 'Отвечать',
    },
    '5jq2me0v': {
      'en': 'Continue',
      'de': 'Weitermachen',
      'fr': 'Continuer',
      'it': 'Continuare',
      'ru': 'Продолжать',
    },
    'laj98gsp': {
      'en': 'Answer',
      'de': 'Antwort',
      'fr': 'Répondre',
      'it': 'Risposta',
      'ru': 'Отвечать',
    },
    'wrpmi3xe': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // QandAChoice
  {
    'opy05yub': {
      'en': 'Question',
      'de': 'Frage',
      'fr': 'Question',
      'it': 'Domanda',
      'ru': 'Вопрос',
    },
    'xzfixh5c': {
      'en': 'Answer',
      'de': 'Antwort',
      'fr': 'Répondre',
      'it': 'Risposta',
      'ru': 'Отвечать',
    },
    'dpgsc7rh': {
      'en': 'Submit',
      'de': 'Einreichen',
      'fr': 'Soumettre',
      'it': 'Invia',
      'ru': 'Представлять на рассмотрение',
    },
    'hc25urfi': {
      'en': 'Question: Options',
      'de': 'Frage: Optionen',
      'fr': 'Question : Options',
      'it': 'Domanda: Opzioni',
      'ru': 'Вопрос: Варианты',
    },
    '0p5oboat': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // Directions
  {
    'c8roincv': {
      'en': 'Directions',
      'de': 'Wegbeschreibung',
      'fr': 'Instructions',
      'it': 'Indicazioni',
      'ru': 'Направления',
    },
    'c2wcmbsc': {
      'en': 'Maidstone, San Antonio, Tx.',
      'de': 'Maidstone, San Antonio, Texas.',
      'fr': 'Maidstone, San Antonio, Texas.',
      'it': 'Maidstone, San Antonio, Texas.',
      'ru': 'Мейдстоун, Сан-Антонио, Техас.',
    },
    'igyaria4': {
      'en': '\$210/night',
      'de': '210 \$/Nacht',
      'fr': '210\$/nuit',
      'it': '\$210/notte',
      'ru': '210\$/ночь',
    },
    'chwneok7': {
      'en': '32 miles away',
      'de': '32 Meilen entfernt',
      'fr': 'À 32 miles',
      'it': '32 miglia di distanza',
      'ru': '32 мили отсюда',
    },
    'kwpuvny3': {
      'en': '4.25',
      'de': '4,25',
      'fr': '4.25',
      'it': '4.25',
      'ru': '4.25',
    },
    '1qavso7o': {
      'en': 'Continue',
      'de': 'Weitermachen',
      'fr': 'Continuer',
      'it': 'Continuare',
      'ru': 'Продолжать',
    },
    'oqkujok4': {
      'en': 'Continue',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    '5p14a7sc': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // Checkout
  {
    'vzhbeevb': {
      'en': 'Cart',
      'de': 'Warenkorb',
      'fr': 'Panier',
      'it': 'Carrello',
      'ru': 'Корзина',
    },
    'jh5w9gxe': {
      'en': 'Your Cart',
      'de': 'Ihr Warenkorb',
      'fr': 'Votre panier',
      'it': 'Il tuo carrello',
      'ru': 'Ваша корзина',
    },
    'o6bxkf3o': {
      'en': 'Below is the list of items in your cart.',
      'de': 'Unten finden Sie die Liste der Artikel in Ihrem Einkaufswagen.',
      'fr':
          'Vous trouverez ci-dessous la liste des articles présents dans votre panier.',
      'it': 'Di seguito è riportato l\'elenco degli articoli nel carrello.',
      'ru': 'Ниже приведен список товаров в вашей корзине.',
    },
    '0gbyk9hs': {
      'en': 'Remove Item from Cart',
      'de': 'Artikel aus dem Warenkorb entfernen',
      'fr': 'Supprimer l\'article du panier',
      'it': 'Rimuovi l\'articolo dal carrello',
      'ru': 'Удалить товар из корзины',
    },
    'ckei7lmh': {
      'en': 'Order Summary',
      'de': 'Bestellübersicht',
      'fr': 'Résumé de la commande',
      'it': 'Riepilogo dell\'ordine',
      'ru': 'Резюме заказа',
    },
    '02j18wuc': {
      'en': 'Below is a list of your items.',
      'de': 'Unten finden Sie eine Liste Ihrer Artikel.',
      'fr': 'Vous trouverez ci-dessous une liste de vos articles.',
      'it': 'Di seguito è riportato l\'elenco dei tuoi articoli.',
      'ru': 'Ниже приведен список ваших товаров.',
    },
    '6yroyh6q': {
      'en': 'Price Breakdown',
      'de': 'Preisaufschlüsselung',
      'fr': 'Détail des prix',
      'it': 'Ripartizione dei prezzi',
      'ru': 'Разбивка цен',
    },
    'cxbzr4s4': {
      'en': 'Base Price',
      'de': 'Grundpreis',
      'fr': 'Prix de base',
      'it': 'Prezzo base',
      'ru': 'Базовая цена',
    },
    '52xh5p96': {
      'en': 'Taxes',
      'de': 'Steuern',
      'fr': 'Impôts',
      'it': 'Tasse',
      'ru': 'Налоги',
    },
    'tbfyw7bc': {
      'en': '\$0.00',
      'de': '0,00 €',
      'fr': '0,00 \$',
      'it': '\$0,00',
      'ru': '0,00 \$',
    },
    'qpciubh5': {
      'en': 'Total',
      'de': 'Gesamt',
      'fr': 'Total',
      'it': 'Totale',
      'ru': 'Общий',
    },
    'iov0tmqa': {
      'en': 'Continue to Checkout',
      'de': 'Weiter zur Kasse',
      'fr': 'Continuer vers la caisse',
      'it': 'Continua al Checkout',
      'ru': 'Продолжить оформление заказа',
    },
    '0tiuj2my': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // ResetPassword
  {
    'uuj0ynuj': {
      'en': 'Reset Password',
      'de': 'Passwort zurücksetzen',
      'fr': 'Réinitialiser le mot de passe',
      'it': 'Reimposta password',
      'ru': 'Сбросить пароль',
    },
    'hb8o4ao3': {
      'en': 'Email',
      'de': 'E-Mail',
      'fr': 'E-mail',
      'it': 'E-mail',
      'ru': 'Электронная почта',
    },
    'rq57y263': {
      'en': 'Enter your email',
      'de': 'Geben Sie Ihre E-Mail ein',
      'fr': 'Entrez votre email',
      'it': 'Inserisci la tua email',
      'ru': 'Введите свой адрес электронной почты',
    },
    '36an8i41': {
      'en': 'Reset Password',
      'de': 'Passwort zurücksetzen',
      'fr': 'Réinitialiser le mot de passe',
      'it': 'Reimposta password',
      'ru': 'Сбросить пароль',
    },
  },
  // OrderConfirm
  {
    '0rokvnbx': {
      'en': 'Order Confirmation',
      'de': 'Auftragsbestätigung',
      'fr': 'Confirmation de commande',
      'it': 'Conferma dell\'ordine',
      'ru': 'Подтверждение заказа',
    },
    'w1045338': {
      'en': 'Order Confirmed!',
      'de': 'Bestellung bestätigt!',
      'fr': 'Commande confirmée !',
      'it': 'Ordine confermato!',
      'ru': 'Заказ подтвержден!',
    },
    'bsjtwkbg': {
      'en':
          'Thank You For Your Order.    An Order Confirmation Email has been sent to your registered email. Product is also added under your Purchases. Please click the button below to view the same.',
      'de':
          'Vielen Dank für Ihre Bestellung. Eine Bestellbestätigungs-E-Mail wurde an Ihre registrierte E-Mail-Adresse gesendet. Das Produkt wurde auch unter Ihren Einkäufen hinzugefügt. Klicken Sie bitte auf die Schaltfläche unten, um es anzuzeigen.',
      'fr':
          'Merci pour votre commande. Un e-mail de confirmation de commande a été envoyé à votre adresse e-mail enregistrée. Le produit est également ajouté sous vos achats. Veuillez cliquer sur le bouton ci-dessous pour l\'afficher.',
      'it':
          'Grazie per il tuo ordine. Un\'e-mail di conferma dell\'ordine è stata inviata al tuo indirizzo e-mail registrato. Il prodotto è stato aggiunto anche sotto i tuoi acquisti. Clicca sul pulsante qui sotto per visualizzarlo.',
      'ru':
          'Спасибо за ваш заказ. Письмо с подтверждением заказа было отправлено на ваш зарегистрированный адрес электронной почты. Продукт также добавлен в раздел «Покупки». Нажмите кнопку ниже, чтобы просмотреть то же самое.',
    },
    'sq2wbp58': {
      'en': 'My Purchases',
      'de': 'Meine Einkäufe',
      'fr': 'Mes achats',
      'it': 'I miei acquisti',
      'ru': 'Мои покупки',
    },
  },
  // QuestDetailsFull
  {
    'dxe07c8m': {
      'en': 'Quest Details',
      'de': 'Questdetails',
      'fr': 'Détails de la quête',
      'it': 'Dettagli della missione',
      'ru': 'Подробности квеста',
    },
    'fgee4037': {
      'en': 'About the City',
      'de': 'Über die Stadt',
      'fr': 'À propos de la ville',
      'it': 'Informazioni sulla città',
      'ru': 'О городе',
    },
    '4qgktmzh': {
      'en': 'About the Quest',
      'de': 'Über die Quest',
      'fr': 'À propos de la quête',
      'it': 'Informazioni sulla ricerca',
      'ru': 'О квесте',
    },
    'zbh98odx': {
      'en': 'S',
      'de': 'S',
      'fr': 'S',
      'it': 'S',
      'ru': 'С',
    },
    'ikcktksd': {
      'en': 'E',
      'de': 'E',
      'fr': 'E',
      'it': 'E',
      'ru': 'Э',
    },
    'dhp3pdfj': {
      'en': 'Number of Places',
      'de': 'Anzahl Plätze',
      'fr': 'Nombre de places',
      'it': 'Numero di posti',
      'ru': 'Количество мест',
    },
    '5pu2qkcv': {
      'en': 'D',
      'de': 'D',
      'fr': 'D',
      'it': 'D',
      'ru': 'Д',
    },
    '0nvz8mn7': {
      'en': 'T',
      'de': 'T',
      'fr': 'T',
      'it': 'T',
      'ru': 'Т',
    },
    'bxwj5hk0': {
      'en': 'Unlock Quest',
      'de': 'Quest freischalten',
      'fr': 'Débloquer la quête',
      'it': 'Sblocca missione',
      'ru': 'Разблокировать квест',
    },
    'qe5d4p7j': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // Shop
  {
    'hqxb1ptb': {
      'en': 'Add to Cart',
      'de': 'in den Warenkorb legen',
      'fr': 'Ajouter au panier',
      'it': 'Aggiungi al carrello',
      'ru': 'добавить в корзину',
    },
    'sszkpybu': {
      'en': 'Shop',
      'de': 'Geschäft',
      'fr': 'Boutique',
      'it': 'Negozio',
      'ru': 'Магазин',
    },
    '9kmf32qj': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // SelectLanguage
  {
    'tfiylhqv': {
      'en': 'Select your preferred language',
      'de': 'Wählen Sie Ihre bevorzugte Sprache',
      'fr': 'Sélectionnez votre langue préférée',
      'it': 'Seleziona la lingua preferita',
      'ru': 'Выберите предпочитаемый язык',
    },
    '8827705q': {
      'en': 'Select Language',
      'de': 'Sprache auswählen',
      'fr': 'Sélectionner la langue',
      'it': 'Seleziona la lingua',
      'ru': 'Выберите язык',
    },
    'e5yq1wcz': {
      'en': 'Profile',
      'de': 'Profil',
      'fr': 'Profil',
      'it': 'Profilo',
      'ru': 'Профиль',
    },
  },
  // List13PropertyListview
  {
    'kx8ybjy5': {
      'en': 'Search listings...',
      'de': 'Einträge durchsuchen...',
      'fr': 'Rechercher des annonces...',
      'it': 'Cerca annunci...',
      'ru': 'Поиск объявлений...',
    },
    '34oyf4he': {
      'en': 'Homes',
      'de': 'Häuser',
      'fr': 'Maisons',
      'it': 'Case',
      'ru': 'Дома',
    },
    '6kpe9pjx': {
      'en': 'Beachfront',
      'de': 'Direkt am Strand',
      'fr': 'En bord de mer',
      'it': 'Fronte spiaggia',
      'ru': 'Пляжный',
    },
    '33zsbdmp': {
      'en': 'Maidstone, San Antonio, Tx.',
      'de': 'Maidstone, San Antonio, Texas.',
      'fr': 'Maidstone, San Antonio, Texas.',
      'it': 'Maidstone, San Antonio, Texas.',
      'ru': 'Мейдстоун, Сан-Антонио, Техас.',
    },
    'vcum2wk7': {
      'en': '\$210/night',
      'de': '210 \$/Nacht',
      'fr': '210\$/nuit',
      'it': '\$210/notte',
      'ru': '210\$/ночь',
    },
    '2qvvcf74': {
      'en': '32 miles away',
      'de': '32 Meilen entfernt',
      'fr': 'À 32 miles',
      'it': '32 miglia di distanza',
      'ru': '32 мили отсюда',
    },
    '0o3idd66': {
      'en': '4.25',
      'de': '4,25',
      'fr': '4.25',
      'it': '4.25',
      'ru': '4.25',
    },
    'xixgb136': {
      'en': 'Maidstone, San Antonio, Tx.',
      'de': 'Maidstone, San Antonio, Texas.',
      'fr': 'Maidstone, San Antonio, Texas.',
      'it': 'Maidstone, San Antonio, Texas.',
      'ru': 'Мейдстоун, Сан-Антонио, Техас.',
    },
    'y7xb7c3g': {
      'en': '\$210/night',
      'de': '210 \$/Nacht',
      'fr': '210\$/nuit',
      'it': '\$210/notte',
      'ru': '210\$/ночь',
    },
    'mk44i5ba': {
      'en': '32 miles away',
      'de': '32 Meilen entfernt',
      'fr': 'À 32 miles',
      'it': '32 miglia di distanza',
      'ru': '32 мили отсюда',
    },
    'wf8k6bsq': {
      'en': '4.25',
      'de': '4,25',
      'fr': '4.25',
      'it': '4.25',
      'ru': '4.25',
    },
    '5m86ft3a': {
      'en': 'Nature',
      'de': 'Natur',
      'fr': 'Nature',
      'it': 'Natura',
      'ru': 'Природа',
    },
    '8ml0cmch': {
      'en': 'Maidstone, San Antonio, Tx.',
      'de': 'Maidstone, San Antonio, Texas.',
      'fr': 'Maidstone, San Antonio, Texas.',
      'it': 'Maidstone, San Antonio, Texas.',
      'ru': 'Мейдстоун, Сан-Антонио, Техас.',
    },
    'd6tsmok1': {
      'en': '\$210/night',
      'de': '210 \$/Nacht',
      'fr': '210\$/nuit',
      'it': '\$210/notte',
      'ru': '210\$/ночь',
    },
    '7mhspj9d': {
      'en': '32 miles away',
      'de': '32 Meilen entfernt',
      'fr': 'À 32 miles',
      'it': '32 miglia di distanza',
      'ru': '32 мили отсюда',
    },
    'i6hr21um': {
      'en': '4.25',
      'de': '4,25',
      'fr': '4.25',
      'it': '4.25',
      'ru': '4.25',
    },
    'q2zzawsr': {
      'en': 'Maidstone, San Antonio, Tx.',
      'de': 'Maidstone, San Antonio, Texas.',
      'fr': 'Maidstone, San Antonio, Texas.',
      'it': 'Maidstone, San Antonio, Texas.',
      'ru': 'Мейдстоун, Сан-Антонио, Техас.',
    },
    'wmmjps17': {
      'en': '\$210/night',
      'de': '210 \$/Nacht',
      'fr': '210\$/nuit',
      'it': '\$210/notte',
      'ru': '210\$/ночь',
    },
    'i2yk7h9i': {
      'en': '32 miles away',
      'de': '32 Meilen entfernt',
      'fr': 'À 32 miles',
      'it': '32 miglia di distanza',
      'ru': '32 мили отсюда',
    },
    'zl6dlf9w': {
      'en': '4.25',
      'de': '4,25',
      'fr': '4.25',
      'it': '4.25',
      'ru': '4.25',
    },
    'krhkqg6j': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // Splash
  {
    'e2rx2au3': {
      'en': 'ATT',
      'de': 'ATT',
      'fr': 'ATT',
      'it': 'ATT',
      'ru': 'АТТ',
    },
    '974ba5c7': {
      'en': 'Active Travel Tours',
      'de': 'Aktivreisen',
      'fr': 'Circuits de voyage actifs',
      'it': 'Tour di viaggio attivi',
      'ru': 'Активные туры',
    },
  },
  // NearbyLocation
  {
    'gah1h6s6': {
      'en': 'Nearby Locations',
      'de': 'Stationen in der Nähe',
      'fr': 'Emplacements à proximité',
      'it': 'Località vicine',
      'ru': 'Рядом с местами',
    },
    'iwgm2km4': {
      'en': 'Nearby Location',
      'de': 'Standort in der Nähe',
      'fr': 'Emplacement à proximité',
      'it': 'Posizione nelle vicinanze',
      'ru': 'Рядом с местом',
    },
    'wtornhcv': {
      'en': 'Description',
      'de': 'Beschreibung',
      'fr': 'Description',
      'it': 'Descrizione',
      'ru': 'Описание',
    },
    'w93ckcgs': {
      'en': 'Address',
      'de': 'Adresse',
      'fr': 'Adresse',
      'it': 'Indirizzo',
      'ru': 'Адрес',
    },
    '83pnwnqp': {
      'en': 'Website',
      'de': 'Webseite',
      'fr': 'Site web',
      'it': 'Sito web',
      'ru': 'Веб-сайт',
    },
    'misglde9': {
      'en': 'Maidstone, San Antonio, Tx.',
      'de': 'Maidstone, San Antonio, Texas.',
      'fr': 'Maidstone, San Antonio, Texas.',
      'it': 'Maidstone, San Antonio, Texas.',
      'ru': 'Мейдстоун, Сан-Антонио, Техас.',
    },
    'v5lm66y6': {
      'en': '\$210/night',
      'de': '210 \$/Nacht',
      'fr': '210\$/nuit',
      'it': '\$210/notte',
      'ru': '210\$/ночь',
    },
    'u38z2lgm': {
      'en': '32 miles away',
      'de': '32 Meilen entfernt',
      'fr': 'À 32 miles',
      'it': '32 miglia di distanza',
      'ru': '32 мили отсюда',
    },
    'eqnojff3': {
      'en': '4.25',
      'de': '4,25',
      'fr': '4.25',
      'it': '4.25',
      'ru': '4.25',
    },
    'nbtxmes7': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // Purchases
  {
    'ko9y6gmt': {
      'en': 'Start Game',
      'de': 'Spiel starten',
      'fr': 'Commencer le jeu',
      'it': 'Inizia il gioco',
      'ru': 'Начать игру',
    },
    'awqz0kgm': {
      'en': 'Purchases',
      'de': 'Käufe',
      'fr': 'Achats',
      'it': 'Acquisti',
      'ru': 'Покупки',
    },
    '4l83mcnk': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // List13PropertyListview1
  {
    'pw2dyts1': {
      'en': 'Homes',
      'de': 'Häuser',
      'fr': 'Maisons',
      'it': 'Case',
      'ru': 'Дома',
    },
    '4jbmoheg': {
      'en': 'Maidstone, San Antonio, Tx.',
      'de': 'Maidstone, San Antonio, Texas.',
      'fr': 'Maidstone, San Antonio, Texas.',
      'it': 'Maidstone, San Antonio, Texas.',
      'ru': 'Мейдстоун, Сан-Антонио, Техас.',
    },
    's3zy141v': {
      'en': '\$210/night',
      'de': '210 \$/Nacht',
      'fr': '210\$/nuit',
      'it': '\$210/notte',
      'ru': '210\$/ночь',
    },
    'zuu21qst': {
      'en': '32 miles away',
      'de': '32 Meilen entfernt',
      'fr': 'À 32 miles',
      'it': '32 miglia di distanza',
      'ru': '32 мили отсюда',
    },
    'd4wjc8ql': {
      'en': '4.25',
      'de': '4,25',
      'fr': '4.25',
      'it': '4.25',
      'ru': '4.25',
    },
    'pdikughk': {
      'en': 'Maidstone, San Antonio, Tx.',
      'de': 'Maidstone, San Antonio, Texas.',
      'fr': 'Maidstone, San Antonio, Texas.',
      'it': 'Maidstone, San Antonio, Texas.',
      'ru': 'Мейдстоун, Сан-Антонио, Техас.',
    },
    'n247n2f3': {
      'en': '\$210/night',
      'de': '210 \$/Nacht',
      'fr': '210\$/nuit',
      'it': '\$210/notte',
      'ru': '210\$/ночь',
    },
    '69kgjbd5': {
      'en': '32 miles away',
      'de': '32 Meilen entfernt',
      'fr': 'À 32 miles',
      'it': '32 miglia di distanza',
      'ru': '32 мили отсюда',
    },
    'xgyxvfbi': {
      'en': '4.25',
      'de': '4,25',
      'fr': '4.25',
      'it': '4.25',
      'ru': '4.25',
    },
    'nspy07lh': {
      'en': 'Beachfront',
      'de': 'Direkt am Strand',
      'fr': 'En bord de mer',
      'it': 'Fronte spiaggia',
      'ru': 'Пляжный',
    },
    'oxr7s3xd': {
      'en': 'Maidstone, San Antonio, Tx.',
      'de': 'Maidstone, San Antonio, Texas.',
      'fr': 'Maidstone, San Antonio, Texas.',
      'it': 'Maidstone, San Antonio, Texas.',
      'ru': 'Мейдстоун, Сан-Антонио, Техас.',
    },
    'm2j89oe2': {
      'en': '\$210/night',
      'de': '210 \$/Nacht',
      'fr': '210\$/nuit',
      'it': '\$210/notte',
      'ru': '210\$/ночь',
    },
    '9foiswbf': {
      'en': '32 miles away',
      'de': '32 Meilen entfernt',
      'fr': 'À 32 miles',
      'it': '32 miglia di distanza',
      'ru': '32 мили отсюда',
    },
    'wizba0wi': {
      'en': '4.25',
      'de': '4,25',
      'fr': '4.25',
      'it': '4.25',
      'ru': '4.25',
    },
    'fy2cmrd3': {
      'en': 'Maidstone, San Antonio, Tx.',
      'de': 'Maidstone, San Antonio, Texas.',
      'fr': 'Maidstone, San Antonio, Texas.',
      'it': 'Maidstone, San Antonio, Texas.',
      'ru': 'Мейдстоун, Сан-Антонио, Техас.',
    },
    'mw03uokt': {
      'en': '\$210/night',
      'de': '210 \$/Nacht',
      'fr': '210\$/nuit',
      'it': '\$210/notte',
      'ru': '210\$/ночь',
    },
    '9m2pd6y3': {
      'en': '32 miles away',
      'de': '32 Meilen entfernt',
      'fr': 'À 32 miles',
      'it': '32 miglia di distanza',
      'ru': '32 мили отсюда',
    },
    'y7q5g71c': {
      'en': '4.25',
      'de': '4,25',
      'fr': '4.25',
      'it': '4.25',
      'ru': '4.25',
    },
    '89iwg5fq': {
      'en': 'Nature',
      'de': 'Natur',
      'fr': 'Nature',
      'it': 'Natura',
      'ru': 'Природа',
    },
    '7nmmprgp': {
      'en': 'Maidstone, San Antonio, Tx.',
      'de': 'Maidstone, San Antonio, Texas.',
      'fr': 'Maidstone, San Antonio, Texas.',
      'it': 'Maidstone, San Antonio, Texas.',
      'ru': 'Мейдстоун, Сан-Антонио, Техас.',
    },
    'kb6szo74': {
      'en': '\$210/night',
      'de': '210 \$/Nacht',
      'fr': '210\$/nuit',
      'it': '\$210/notte',
      'ru': '210\$/ночь',
    },
    'p29lbjgf': {
      'en': '32 miles away',
      'de': '32 Meilen entfernt',
      'fr': 'À 32 miles',
      'it': '32 miglia di distanza',
      'ru': '32 мили отсюда',
    },
    'fvjbk9yb': {
      'en': '4.25',
      'de': '4,25',
      'fr': '4.25',
      'it': '4.25',
      'ru': '4.25',
    },
    '16teo4y8': {
      'en': 'Maidstone, San Antonio, Tx.',
      'de': 'Maidstone, San Antonio, Texas.',
      'fr': 'Maidstone, San Antonio, Texas.',
      'it': 'Maidstone, San Antonio, Texas.',
      'ru': 'Мейдстоун, Сан-Антонио, Техас.',
    },
    '0j82j3it': {
      'en': '\$210/night',
      'de': '210 \$/Nacht',
      'fr': '210\$/nuit',
      'it': '\$210/notte',
      'ru': '210\$/ночь',
    },
    'cm25ieph': {
      'en': '32 miles away',
      'de': '32 Meilen entfernt',
      'fr': 'À 32 miles',
      'it': '32 miglia di distanza',
      'ru': '32 мили отсюда',
    },
    'va1eyvai': {
      'en': '4.25',
      'de': '4,25',
      'fr': '4.25',
      'it': '4.25',
      'ru': '4.25',
    },
    'rjz9dylr': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // DirectionsMap
  {
    'd912mna8': {
      'en': 'Directions Map',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    'txt3r8l2': {
      'en': 'Next Location',
      'de': 'Nächster Standort',
      'fr': 'Prochain emplacement',
      'it': 'Posizione successiva',
      'ru': 'Следующее местоположение',
    },
    'p3g8n11q': {
      'en': 'Launch Directions Map',
      'de': 'Wegbeschreibungskarte starten',
      'fr': 'Carte des directions de lancement',
      'it': 'Mappa delle direzioni di lancio',
      'ru': 'Карта направлений запуска',
    },
    '0mwbfg45': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
  },
  // CustomNav
  {
    'zseuwhtt': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
    'oh3n8fvd': {
      'en': 'Profile',
      'de': 'Profil',
      'fr': 'Profil',
      'it': 'Profilo',
      'ru': 'Профиль',
    },
    'oqs9e60n': {
      'en': 'Store',
      'de': 'Speichern',
      'fr': 'Magasin',
      'it': 'Negozio',
      'ru': 'Магазин',
    },
  },
  // StartingPoint
  {
    '0ap0bb1w': {
      'en': 'S',
      'de': 'S',
      'fr': 'S',
      'it': 'S',
      'ru': 'С',
    },
    '3orrsp0c': {
      'en': 'Starting Point',
      'de': 'Ausgangspunkt',
      'fr': 'Point de départ',
      'it': 'Punto di partenza',
      'ru': 'Начальная точка',
    },
  },
  // NumberofPlaces
  {
    'doxequ4u': {
      'en': '12',
      'de': '12',
      'fr': '12',
      'it': '12',
      'ru': '12',
    },
    'u6w2eegg': {
      'en': 'Number of Places',
      'de': 'Anzahl Plätze',
      'fr': 'Nombre de places',
      'it': 'Numero di posti',
      'ru': 'Количество мест',
    },
  },
  // EndingPoint
  {
    '8nhbn2ds': {
      'en': 'E',
      'de': 'E',
      'fr': 'E',
      'it': 'E',
      'ru': 'Э',
    },
    '9x7sqvt3': {
      'en': 'Ending Point',
      'de': 'Ende der Tour',
      'fr': 'Point final',
      'it': 'Punto di arrivo',
      'ru': 'Конечная точка',
    },
  },
  // PicturesSection
  {
    '73biuah4': {
      'en': 'Pictures',
      'de': 'Bilder',
      'fr': 'Photos',
      'it': 'Immagini',
      'ru': 'Фотографии',
    },
  },
  // TotalDistance
  {
    'ksgywas4': {
      'en': 'D',
      'de': 'D',
      'fr': 'D',
      'it': 'D',
      'ru': 'Д',
    },
    'wg3ffijn': {
      'en': 'Total Distance: 3.9 kms',
      'de': 'Gesamtstrecke: 3,9 km',
      'fr': 'Distance totale : 3,9 km',
      'it': 'Distanza totale: 3,9 km',
      'ru': 'Общая дистанция: 3,9 км.',
    },
  },
  // AverageDuration
  {
    'jhz4n6qk': {
      'en': 'T',
      'de': 'T',
      'fr': 'T',
      'it': 'T',
      'ru': 'Т',
    },
    'hktyibds': {
      'en': 'Average Time: 1 hr 30 mins - 2 hours',
      'de': 'Durchschnittliche Dauer: 1 Std. 30 Min. - 2 Std.',
      'fr': 'Durée moyenne : 1 h 30 - 2 heures',
      'it': 'Tempo medio: 1 ora e 30 minuti - 2 ore',
      'ru': 'Среднее время: 1 час 30 минут - 2 часа',
    },
  },
  // AddToCart
  {
    'vzs6erex': {
      'en': 'Unlock Game',
      'de': 'Spiel freischalten',
      'fr': 'Débloquer le jeu',
      'it': 'Sblocca il gioco',
      'ru': 'Разблокировать игру',
    },
  },
  // NearbyLocationCmp
  {
    'eb3qcibf': {
      'en': 'N',
      'de': 'N',
      'fr': 'N',
      'it': 'N',
      'ru': 'Н',
    },
    'k4y5piwd': {
      'en': 'Nearby Location',
      'de': 'Standort in der Nähe',
      'fr': 'Emplacement à proximité',
      'it': 'Posizione nelle vicinanze',
      'ru': 'Рядом с местом',
    },
  },
  // Hintcmp
  {
    'l1iibkvp': {
      'en': 'Hint',
      'de': 'Hinweis',
      'fr': 'Indice',
      'it': 'Suggerimento',
      'ru': 'Намекать',
    },
  },
  // RevealAnswer
  {
    'fck337g4': {
      'en': 'Reveal Answer',
      'de': 'Antwort anzeigen',
      'fr': 'Révéler la réponse',
      'it': 'Rivela la risposta',
      'ru': 'Раскрыть ответ',
    },
  },
  // EnglishLanguage
  {
    '8q9s6itm': {
      'en': 'English',
      'de': 'Englisch',
      'fr': 'Anglais',
      'it': 'Inglese',
      'ru': 'Английский',
    },
  },
  // ItalianLanguage
  {
    '2d8me2gs': {
      'en': 'Italian',
      'de': 'Italienisch',
      'fr': 'italien',
      'it': 'Italiano',
      'ru': 'итальянский',
    },
  },
  // FrenchLanguage
  {
    'ftqefl7b': {
      'en': 'French',
      'de': 'Französisch',
      'fr': 'Français',
      'it': 'francese',
      'ru': 'Французский',
    },
  },
  // GermanLanguage
  {
    'livxc3tn': {
      'en': 'German',
      'de': 'Deutsch',
      'fr': 'Allemand',
      'it': 'tedesco',
      'ru': 'немецкий',
    },
  },
  // RussianLanguage
  {
    '89pqu4tb': {
      'en': 'Russian',
      'de': 'Russisch',
      'fr': 'russe',
      'it': 'russo',
      'ru': 'Русский',
    },
  },
  // DrawerMenu
  {
    'i2n8vreh': {
      'en': 'Menu',
      'de': 'Speisekarte',
      'fr': 'Menu',
      'it': 'Menu',
      'ru': 'Меню',
    },
    'is694fi1': {
      'en': 'Profile',
      'de': 'Profil',
      'fr': 'Profil',
      'it': 'Profilo',
      'ru': 'Профиль',
    },
    '1afntoeu': {
      'en': 'Edit Profile',
      'de': 'Profil bearbeiten',
      'fr': 'Modifier le profil',
      'it': 'Modifica profilo',
      'ru': 'Редактировать профиль',
    },
    'quk2guob': {
      'en': 'Select Language',
      'de': 'Sprache auswählen',
      'fr': 'Sélectionner la langue',
      'it': 'Seleziona la lingua',
      'ru': 'Выберите язык',
    },
    '22tsgb6f': {
      'en': 'My Purchases',
      'de': 'Meine Einkäufe',
      'fr': 'Mes achats',
      'it': 'I miei acquisti',
      'ru': 'Мои покупки',
    },
  },
  // CustomNavHome
  {
    'tngcwzj4': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
    '8om729bh': {
      'en': 'Profile',
      'de': 'Profil',
      'fr': 'Profil',
      'it': 'Profilo',
      'ru': 'Профиль',
    },
    'l2pex22z': {
      'en': 'Store',
      'de': 'Speichern',
      'fr': 'Magasin',
      'it': 'Negozio',
      'ru': 'Магазин',
    },
  },
  // CustomNavProfile
  {
    'sho9g08s': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
    '1g6mh5nb': {
      'en': 'Profile',
      'de': 'Profil',
      'fr': 'Profil',
      'it': 'Profilo',
      'ru': 'Профиль',
    },
    'lq8bht3k': {
      'en': 'Store',
      'de': 'Speichern',
      'fr': 'Magasin',
      'it': 'Negozio',
      'ru': 'Магазин',
    },
  },
  // CustomNavStore
  {
    'kucalbjx': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'it': 'Casa',
      'ru': 'Дом',
    },
    '0w87kimq': {
      'en': 'Profile',
      'de': 'Profil',
      'fr': 'Profil',
      'it': 'Profilo',
      'ru': 'Профиль',
    },
    'jnwwa9wn': {
      'en': 'Store',
      'de': 'Speichern',
      'fr': 'Magasin',
      'it': 'Negozio',
      'ru': 'Магазин',
    },
  },
  // UnlockQuest
  {
    'w6z3yrjh': {
      'en': 'Unlock Quest',
      'de': 'Quest freischalten',
      'fr': 'Débloquer la quête',
      'it': 'Sblocca missione',
      'ru': 'Разблокировать квест',
    },
  },
  // QuestList
  {
    'll0d9cfd': {
      'en': 'Explore Quest',
      'de': 'Quest erkunden',
      'fr': 'Explorer la quête',
      'it': 'Esplora la missione',
      'ru': 'Исследуйте квест',
    },
  },
  // Miscellaneous
  {
    '83bvi5sf': {
      'en': '',
      'de':
          'Um ein Bild oder Video aufzunehmen, benötigt diese App die Berechtigung für den Zugriff auf die Kamera.',
      'fr':
          'Pour prendre une photo ou une vidéo, cette application nécessite une autorisation d\'accès à l\'appareil photo.',
      'it':
          'Per poter scattare una foto o registrare un video, questa app necessita dell\'autorizzazione di accesso alla fotocamera.',
      'ru':
          'Чтобы сделать снимок или снять видео, этому приложению требуется разрешение на доступ к камере.',
    },
    '5etof2uz': {
      'en': '',
      'de':
          'Zum Hochladen von Daten benötigt diese App eine Berechtigung zum Zugriff auf die Fotobibliothek.',
      'fr':
          'Afin de télécharger des données, cette application nécessite une autorisation d\'accès à la photothèque.',
      'it':
          'Per poter caricare i dati, questa app necessita dell\'autorizzazione ad accedere alla libreria foto.',
      'ru':
          'Для загрузки данных этому приложению требуется разрешение на доступ к библиотеке фотографий.',
    },
    'tr9b62g5': {
      'en': 'Provide Permission for Geolocation',
      'de': 'Erteilen Sie die Erlaubnis zur Geolokalisierung',
      'fr': 'Autoriser la géolocalisation',
      'it': 'Fornire l\'autorizzazione per la geolocalizzazione',
      'ru': 'Предоставить разрешение на геолокацию',
    },
    'lu7luj8i': {
      'en': 'Provide Permission for Microphone',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    'jil13j0u': {
      'en': 'Incorrect Login Credentials. ',
      'de': 'Falsche Anmeldeinformationen.',
      'fr': 'Identifiants de connexion incorrects.',
      'it': 'Credenziali di accesso errate.',
      'ru': 'Неверные учетные данные для входа.',
    },
    'hola2zle': {
      'en': 'Password reset email sent.',
      'de': 'E-Mail zum Zurücksetzen des Passworts gesendet.',
      'fr': 'E-mail de réinitialisation du mot de passe envoyé.',
      'it': 'Inviata email per la reimpostazione della password.',
      'ru': 'Письмо для сброса пароля отправлено.',
    },
    '7n47k5jp': {
      'en': 'Email required!',
      'de': 'E-Mail erforderlich!',
      'fr': 'Email requis!',
      'it': 'E-mail obbligatoria!',
      'ru': 'Требуется адрес электронной почты!',
    },
    '4bcsr85m': {
      'en': 'Phone Number required',
      'de': 'Telefonnummer erforderlich',
      'fr': 'Numéro de téléphone requis',
      'it': 'Numero di telefono obbligatorio',
      'ru': 'Требуется номер телефона',
    },
    'dx2xpt9k': {
      'en': 'Passwords do not match',
      'de': 'Passwörter stimmen nicht überein',
      'fr': 'Les mots de passe ne correspondent pas',
      'it': 'Le password non corrispondono',
      'ru': 'Пароли не совпадают',
    },
    'lhp6tgb8': {
      'en': 'Enter SMS verification code',
      'de': 'Geben Sie den SMS-Bestätigungscode ein',
      'fr': 'Entrez le code de vérification par SMS',
      'it': 'Inserisci il codice di verifica SMS',
      'ru': 'Введите код подтверждения SMS',
    },
    'jdngfalg': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    't1sulpiz': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    '4qewb1gj': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    'i50f3rgk': {
      'en': 'Email already in use by another user',
      'de': 'E-Mail wird bereits von einem anderen Benutzer verwendet',
      'fr': 'Email déjà utilisé par un autre utilisateur',
      'it': 'Email già utilizzata da un altro utente',
      'ru': 'Электронная почта уже используется другим пользователем',
    },
    '2znlfy62': {
      'en': 'Incorrect Login Credentials. ',
      'de': 'Falsche Anmeldeinformationen.',
      'fr': 'Identifiants de connexion incorrects.',
      'it': 'Credenziali di accesso errate.',
      'ru': 'Неверные учетные данные для входа.',
    },
    'ic351le0': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    'nr8puaof': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    '4gxvfday': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    '0vh5pago': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    '7bvt6ho4': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    'i0435aon': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    '8isfgixg': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    'itz2k4gc': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    '5mtupmox': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    'biawvrrg': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    'pwqbcjmp': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    'nxzxlqu9': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    '172oxf8z': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
    'vy3s3d6y': {
      'en': '',
      'de': '',
      'fr': '',
      'it': '',
      'ru': '',
    },
  },
].reduce((a, b) => a..addAll(b));
