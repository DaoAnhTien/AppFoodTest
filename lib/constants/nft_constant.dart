const String TYPE_IMAGE = 'image';
const String TYPE_VIDEO = 'video';
const String TYPE_AUDIO = 'audio';

const String TYPE_AUCTION = 'auction';
const String TYPE_SALE = 'sale';

const int NFT_NAME_MAX_LENGTH = 80;
const int NFT_DESC_MAX_LENGTH = 500;
const int NFT_PROPERTIES_MAX_LENGTH = 20;
const int NFT_SECRET_MAX_LENGTH = 90;
const int SECRET_MAX_FULL_NAME = 50;
const int SECRET_MAX_ADDRESS = 70;
const int MAX_LENGTH_MONEY = 13;

const int COLLECTION_NAME_MAX_LENGTH = 80;
const int COLLECTION_DESC_MAX_LENGTH = 500;
const int COLLECTION_SYMBOL_MAX_LENGTH = 10;

const String CATEGORY_ART = 'art';
const String CATEGORY_GAME = 'game';
const String CATEGORY_INFLUENCER = 'influencer';
const List<String> LIST_CATEGORY = [
  CATEGORY_ART,
  CATEGORY_GAME,
  CATEGORY_INFLUENCER
];

const String PARAM_FOR_OWNER = 'owner_id=';
const String PARAM_FOR_CREATOR = 'creator_id=';

const String SORT_BY_OWNER_TIME = 'updatedOwnerAt';
const String SORT_BY_UPDATE_AT = 'updatedAt';

const String TRANSACTION_TYPE_IN = 'in';
const String TRANSACTION_TYPE_OUT = 'out';
const String TRANSACTION_TYPE_PAY_FEE = 'pay_fee';
const String TRANSACTION_TYPE_MINT = 'mint';
const String TRANSACTION_CATEGORY_SELL = 'sell';
const String TRANSACTION_CATEGORY_BUY = 'buy';
const String TRANSACTION_CATEGORY_WITHDRAW_FEE = 'withdraw_fee';
const String TRANSACTION_CATEGORY_SERVICE_FEE = 'service_fee';
const String TRANSACTION_CATEGORY_ROYALTIES = 'royalties';
const String TRANSACTION_CATEGORY_MINT_FEE = 'mint_fee';
