class AppImages {
  static final AppImages instance = AppImages._internal();

  AppImages._internal();

  factory AppImages() {
    return instance;
  }

  // login part items ..................................

  String get logo => 'images/logo.png';

  String get goldTree => 'images/gold_tree.png';

  String get sendIcon => 'images/send_icon.svg';

  String get backIcon => 'images/icon_back.svg';

  String get pwdHideIcon => 'images/pwd_hide_icon.svg';

  String get menuIcon => 'images/menu_icon.svg';

  String get bellIcon => 'images/bell_icon.svg';

  String get whatsAppIcon => 'images/whatsapp.png';

  // bottom navigation bar items .......................

  String get homeIcon => 'images/home_icon.svg';

  String get chitsIcon => 'images/chits_icon.svg';

  String get autionIcon => 'images/auction_icon.svg';

  String get historyIcon => 'images/history_icon.svg';

  String get filledHomeIcon => 'images/filled_home_icon.svg';

  String get filledChitsIcon => 'images/filled_chits_icon.svg';

  String get filledAutionIcon => 'images/filled_auction_icon.svg';

  String get filledHistoryIcon => 'images/filled_history_icon.svg';

  // home part items ............................................

  String get homeBanner => 'images/home_banner.png';

  String get starIcon => 'images/star_icon.png';

  String get dropDownIcon => 'images/drop_down_icon.svg';

  String get chitFileIcon => 'images/chit_file.png';
}
