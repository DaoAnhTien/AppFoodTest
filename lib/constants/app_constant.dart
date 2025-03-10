const ANDROID_VERSION_APP = '1.0.2';
const ANDROID_VERSION_NUMBER = 3;
const IOS_VERSION_APP = '1.0.2';
const IOS_VERSION_NUMBER = 3;
const SECRET_KEY = 'dev';
const IAP_SECRET_KEY = 'cJg4NJMCcJg4NJMC';
const SMART_LOOK_API_KEY = 'dc6600fbfdd2086be103b821071b297417d5b2e7';

const LIGHT_THEME = 'light_theme';
const DARK_THEME = 'dark_theme';
const VELVET_THEME = 'velvet_theme';

const BASE_WIDTH = 430.0;
const MAX_WIDTH = 900.0;
const int DELAY_TIME = 1000;

const HT_TOKEN = 'HTT';

const IAP_ITEM_100 = 'com.mintty.marketplace.100';
const IAP_PRODUCT_LIST = [IAP_ITEM_100];

const DEFAULT_LANG = 'vi';

const LANG_ENGLISH = 'en';
const LANG_GERMAN = 'gm';
const LANG_KOREAN = 'kr';
const LANG_JAPANESE = 'jp';
const LANG_CHINESE = 'cn';
const LANG_SPANISH = 'sp';
const LANG_FRENCH = 'fr';
const LANG_RUSSIAN = 'ru';
const LANG_VIETNAMESE = 'vi';
const LANG_TURKISH = 'tu';

const List<String> LIST_LANGUAGE = [
  LANG_ENGLISH,
//  LANG_GERMAN,
//  LANG_KOREAN,
//  LANG_JAPANESE,
//  LANG_CHINESE,
//  LANG_SPANISH,
//  LANG_FRENCH,
//  LANG_RUSSIAN,
  LANG_VIETNAMESE,
//  LANG_TURKISH
];

const String BORDER_LEFT = 'left';
const String BORDER_RIGHT = 'right';

const String PERMISSION_GRANTED = 'granted';
const String PERMISSION_DENIED = 'denied';
const String PERMISSION_UNKNOWN = 'unknown';
const String REGISTER = 'REGISTER';
const String LOGIN = 'LOGIN';

const String TRUE = 'true';
const String FALSE = 'false';

const int RESEND_OTP = 60;

const double DEFAULT_ROYALTIES = 10.0;
const double MIN_ROYALTIES = 0.0;
const double MAX_ROYALTIES = 50.0;

const String AUTHENTICATE_PROCESSING = 'AUTHENTICATE_PROCESSING';
const String AUTHENTICATE_DONE = 'AUTHENTICATE_DONE';
const String AUTHENTICATE_LOCK = 'AUTHENTICATE_LOCK';

const String IDENTITY_CARD_FRONT = 'IDENTITY_CARD_FRONT';
const String IDENTITY_CARD_BACK = 'IDENTITY_CARD_BACK';
const String PASSPORT = 'PASSPORT';
const String PORTRAIT = 'PORTRAIT';
const String SIGNATURE = 'SIGNATURE';

const String TYPE_IDENTITY_CARD = 'identification';
const String TYPE_PASSPORT = 'passport';

const String API_ANDROID_KEY = 'AIzaSyCfFtIsKFfRT4133-3oBUTLGA7Jfb5zmb4';
const String API_IOS_KEY = 'AIzaSyCfFtIsKFfRT4133-3oBUTLGA7Jfb5zmb4';

const String GENDER_MALE = 'male';
const String GENDER_FEMALE = 'female';

const String KYC_STATUS_REQUEST = 'request';
const String KYC_STATUS_DONE = 'done';
const String KYC_STATUS_NONE = 'none';
const String CREATOR_STATUS_NONE = 'none';
const String CREATOR_STATUS_REQUEST = 'request';
const String CREATOR_STATUS_DONE = 'done';

const String STATUS_FEE_CHECKED = 'fee_checked';
const String STATUS_PRE_PAID = 'pre_paid';
const String STATUS_RETRYING = 'retrying';
const String STATUS_PENDING = 'pending';
const String STATUS_PROCESSING = 'processing';
const String STATUS_PREPARED = 'prepared';
const String STATUS_SUCCESS = 'success';
const String STATUS_DONE = 'done';
const String STATUS_CANCEL = 'cancel';
const String STATUS_USER_CONFIRMED = 'user_confirmed';
const String STATUS_REQUEST = 'request';
const String STATUS_NONE = 'none';
const String STATUS_FAILED = 'failed';
const String STATUS_OPEN = 'open';
const String STATUS_OPENING = 'opening';
const String STATUS_CONFIRMING = 'confirming';
const String STATUS_CANCELED = 'cancelled';
const String STATUS_ON_HOLD = 'on_hold';
const String STATUS_PRE_SUCCESS = 'pre_success';

const String TYPE_CREATE = 'create';
const String TYPE_BUY = 'buy';
const String TYPE_MINT = 'mint';
const String TYPE_WITHDRAW = 'withdraw';
const String TYPE_TRANSFER = 'transfer';

const String TYPE_IN = 'in';
const String TYPE_OUT = 'out';

const String WALLET_CODE_VND = 'VND';
const String WALLET_SHORT_CODE_VND = 'đ';
const String WALLET_CODE_USD = 'USD';
const String WALLET_CODE_TOKEN = 'HTT';

const int FRACTION_DIGIT_TOKEN = 6;

const String ACCOUNT_MODE_REAL = 'real';
const String ACCOUNT_MODE_VIRTUAL = 'virtual';

