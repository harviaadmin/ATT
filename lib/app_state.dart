import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _locnum = prefs.getInt('ff_locnum') ?? _locnum;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  LatLng? _startlocation;
  LatLng? get startlocation => _startlocation;
  set startlocation(LatLng? value) {
    _startlocation = value;
  }

  LatLng? _endlocation;
  LatLng? get endlocation => _endlocation;
  set endlocation(LatLng? value) {
    _endlocation = value;
  }

  double _distance = 0.0;
  double get distance => _distance;
  set distance(double value) {
    _distance = value;
  }

  String _address = '';
  String get address => _address;
  set address(String value) {
    _address = value;
  }

  String _latitude = '';
  String get latitude => _latitude;
  set latitude(String value) {
    _latitude = value;
  }

  String _longitude = '';
  String get longitude => _longitude;
  set longitude(String value) {
    _longitude = value;
  }

  Color _startgamebtnbg = Colors.transparent;
  Color get startgamebtnbg => _startgamebtnbg;
  set startgamebtnbg(Color value) {
    _startgamebtnbg = value;
  }

  String _checklocationtext = '';
  String get checklocationtext => _checklocationtext;
  set checklocationtext(String value) {
    _checklocationtext = value;
  }

  String _question = '';
  String get question => _question;
  set question(String value) {
    _question = value;
  }

  String _answer = '';
  String get answer => _answer;
  set answer(String value) {
    _answer = value;
  }

  String _hint = '';
  String get hint => _hint;
  set hint(String value) {
    _hint = value;
  }

  int _locnum = 0;
  int get locnum => _locnum;
  set locnum(int value) {
    _locnum = value;
    prefs.setInt('ff_locnum', value);
  }

  String _locname = '';
  String get locname => _locname;
  set locname(String value) {
    _locname = value;
  }

  String _locdesc = '';
  String get locdesc => _locdesc;
  set locdesc(String value) {
    _locdesc = value;
  }

  String _locaddress = '';
  String get locaddress => _locaddress;
  set locaddress(String value) {
    _locaddress = value;
  }

  String _locimage = '';
  String get locimage => _locimage;
  set locimage(String value) {
    _locimage = value;
  }

  String _currentquestid = '';
  String get currentquestid => _currentquestid;
  set currentquestid(String value) {
    _currentquestid = value;
  }

  String _nearlocname = '';
  String get nearlocname => _nearlocname;
  set nearlocname(String value) {
    _nearlocname = value;
  }

  String _nearlocdesc = '';
  String get nearlocdesc => _nearlocdesc;
  set nearlocdesc(String value) {
    _nearlocdesc = value;
  }

  String _nearlocimage = '';
  String get nearlocimage => _nearlocimage;
  set nearlocimage(String value) {
    _nearlocimage = value;
  }

  String _nearlocaddress = '';
  String get nearlocaddress => _nearlocaddress;
  set nearlocaddress(String value) {
    _nearlocaddress = value;
  }

  String _nearlocwebsite = '';
  String get nearlocwebsite => _nearlocwebsite;
  set nearlocwebsite(String value) {
    _nearlocwebsite = value;
  }

  String _dirname = '';
  String get dirname => _dirname;
  set dirname(String value) {
    _dirname = value;
  }

  String _dirfirstimage = '';
  String get dirfirstimage => _dirfirstimage;
  set dirfirstimage(String value) {
    _dirfirstimage = value;
  }

  String _dirfirststep = '';
  String get dirfirststep => _dirfirststep;
  set dirfirststep(String value) {
    _dirfirststep = value;
  }

  String _dirfirstinfo = '';
  String get dirfirstinfo => _dirfirstinfo;
  set dirfirstinfo(String value) {
    _dirfirstinfo = value;
  }

  String _dirsecondimage = '';
  String get dirsecondimage => _dirsecondimage;
  set dirsecondimage(String value) {
    _dirsecondimage = value;
  }

  String _dirsecondstep = '';
  String get dirsecondstep => _dirsecondstep;
  set dirsecondstep(String value) {
    _dirsecondstep = value;
  }

  String _dirsecondinfo = '';
  String get dirsecondinfo => _dirsecondinfo;
  set dirsecondinfo(String value) {
    _dirsecondinfo = value;
  }

  LatLng? _fakegps = const LatLng(46.9482442, 7.443944699999999);
  LatLng? get fakegps => _fakegps;
  set fakegps(LatLng? value) {
    _fakegps = value;
  }

  String _hintimage = '';
  String get hintimage => _hintimage;
  set hintimage(String value) {
    _hintimage = value;
  }

  String _answer1text = '';
  String get answer1text => _answer1text;
  set answer1text(String value) {
    _answer1text = value;
  }

  String _answer1image = '';
  String get answer1image => _answer1image;
  set answer1image(String value) {
    _answer1image = value;
  }

  String _answer2text = '';
  String get answer2text => _answer2text;
  set answer2text(String value) {
    _answer2text = value;
  }

  String _answer2image = '';
  String get answer2image => _answer2image;
  set answer2image(String value) {
    _answer2image = value;
  }

  String _answer3text = '';
  String get answer3text => _answer3text;
  set answer3text(String value) {
    _answer3text = value;
  }

  String _answer3image = '';
  String get answer3image => _answer3image;
  set answer3image(String value) {
    _answer3image = value;
  }

  String _answer4text = '';
  String get answer4text => _answer4text;
  set answer4text(String value) {
    _answer4text = value;
  }

  String _answer4image = '';
  String get answer4image => _answer4image;
  set answer4image(String value) {
    _answer4image = value;
  }

  String _locationid = '';
  String get locationid => _locationid;
  set locationid(String value) {
    _locationid = value;
  }

  String _questiontype = '';
  String get questiontype => _questiontype;
  set questiontype(String value) {
    _questiontype = value;
  }

  List<String> _answeroptions = [];
  List<String> get answeroptions => _answeroptions;
  set answeroptions(List<String> value) {
    _answeroptions = value;
  }

  void addToAnsweroptions(String value) {
    answeroptions.add(value);
  }

  void removeFromAnsweroptions(String value) {
    answeroptions.remove(value);
  }

  void removeAtIndexFromAnsweroptions(int index) {
    answeroptions.removeAt(index);
  }

  void updateAnsweroptionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    answeroptions[index] = updateFn(_answeroptions[index]);
  }

  void insertAtIndexInAnsweroptions(int index, String value) {
    answeroptions.insert(index, value);
  }

  String _questionimage = '';
  String get questionimage => _questionimage;
  set questionimage(String value) {
    _questionimage = value;
  }

  String _purchasetext = '';
  String get purchasetext => _purchasetext;
  set purchasetext(String value) {
    _purchasetext = value;
  }

  String _currencylat = '';
  String get currencylat => _currencylat;
  set currencylat(String value) {
    _currencylat = value;
  }

  String _currencylong = '';
  String get currencylong => _currencylong;
  set currencylong(String value) {
    _currencylong = value;
  }

  String _currencycode = '';
  String get currencycode => _currencycode;
  set currencycode(String value) {
    _currencycode = value;
  }

  String _currencysymbol = '';
  String get currencysymbol => _currencysymbol;
  set currencysymbol(String value) {
    _currencysymbol = value;
  }

  double _localquestprice = 0.0;
  double get localquestprice => _localquestprice;
  set localquestprice(double value) {
    _localquestprice = value;
  }

  double _exchangerate = 0.0;
  double get exchangerate => _exchangerate;
  set exchangerate(double value) {
    _exchangerate = value;
  }

  String _dirchoice = '';
  String get dirchoice => _dirchoice;
  set dirchoice(String value) {
    _dirchoice = value;
  }

  List<int> _directionslist = [];
  List<int> get directionslist => _directionslist;
  set directionslist(List<int> value) {
    _directionslist = value;
  }

  void addToDirectionslist(int value) {
    directionslist.add(value);
  }

  void removeFromDirectionslist(int value) {
    directionslist.remove(value);
  }

  void removeAtIndexFromDirectionslist(int index) {
    directionslist.removeAt(index);
  }

  void updateDirectionslistAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    directionslist[index] = updateFn(_directionslist[index]);
  }

  void insertAtIndexInDirectionslist(int index, int value) {
    directionslist.insert(index, value);
  }

  String _ttslanguagecode = '';
  String get ttslanguagecode => _ttslanguagecode;
  set ttslanguagecode(String value) {
    _ttslanguagecode = value;
  }

  String _languagecode = '';
  String get languagecode => _languagecode;
  set languagecode(String value) {
    _languagecode = value;
  }

  String _checkpass = '';
  String get checkpass => _checkpass;
  set checkpass(String value) {
    _checkpass = value;
  }

  String _checkpassde = '';
  String get checkpassde => _checkpassde;
  set checkpassde(String value) {
    _checkpassde = value;
  }

  String _checkpassit = '';
  String get checkpassit => _checkpassit;
  set checkpassit(String value) {
    _checkpassit = value;
  }

  String _checkpassfr = '';
  String get checkpassfr => _checkpassfr;
  set checkpassfr(String value) {
    _checkpassfr = value;
  }

  String _checkpassru = '';
  String get checkpassru => _checkpassru;
  set checkpassru(String value) {
    _checkpassru = value;
  }

  String _checkfail = '';
  String get checkfail => _checkfail;
  set checkfail(String value) {
    _checkfail = value;
  }

  String _checkfailde = '';
  String get checkfailde => _checkfailde;
  set checkfailde(String value) {
    _checkfailde = value;
  }

  String _checkfailit = '';
  String get checkfailit => _checkfailit;
  set checkfailit(String value) {
    _checkfailit = value;
  }

  String _checkfailfr = '';
  String get checkfailfr => _checkfailfr;
  set checkfailfr(String value) {
    _checkfailfr = value;
  }

  String _checkfailru = '';
  String get checkfailru => _checkfailru;
  set checkfailru(String value) {
    _checkfailru = value;
  }

  List<String> _answeroptionsde = [];
  List<String> get answeroptionsde => _answeroptionsde;
  set answeroptionsde(List<String> value) {
    _answeroptionsde = value;
  }

  void addToAnsweroptionsde(String value) {
    answeroptionsde.add(value);
  }

  void removeFromAnsweroptionsde(String value) {
    answeroptionsde.remove(value);
  }

  void removeAtIndexFromAnsweroptionsde(int index) {
    answeroptionsde.removeAt(index);
  }

  void updateAnsweroptionsdeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    answeroptionsde[index] = updateFn(_answeroptionsde[index]);
  }

  void insertAtIndexInAnsweroptionsde(int index, String value) {
    answeroptionsde.insert(index, value);
  }

  List<String> _answeroptionsit = [];
  List<String> get answeroptionsit => _answeroptionsit;
  set answeroptionsit(List<String> value) {
    _answeroptionsit = value;
  }

  void addToAnsweroptionsit(String value) {
    answeroptionsit.add(value);
  }

  void removeFromAnsweroptionsit(String value) {
    answeroptionsit.remove(value);
  }

  void removeAtIndexFromAnsweroptionsit(int index) {
    answeroptionsit.removeAt(index);
  }

  void updateAnsweroptionsitAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    answeroptionsit[index] = updateFn(_answeroptionsit[index]);
  }

  void insertAtIndexInAnsweroptionsit(int index, String value) {
    answeroptionsit.insert(index, value);
  }

  List<String> _answeroptionsfr = [];
  List<String> get answeroptionsfr => _answeroptionsfr;
  set answeroptionsfr(List<String> value) {
    _answeroptionsfr = value;
  }

  void addToAnsweroptionsfr(String value) {
    answeroptionsfr.add(value);
  }

  void removeFromAnsweroptionsfr(String value) {
    answeroptionsfr.remove(value);
  }

  void removeAtIndexFromAnsweroptionsfr(int index) {
    answeroptionsfr.removeAt(index);
  }

  void updateAnsweroptionsfrAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    answeroptionsfr[index] = updateFn(_answeroptionsfr[index]);
  }

  void insertAtIndexInAnsweroptionsfr(int index, String value) {
    answeroptionsfr.insert(index, value);
  }

  List<String> _answeroptionsru = [];
  List<String> get answeroptionsru => _answeroptionsru;
  set answeroptionsru(List<String> value) {
    _answeroptionsru = value;
  }

  void addToAnsweroptionsru(String value) {
    answeroptionsru.add(value);
  }

  void removeFromAnsweroptionsru(String value) {
    answeroptionsru.remove(value);
  }

  void removeAtIndexFromAnsweroptionsru(int index) {
    answeroptionsru.removeAt(index);
  }

  void updateAnsweroptionsruAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    answeroptionsru[index] = updateFn(_answeroptionsru[index]);
  }

  void insertAtIndexInAnsweroptionsru(int index, String value) {
    answeroptionsru.insert(index, value);
  }

  String _questmode = '';
  String get questmode => _questmode;
  set questmode(String value) {
    _questmode = value;
  }

  bool _isStopped = false;
  bool get isStopped => _isStopped;
  set isStopped(bool value) {
    _isStopped = value;
  }

  LatLng? _localstartgps = const LatLng(13.0843007, 80.2704622);
  LatLng? get localstartgps => _localstartgps;
  set localstartgps(LatLng? value) {
    _localstartgps = value;
  }

  LatLng? _localendgps = const LatLng(12.8371787, 79.7041698);
  LatLng? get localendgps => _localendgps;
  set localendgps(LatLng? value) {
    _localendgps = value;
  }

  String _routeDuration = '';
  String get routeDuration => _routeDuration;
  set routeDuration(String value) {
    _routeDuration = value;
  }

  String _routeDistance = '';
  String get routeDistance => _routeDistance;
  set routeDistance(String value) {
    _routeDistance = value;
  }

  String _gmapurl = '';
  String get gmapurl => _gmapurl;
  set gmapurl(String value) {
    _gmapurl = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