const String RATE_APP_IOS =
    'https://apps.apple.com/app/id1613902050?action=write-review';
const String RATE_APP_ANDROID =
    'https://play.google.com/store/apps/details?id=com.mintty.nft';
const String APP_STORE_ID = '1613902050';

const String DEFAULT_FCM_TOPIC = 'fcm_all';
const String NOTIFICATION_TYPE_USER_WITHDRAW = 'USER_WITHDRAW';
const String NOTIFICATION_TYPE_USER_KYC = 'USER_KYC';
const String NOTIFICATION_TYPE_USER_TRANSFER = 'USER_TRANSFER';

const String IS_MAINTAIN = 'is_maintain';
const String EXPECTED_TIME = 'expected_time';
const String CF_ANDROID_VERSION_APP = 'android_version_app';
const String CF_ANDROID_VERSION_NUMBER = 'android_version_number';
const String CF_ANDROID_FORCE_UPDATE = 'android_force_update';
const String CF_IOS_VERSION_APP = 'ios_version_app';
const String CF_IOS_VERSION_NUMBER = 'ios_version_number';
const String CF_IOS_FORCE_UPDATE = 'ios_force_update';
const String CF_MAINTAIN_DEFAULT = 'maintain-staging';
const String CF_MAINTAIN = 'maintain';
const String CF_VERSION = 'version';
const String CF_NOTIFICATIONS_DEFAULT = 'notifications-staging';
const String CF_NEW_NOTIFICATION = 'new_notification';
const String CF_BUY_HISTORIES = 'buy_histories';
const String CF_MINT_NFT_FEE = 'mint_nft_fee';
const String CF_MINT_COLLECTION_FEE = 'mint_collection_fee';
const String CF_CONFIRM_BID = 'confirm_bid';
const String CF_CONFIRM_BUY = 'confirm_buy';
const String CF_DONE_AUCTION = 'done_auction';
const String CF_CLOSE_AUCTION = 'close_auction';
const String CF_MINT_UNIQUE_ID = 'update_unique_id';
const String CF_KYC_STATUS = 'kycStatus';
const String CF_REQUEST_CREATOR = 'request_creator';
const String CF_KYC = 'kyc';
const String CF_CONFIRM_DEPOSIT = 'confirm_deposit';
const String CF_USER_CONFIRM_DEPOSIT = 'user_confirm_deposit';
const String CF_CANCEL_DEPOSIT = 'cancel_deposit';
const String CF_CONFIRM_WITHDRAW = 'confirm_withdraw';
const String CF_CANCEL_WITHDRAW = 'cancel_withdraw';
const String CF_UPDATE_WALLET = 'update_wallet';
const String CF_TYPE = 'type';
const String CF_DATA = 'data';
const String CF_LAST_UPDATE_TIME = 'lastUpdatedTime';

const String STATUS_TYPE_DEFAULT = 'default';
const String STATUS_TYPE_ADVANCE = 'advance';

const String CREATED_BY_SYSTEM = 'system';
const String CREATED_BY_USER = 'user';

const String TOPIC_ALL = 'fcm_all';

const String NOTIFICATION_KEY = 'notification_key';
const String NOTIFICATION_TITLE = 'title';
const String NOTIFICATION_BODY = 'body';
const String NOTIFICATION_ID = 'notification_id';
const String NOTIFICATION_OBJECT_ID = 'object_id';
const String NOTIFICATION_TYPE = 'type';
const String NOTIFICATION_SLUG = 'slug';

const String NOTIFICATION_TYPE_BLOG = 'article';
const String NOTIFICATION_TYPE_FORECAST = 'forecast_new';
const String NOTIFICATION_TYPE_DEFAULT = 'notification';

const String DEMAND_PROFIT_IN = 'in';
const String DEMAND_PROFIT_OUT = 'out';

const String TYPE_SELLING = 'sale';
const String TYPE_BID = 'auction';

const String STATUS_OFFER_STATUS_OPENING = 'opening';
const String STATUS_OFFER_CONFIRMING = 'confirming';
const String STATUS_OFFER_CANCELED = 'canceled';
const String STATUS_OFFER_DONE = 'done';

const String CREATOR_7_DAY = 'creator7dValuation';
const String CREATOR_30_DAY = 'creator30dValuation';
const String CREATOR_90_DAY = 'creator90dValuation';
const String COLLECTOR_7_DAY = 'collector7dValuation';
const String COLLECTOR_30_DAY = 'collector30dValuation';
const String COLLECTOR_90_DAY = 'collector90dValuation';

const String SORT_TRENDING_NFT = 'trending_nft';

const String SORT_UPDATED_OWNER_AT = 'updatedOwnerAt';
const String SORT_UPDATED_AT = 'updatedAt';
const String SORT_VIEW_COUNT = 'viewsCount';
const String SORT_LIKE_COUNT = 'likesCount';
const String SORT_TYPE_DESC = 'desc';
const String SORT_TYPE_ASC = 'asc';
const String ENABLE_NFT_LAUNCHPAD = '1';
const String DISABLE_NFT_LAUNCHPAD = '0';

const String SORT_BY_NEWEST = 'new_to_old';
const String SORT_BY_OLDEST = 'old_to_new';
const String SORT_BY_LOW_TO_HIGH = 'low_to_high';
const String SORT_BY_HIGH_TO_LOW = 'high_to_low';
const String SORT_BY_ON_SALE = 'just_posted_for_sale';
const String SORT_BY_PRICE = 'sortPrice';
const String SORT_BY_UPDATE_PRICE = 'updatedPriceAt';

const String PARAM_LOW_TO_HIGH = '&on_sale=true&sort_by=price&&sort_type=asc';
const String PARAM_HIGH_TO_LOW = '&on_sale=true&sort_by=price&&sort_type=desc';
const String PARAM_NEWEST = 'on_sale=true';

const String ALL = 'All';
const String ON_SALE = 'on_sale';

const String PARAM_LOW_TO_HIGH_COLLECTION = '&sort_by=price&&sort_type=asc';
const String PARAM_HIGH_TO_LOW_COLLECTION = 'sort_by=price&&sort_type=desc';

const String SORT_VOL_1D = 'vol1d';
const String SORT_VOL_2D = 'vol2d';
const String SORT_VOL_7D = 'vol7d';
const String SORT_VOL_14D = 'vol14d';
const String SORT_VOL_30D = 'vol30d';
const String SORT_VOL_60D = 'vol60d';
const String SORT_VOL_90D = 'vol90d';
const String SORT_CREATED_AT = 'createdAt';
const String WEEK_SCORE = 'weekScore';
const String MONTH_SCORE = 'monthScore';
const String QUARTER_SCORE = 'quarterScore';
const String COLLECTION_DEFAULT = 'default';
const String FORGOTPASS = 'FORGOTPASS';

const List<String> SHORT_NFT = [
  ALL,
  SORT_BY_LOW_TO_HIGH,
  SORT_BY_HIGH_TO_LOW,
  SORT_BY_ON_SALE,
  SORT_VIEW_COUNT,
  SORT_LIKE_COUNT,
  SORT_BY_NEWEST,
  SORT_BY_OLDEST
];

const List<String> FILTER_COLLECTION = [
  SORT_VOL_7D,
  SORT_VOL_30D,
  SORT_VOL_90D,
];

const String FILTER_BY_OWNER = 'owning';
const String FILTER_BY_SELLING = 'selling';
const String FILTER_BY_CREATOR = 'created';
const String FILTER_BY_LIST_LIKE = 'liked';
const String FILTER_ALL = 'all';
const String FILTER_MINTED = 'minted';
const String FILTER_NOT_MINTED = 'not_minted';
const String FILTER_ON_SALE = 'on_sale';
const String FILTER_NOT_ON_SALE = 'not_on_sale';
const String FILTER_MOST_VIEWED = 'most_viewed';
const String FILTER_MOST_FAVORITE = 'most_favorite';

const String CATEGORY_BID = 'bid';
const String CATEGORY_MINT_COLLECTION = 'mint_collection';
const String CATEGORY_MINT_NFT = 'mint';
const String CATEGORY_WITHDRAW_NFT = 'withdraw';
const String CATEGORY_WITHDRAW_NFT_HOLDING = 'withdraw_nft';
const String CATEGORY_WITHDRAW = 'withdraw';

const String CATEGORY_TRANSFER = 'transfer';
const String CATEGORY_LISTING = 'listing';
const String CATEGORY_LIKES = 'like';
const String CATEGORY_SALE = 'sale';
const String CATEGORY_PURCHASE = 'purchase';
const String CATEGORY_BIDS = 'bids';
const String CATEGORY_RECEIVED = 'received';

const List<String> FILTER_NFT = [
  FILTER_BY_OWNER,
  FILTER_BY_SELLING,
  FILTER_BY_CREATOR,
  FILTER_BY_LIST_LIKE
];

const List<String> FILTER_ACTIVITY = [
  ALL,
  CATEGORY_BIDS,
  CATEGORY_TRANSFER,
  CATEGORY_LISTING,
  CATEGORY_SALE,
  CATEGORY_PURCHASE,
  CATEGORY_LIKES,
  CATEGORY_MINT_NFT,
  CATEGORY_WITHDRAW_NFT,
  CATEGORY_RECEIVED
];
const List<String> FILTER_NFT_IN_LAUNCHPAD = [ALL, FILTER_BY_SELLING];
const List<String> FILTER_NFT_IN_COLLECTION = [
  ALL,
  SORT_BY_LOW_TO_HIGH,
  SORT_BY_HIGH_TO_LOW,
  SORT_BY_ON_SALE,
  SORT_VIEW_COUNT,
  SORT_LIKE_COUNT,
  SORT_BY_NEWEST,
  SORT_BY_OLDEST
];
const List<String> FILTER_NFT_MINT = [ALL, STATUS_PENDING, STATUS_SUCCESS];

const List<String> FILTER_MY_NFT = [
  FILTER_ALL,
  FILTER_MINTED,
  FILTER_NOT_MINTED,
  FILTER_ON_SALE,
  FILTER_NOT_ON_SALE,
  FILTER_MOST_VIEWED,
  FILTER_MOST_FAVORITE
];

// const List<String> FILTER_COLLECTION = [WEEK_SCORE, MONTH_SCORE, QUARTER_SCORE];

const List<String> LIST_REPORTS = [
  'Giả mạo người khác',
  'Tài khoản giả mạo',
  'Tên giả mạo',
  'Đăng nội dung không phù hợp',
  'Quấy rối hoặc bắt nạt',
  'Tôi muốn giúp đỡ',
  'Vấn đề khác',
];
const List<String> FILTER_VALUE = [ALL, ON_SALE];

const List<String> LIST_REPORTS_NFT = [
  'Nội dung khiêu dâm',
  'Nội dung bạo lực hoặc phản cảm',
  'Nội dung lăng mạ hoặc kích động thù hận',
  'Quấy rối hoặc bắt nạt',
  'Nội dung liên quan đến ngược đãi trẻ em',
  'Quảng bá chủ nghĩa khủng bố',
  "Nội dung liên quan đến tôn giáo chính trị",
  "Vi phạm bản quyền",
  'Vấn đề khác',
];
const List<int> LIST_SIMPLE = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

const List<String> LIST_CITY = [
  'An Giang',
  'Bà Rịa - Vũng Tàu',
  'Bắc Giang',
  'Bắc Kạn',
  'Bạc Liêu',
  'Bắc Ninh',
  'Bến Tre',
  'Bình Định',
  'Bình Dương',
  'Bình Phước',
  'Bình Thuận',
  'Cà Mau',
  'Cao Bằng',
  'Cần Thơ',
  'Đà Nẵng',
  'Đắk Lắk',
  'Đắk Nông',
  'Điện Biên',
  'Đồng Nai',
  'Đồng Tháp',
  'Gia Lai',
  'Hà Giang',
  'Hà Nam',
  'Hà Nội',
  'Hà Tĩnh',
  'Hải Dương',
  'Hải Phòng',
  'Hậu Giang',
  'Hòa Bình',
  'Hưng Yên',
  'Khánh Hòa',
  'Kiên Giang',
  'Kon Tum',
  'Lai Châu',
  'Lâm Đồng',
  'Lạng Sơn',
  'Lào Cai',
  'Long An',
  'Nam Định',
  'Nghệ An',
  'Ninh Bình',
  'Ninh Thuận',
  'Phú Thọ',
  'Quảng Bình',
  'Quảng Nam',
  'Quảng Ngãi',
  'Quảng Ninh',
  'Quảng Trị',
  'Sóc Trăng',
  'Sơn La',
  'Tây Ninh',
  'Thái Bình',
  'Thái Nguyên',
  'Thanh Hóa',
  'Thành phố Hồ Chí Minh',
  'Thừa Thiên Huế',
  'Tiền Giang',
  'Trà Vinh',
  'Tuyên Quang',
  'Vĩnh Long',
  'Vĩnh Phúc',
  'Yên Bái',
  'Phú Yên',
];
const EMMOIJ =
    '/\uD83C\uDFF4\uDB40\uDC67\uDB40\uDC62(?:\uDB40\uDC77\uDB40\uDC6C\uDB40\uDC73|\uDB40\uDC73\uDB40\uDC63\uDB40\uDC74|\uDB40\uDC65\uDB40\uDC6E\uDB40\uDC67)\uDB40\uDC7F|(?:\uD83E\uDDD1\uD83C\uDFFF\u200D\u2764(?:\uFE0F\u200D(?:\uD83D\uDC8B\u200D)?|\u200D(?:\uD83D\uDC8B\u200D)?)\uD83E\uDDD1|\uD83D\uDC69\uD83C\uDFFF\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])|\uD83E\uDEF1\uD83C\uDFFF\u200D\uD83E\uDEF2)(?:\uD83C[\uDFFB-\uDFFE])|(?:\uD83E\uDDD1\uD83C\uDFFE\u200D\u2764(?:\uFE0F\u200D(?:\uD83D\uDC8B\u200D)?|\u200D(?:\uD83D\uDC8B\u200D)?)\uD83E\uDDD1|\uD83D\uDC69\uD83C\uDFFE\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])|\uD83E\uDEF1\uD83C\uDFFE\u200D\uD83E\uDEF2)(?:\uD83C[\uDFFB-\uDFFD\uDFFF])|(?:\uD83E\uDDD1\uD83C\uDFFD\u200D\u2764(?:\uFE0F\u200D(?:\uD83D\uDC8B\u200D)?|\u200D(?:\uD83D\uDC8B\u200D)?)\uD83E\uDDD1|\uD83D\uDC69\uD83C\uDFFD\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])|\uD83E\uDEF1\uD83C\uDFFD\u200D\uD83E\uDEF2)(?:\uD83C[\uDFFB\uDFFC\uDFFE\uDFFF])|(?:\uD83E\uDDD1\uD83C\uDFFC\u200D\u2764(?:\uFE0F\u200D(?:\uD83D\uDC8B\u200D)?|\u200D(?:\uD83D\uDC8B\u200D)?)\uD83E\uDDD1|\uD83D\uDC69\uD83C\uDFFC\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])|\uD83E\uDEF1\uD83C\uDFFC\u200D\uD83E\uDEF2)(?:\uD83C[\uDFFB\uDFFD-\uDFFF])|(?:\uD83E\uDDD1\uD83C\uDFFB\u200D\u2764(?:\uFE0F\u200D(?:\uD83D\uDC8B\u200D)?|\u200D(?:\uD83D\uDC8B\u200D)?)\uD83E\uDDD1|\uD83D\uDC69\uD83C\uDFFB\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])|\uD83E\uDEF1\uD83C\uDFFB\u200D\uD83E\uDEF2)(?:\uD83C[\uDFFC-\uDFFF])|\uD83D\uDC68(?:\uD83C\uDFFB(?:\u200D(?:\u2764(?:\uFE0F\u200D(?:\uD83D\uDC8B\u200D\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFF])|\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFF]))|\u200D(?:\uD83D\uDC8B\u200D\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFF])|\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFF])))|\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFC-\uDFFF])|[\u2695\u2696\u2708]\uFE0F|[\u2695\u2696\u2708]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD]))?|(?:\uD83C[\uDFFC-\uDFFF])\u200D\u2764(?:\uFE0F\u200D(?:\uD83D\uDC8B\u200D\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFF])|\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFF]))|\u200D(?:\uD83D\uDC8B\u200D\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFF])|\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFF])))|\u200D(?:\u2764(?:\uFE0F\u200D(?:\uD83D\uDC8B\u200D)?|\u200D(?:\uD83D\uDC8B\u200D)?)\uD83D\uDC68|(?:\uD83D[\uDC68\uDC69])\u200D(?:\uD83D\uDC66\u200D\uD83D\uDC66|\uD83D\uDC67\u200D(?:\uD83D[\uDC66\uDC67]))|\uD83D\uDC66\u200D\uD83D\uDC66|\uD83D\uDC67\u200D(?:\uD83D[\uDC66\uDC67])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFF\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFE])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFE\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFD\uDFFF])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFD\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFB\uDFFC\uDFFE\uDFFF])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFC\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFB\uDFFD-\uDFFF])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|(?:\uD83C\uDFFF\u200D[\u2695\u2696\u2708]|\uD83C\uDFFE\u200D[\u2695\u2696\u2708]|\uD83C\uDFFD\u200D[\u2695\u2696\u2708]|\uD83C\uDFFC\u200D[\u2695\u2696\u2708]|\u200D[\u2695\u2696\u2708])\uFE0F|\u200D(?:(?:\uD83D[\uDC68\uDC69])\u200D(?:\uD83D[\uDC66\uDC67])|\uD83D[\uDC66\uDC67])|\uD83C\uDFFF\u200D[\u2695\u2696\u2708]|\uD83C\uDFFE\u200D[\u2695\u2696\u2708]|\uD83C\uDFFD\u200D[\u2695\u2696\u2708]|\uD83C\uDFFC\u200D[\u2695\u2696\u2708]|\uD83C\uDFFF|\uD83C\uDFFE|\uD83C\uDFFD|\uD83C\uDFFC|\u200D[\u2695\u2696\u2708])?|(?:\uD83D\uDC69(?:\uD83C\uDFFB\u200D\u2764(?:\uFE0F\u200D(?:\uD83D\uDC8B\u200D(?:\uD83D[\uDC68\uDC69])|\uD83D[\uDC68\uDC69])|\u200D(?:\uD83D\uDC8B\u200D(?:\uD83D[\uDC68\uDC69])|\uD83D[\uDC68\uDC69]))|(?:\uD83C[\uDFFC-\uDFFF])\u200D\u2764(?:\uFE0F\u200D(?:\uD83D\uDC8B\u200D(?:\uD83D[\uDC68\uDC69])|\uD83D[\uDC68\uDC69])|\u200D(?:\uD83D\uDC8B\u200D(?:\uD83D[\uDC68\uDC69])|\uD83D[\uDC68\uDC69])))|\uD83E\uDDD1(?:\uD83C[\uDFFB-\uDFFF])\u200D\uD83E\uDD1D\u200D\uD83E\uDDD1)(?:\uD83C[\uDFFB-\uDFFF])|\uD83D\uDC69\u200D\uD83D\uDC69\u200D(?:\uD83D\uDC66\u200D\uD83D\uDC66|\uD83D\uDC67\u200D(?:\uD83D[\uDC66\uDC67]))|\uD83D\uDC69(?:\u200D(?:\u2764(?:\uFE0F\u200D(?:\uD83D\uDC8B\u200D(?:\uD83D[\uDC68\uDC69])|\uD83D[\uDC68\uDC69])|\u200D(?:\uD83D\uDC8B\u200D(?:\uD83D[\uDC68\uDC69])|\uD83D[\uDC68\uDC69]))|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFF\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFE\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFD\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFC\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFB\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD]))|\uD83E\uDDD1(?:\u200D(?:\uD83E\uDD1D\u200D\uD83E\uDDD1|\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFF\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFE\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFD\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFC\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFB\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD]))|\uD83D\uDC69\u200D\uD83D\uDC66\u200D\uD83D\uDC66|\uD83D\uDC69\u200D\uD83D\uDC69\u200D(?:\uD83D[\uDC66\uDC67])|\uD83D\uDC69\u200D\uD83D\uDC67\u200D(?:\uD83D[\uDC66\uDC67])|(?:\uD83D\uDC41\uFE0F?\u200D\uD83D\uDDE8|\uD83E\uDDD1(?:\uD83C\uDFFF\u200D[\u2695\u2696\u2708]|\uD83C\uDFFE\u200D[\u2695\u2696\u2708]|\uD83C\uDFFD\u200D[\u2695\u2696\u2708]|\uD83C\uDFFC\u200D[\u2695\u2696\u2708]|\uD83C\uDFFB\u200D[\u2695\u2696\u2708]|\u200D[\u2695\u2696\u2708])|\uD83D\uDC69(?:\uD83C\uDFFF\u200D[\u2695\u2696\u2708]|\uD83C\uDFFE\u200D[\u2695\u2696\u2708]|\uD83C\uDFFD\u200D[\u2695\u2696\u2708]|\uD83C\uDFFC\u200D[\u2695\u2696\u2708]|\uD83C\uDFFB\u200D[\u2695\u2696\u2708]|\u200D[\u2695\u2696\u2708])|\uD83D\uDE36\u200D\uD83C\uDF2B|\uD83C\uDFF3\uFE0F?\u200D\u26A7|\uD83D\uDC3B\u200D\u2744|(?:(?:\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3D\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD4\uDDD6-\uDDDD])(?:\uD83C[\uDFFB-\uDFFF])|\uD83D\uDC6F|\uD83E[\uDDDE\uDDDF])\u200D[\u2640\u2642]|(?:\u26F9|\uD83C[\uDFCB\uDFCC]|\uD83D\uDD75)(?:(?:\uFE0F|\uD83C[\uDFFB-\uDFFF])\u200D[\u2640\u2642]|\u200D[\u2640\u2642])|\uD83C\uDFF4\u200D\u2620|(?:\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3C-\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD4\uDDD6-\uDDDD])\u200D[\u2640\u2642]|[\xA9\xAE\u203C\u2049\u2122\u2139\u2194-\u2199\u21A9\u21AA\u231A\u231B\u2328\u23CF\u23ED-\u23EF\u23F1\u23F2\u23F8-\u23FA\u24C2\u25AA\u25AB\u25B6\u25C0\u25FB\u25FC\u25FE\u2600-\u2604\u260E\u2611\u2614\u2615\u2618\u2620\u2622\u2623\u2626\u262A\u262E\u262F\u2638-\u263A\u2640\u2642\u2648-\u2653\u265F\u2660\u2663\u2665\u2666\u2668\u267B\u267E\u267F\u2692\u2694-\u2697\u2699\u269B\u269C\u26A0\u26A7\u26AA\u26B0\u26B1\u26BD\u26BE\u26C4\u26C8\u26CF\u26D1\u26D3\u26E9\u26F0-\u26F5\u26F7\u26F8\u26FA\u2702\u2708\u2709\u270F\u2712\u2714\u2716\u271D\u2721\u2733\u2734\u2744\u2747\u2757\u2763\u27A1\u2934\u2935\u2B05-\u2B07\u2B1B\u2B1C\u2B55\u3030\u303D\u3297\u3299]|\uD83C[\uDC04\uDD70\uDD71\uDD7E\uDD7F\uDE02\uDE37\uDF21\uDF24-\uDF2C\uDF36\uDF7D\uDF96\uDF97\uDF99-\uDF9B\uDF9E\uDF9F\uDFCD\uDFCE\uDFD4-\uDFDF\uDFF5\uDFF7]|\uD83D[\uDC3F\uDCFD\uDD49\uDD4A\uDD6F\uDD70\uDD73\uDD76-\uDD79\uDD87\uDD8A-\uDD8D\uDDA5\uDDA8\uDDB1\uDDB2\uDDBC\uDDC2-\uDDC4\uDDD1-\uDDD3\uDDDC-\uDDDE\uDDE1\uDDE3\uDDE8\uDDEF\uDDF3\uDDFA\uDECB\uDECD-\uDECF\uDEE0-\uDEE5\uDEE9\uDEF0\uDEF3])\uFE0F|\uD83D\uDC41\uFE0F?\u200D\uD83D\uDDE8|\uD83E\uDDD1(?:\uD83C\uDFFF\u200D[\u2695\u2696\u2708]|\uD83C\uDFFE\u200D[\u2695\u2696\u2708]|\uD83C\uDFFD\u200D[\u2695\u2696\u2708]|\uD83C\uDFFC\u200D[\u2695\u2696\u2708]|\uD83C\uDFFB\u200D[\u2695\u2696\u2708]|\u200D[\u2695\u2696\u2708])|\uD83D\uDC69(?:\uD83C\uDFFF\u200D[\u2695\u2696\u2708]|\uD83C\uDFFE\u200D[\u2695\u2696\u2708]|\uD83C\uDFFD\u200D[\u2695\u2696\u2708]|\uD83C\uDFFC\u200D[\u2695\u2696\u2708]|\uD83C\uDFFB\u200D[\u2695\u2696\u2708]|\u200D[\u2695\u2696\u2708])|\uD83C\uDFF3\uFE0F?\u200D\uD83C\uDF08|\uD83D\uDC69\u200D\uD83D\uDC67|\uD83D\uDC69\u200D\uD83D\uDC66|\uD83D\uDE36\u200D\uD83C\uDF2B|\uD83C\uDFF3\uFE0F?\u200D\u26A7|\uD83D\uDE35\u200D\uD83D\uDCAB|\uD83D\uDE2E\u200D\uD83D\uDCA8|\uD83D\uDC15\u200D\uD83E\uDDBA|\uD83E\uDEF1(?:\uD83C\uDFFF|\uD83C\uDFFE|\uD83C\uDFFD|\uD83C\uDFFC|\uD83C\uDFFB)?|\uD83E\uDDD1(?:\uD83C\uDFFF|\uD83C\uDFFE|\uD83C\uDFFD|\uD83C\uDFFC|\uD83C\uDFFB)?|\uD83D\uDC69(?:\uD83C\uDFFF|\uD83C\uDFFE|\uD83C\uDFFD|\uD83C\uDFFC|\uD83C\uDFFB)?|\uD83D\uDC3B\u200D\u2744|(?:(?:\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3D\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD4\uDDD6-\uDDDD])(?:\uD83C[\uDFFB-\uDFFF])|\uD83D\uDC6F|\uD83E[\uDDDE\uDDDF])\u200D[\u2640\u2642]|(?:\u26F9|\uD83C[\uDFCB\uDFCC]|\uD83D\uDD75)(?:(?:\uFE0F|\uD83C[\uDFFB-\uDFFF])\u200D[\u2640\u2642]|\u200D[\u2640\u2642])|\uD83C\uDFF4\u200D\u2620|\uD83C\uDDFD\uD83C\uDDF0|\uD83C\uDDF6\uD83C\uDDE6|\uD83C\uDDF4\uD83C\uDDF2|\uD83D\uDC08\u200D\u2B1B|\u2764(?:\uFE0F\u200D(?:\uD83D\uDD25|\uD83E\uDE79)|\u200D(?:\uD83D\uDD25|\uD83E\uDE79))|\uD83D\uDC41\uFE0F?|\uD83C\uDFF3\uFE0F?|(?:\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3C-\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD4\uDDD6-\uDDDD])\u200D[\u2640\u2642]|\uD83C\uDDFF(?:\uD83C[\uDDE6\uDDF2\uDDFC])|\uD83C\uDDFE(?:\uD83C[\uDDEA\uDDF9])|\uD83C\uDDFC(?:\uD83C[\uDDEB\uDDF8])|\uD83C\uDDFB(?:\uD83C[\uDDE6\uDDE8\uDDEA\uDDEC\uDDEE\uDDF3\uDDFA])|\uD83C\uDDFA(?:\uD83C[\uDDE6\uDDEC\uDDF2\uDDF3\uDDF8\uDDFE\uDDFF])|\uD83C\uDDF9(?:\uD83C[\uDDE6\uDDE8\uDDE9\uDDEB-\uDDED\uDDEF-\uDDF4\uDDF7\uDDF9\uDDFB\uDDFC\uDDFF])|\uD83C\uDDF8(?:\uD83C[\uDDE6-\uDDEA\uDDEC-\uDDF4\uDDF7-\uDDF9\uDDFB\uDDFD-\uDDFF])|\uD83C\uDDF7(?:\uD83C[\uDDEA\uDDF4\uDDF8\uDDFA\uDDFC])|\uD83C\uDDF5(?:\uD83C[\uDDE6\uDDEA-\uDDED\uDDF0-\uDDF3\uDDF7-\uDDF9\uDDFC\uDDFE])|\uD83C\uDDF3(?:\uD83C[\uDDE6\uDDE8\uDDEA-\uDDEC\uDDEE\uDDF1\uDDF4\uDDF5\uDDF7\uDDFA\uDDFF])|\uD83C\uDDF2(?:\uD83C[\uDDE6\uDDE8-\uDDED\uDDF0-\uDDFF])|\uD83C\uDDF1(?:\uD83C[\uDDE6-\uDDE8\uDDEE\uDDF0\uDDF7-\uDDFB\uDDFE])|\uD83C\uDDF0(?:\uD83C[\uDDEA\uDDEC-\uDDEE\uDDF2\uDDF3\uDDF5\uDDF7\uDDFC\uDDFE\uDDFF])|\uD83C\uDDEF(?:\uD83C[\uDDEA\uDDF2\uDDF4\uDDF5])|\uD83C\uDDEE(?:\uD83C[\uDDE8-\uDDEA\uDDF1-\uDDF4\uDDF6-\uDDF9])|\uD83C\uDDED(?:\uD83C[\uDDF0\uDDF2\uDDF3\uDDF7\uDDF9\uDDFA])|\uD83C\uDDEC(?:\uD83C[\uDDE6\uDDE7\uDDE9-\uDDEE\uDDF1-\uDDF3\uDDF5-\uDDFA\uDDFC\uDDFE])|\uD83C\uDDEB(?:\uD83C[\uDDEE-\uDDF0\uDDF2\uDDF4\uDDF7])|\uD83C\uDDEA(?:\uD83C[\uDDE6\uDDE8\uDDEA\uDDEC\uDDED\uDDF7-\uDDFA])|\uD83C\uDDE9(?:\uD83C[\uDDEA\uDDEC\uDDEF\uDDF0\uDDF2\uDDF4\uDDFF])|\uD83C\uDDE8(?:\uD83C[\uDDE6\uDDE8\uDDE9\uDDEB-\uDDEE\uDDF0-\uDDF5\uDDF7\uDDFA-\uDDFF])|\uD83C\uDDE7(?:\uD83C[\uDDE6\uDDE7\uDDE9-\uDDEF\uDDF1-\uDDF4\uDDF6-\uDDF9\uDDFB\uDDFC\uDDFE\uDDFF])|\uD83C\uDDE6(?:\uD83C[\uDDE8-\uDDEC\uDDEE\uDDF1\uDDF2\uDDF4\uDDF6-\uDDFA\uDDFC\uDDFD\uDDFF])|[#*0-9]\uFE0F?\u20E3|\uD83E\uDD3C(?:\uD83C[\uDFFB-\uDFFF])|\u2764\uFE0F?|(?:\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3D\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD4\uDDD6-\uDDDD])(?:\uD83C[\uDFFB-\uDFFF])|(?:\u26F9|\uD83C[\uDFCB\uDFCC]|\uD83D\uDD75)(?:\uFE0F|\uD83C[\uDFFB-\uDFFF])?|\uD83C\uDFF4|(?:[\u270A\u270B]|\uD83C[\uDF85\uDFC2\uDFC7]|\uD83D[\uDC42\uDC43\uDC46-\uDC50\uDC66\uDC67\uDC6B-\uDC6D\uDC72\uDC74-\uDC76\uDC78\uDC7C\uDC83\uDC85\uDC8F\uDC91\uDCAA\uDD7A\uDD95\uDD96\uDE4C\uDE4F\uDEC0\uDECC]|\uD83E[\uDD0C\uDD0F\uDD18-\uDD1F\uDD30-\uDD34\uDD36\uDD77\uDDB5\uDDB6\uDDBB\uDDD2\uDDD3\uDDD5\uDEC3-\uDEC5\uDEF0\uDEF2-\uDEF6])(?:\uD83C[\uDFFB-\uDFFF])|(?:[\u261D\u270C\u270D]|\uD83D[\uDD74\uDD90])(?:\uFE0F|\uD83C[\uDFFB-\uDFFF])|[\u261D\u270A-\u270D]|\uD83C[\uDF85\uDFC2\uDFC7]|\uD83D[\uDC08\uDC15\uDC3B\uDC42\uDC43\uDC46-\uDC50\uDC66\uDC67\uDC6B-\uDC6D\uDC72\uDC74-\uDC76\uDC78\uDC7C\uDC83\uDC85\uDC8F\uDC91\uDCAA\uDD74\uDD7A\uDD90\uDD95\uDD96\uDE2E\uDE35\uDE36\uDE4C\uDE4F\uDEC0\uDECC]|\uD83E[\uDD0C\uDD0F\uDD18-\uDD1F\uDD30-\uDD34\uDD36\uDD3C\uDD77\uDDB5\uDDB6\uDDBB\uDDD2\uDDD3\uDDD5\uDEC3-\uDEC5\uDEF0\uDEF2-\uDEF6]|\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3D\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD4\uDDD6-\uDDDD]|\uD83D\uDC6F|\uD83E[\uDDDE\uDDDF]|[\xA9\xAE\u203C\u2049\u2122\u2139\u2194-\u2199\u21A9\u21AA\u231A\u231B\u2328\u23CF\u23ED-\u23EF\u23F1\u23F2\u23F8-\u23FA\u24C2\u25AA\u25AB\u25B6\u25C0\u25FB\u25FC\u25FE\u2600-\u2604\u260E\u2611\u2614\u2615\u2618\u2620\u2622\u2623\u2626\u262A\u262E\u262F\u2638-\u263A\u2640\u2642\u2648-\u2653\u265F\u2660\u2663\u2665\u2666\u2668\u267B\u267E\u267F\u2692\u2694-\u2697\u2699\u269B\u269C\u26A0\u26A7\u26AA\u26B0\u26B1\u26BD\u26BE\u26C4\u26C8\u26CF\u26D1\u26D3\u26E9\u26F0-\u26F5\u26F7\u26F8\u26FA\u2702\u2708\u2709\u270F\u2712\u2714\u2716\u271D\u2721\u2733\u2734\u2744\u2747\u2757\u2763\u27A1\u2934\u2935\u2B05-\u2B07\u2B1B\u2B1C\u2B55\u3030\u303D\u3297\u3299]|\uD83C[\uDC04\uDD70\uDD71\uDD7E\uDD7F\uDE02\uDE37\uDF21\uDF24-\uDF2C\uDF36\uDF7D\uDF96\uDF97\uDF99-\uDF9B\uDF9E\uDF9F\uDFCD\uDFCE\uDFD4-\uDFDF\uDFF5\uDFF7]|\uD83D[\uDC3F\uDCFD\uDD49\uDD4A\uDD6F\uDD70\uDD73\uDD76-\uDD79\uDD87\uDD8A-\uDD8D\uDDA5\uDDA8\uDDB1\uDDB2\uDDBC\uDDC2-\uDDC4\uDDD1-\uDDD3\uDDDC-\uDDDE\uDDE1\uDDE3\uDDE8\uDDEF\uDDF3\uDDFA\uDECB\uDECD-\uDECF\uDEE0-\uDEE5\uDEE9\uDEF0\uDEF3]|[\u23E9-\u23EC\u23F0\u23F3\u25FD\u2693\u26A1\u26AB\u26C5\u26CE\u26D4\u26EA\u26FD\u2705\u2728\u274C\u274E\u2753-\u2755\u2795-\u2797\u27B0\u27BF\u2B50]|\uD83C[\uDCCF\uDD8E\uDD91-\uDD9A\uDE01\uDE1A\uDE2F\uDE32-\uDE36\uDE38-\uDE3A\uDE50\uDE51\uDF00-\uDF20\uDF2D-\uDF35\uDF37-\uDF7C\uDF7E-\uDF84\uDF86-\uDF93\uDFA0-\uDFC1\uDFC5\uDFC6\uDFC8\uDFC9\uDFCF-\uDFD3\uDFE0-\uDFF0\uDFF8-\uDFFF]|\uD83D[\uDC00-\uDC07\uDC09-\uDC14\uDC16-\uDC3A\uDC3C-\uDC3E\uDC40\uDC44\uDC45\uDC51-\uDC65\uDC6A\uDC79-\uDC7B\uDC7D-\uDC80\uDC84\uDC88-\uDC8E\uDC90\uDC92-\uDCA9\uDCAB-\uDCFC\uDCFF-\uDD3D\uDD4B-\uDD4E\uDD50-\uDD67\uDDA4\uDDFB-\uDE2D\uDE2F-\uDE34\uDE37-\uDE44\uDE48-\uDE4A\uDE80-\uDEA2\uDEA4-\uDEB3\uDEB7-\uDEBF\uDEC1-\uDEC5\uDED0-\uDED2\uDED5-\uDED7\uDEDD-\uDEDF\uDEEB\uDEEC\uDEF4-\uDEFC\uDFE0-\uDFEB\uDFF0]|\uD83E[\uDD0D\uDD0E\uDD10-\uDD17\uDD20-\uDD25\uDD27-\uDD2F\uDD3A\uDD3F-\uDD45\uDD47-\uDD76\uDD78-\uDDB4\uDDB7\uDDBA\uDDBC-\uDDCC\uDDD0\uDDE0-\uDDFF\uDE70-\uDE74\uDE78-\uDE7C\uDE80-\uDE86\uDE90-\uDEAC\uDEB0-\uDEBA\uDEC0-\uDEC2\uDED0-\uDED9\uDEE0-\uDEE7]';
