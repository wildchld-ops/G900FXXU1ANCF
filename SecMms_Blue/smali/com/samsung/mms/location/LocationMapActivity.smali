.class public Lcom/samsung/mms/location/LocationMapActivity;
.super Landroid/app/Activity;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;,
        Lcom/samsung/mms/location/LocationMapActivity$LocationContextMenuClickListener;,
        Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;,
        Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;,
        Lcom/samsung/mms/location/LocationMapActivity$AddressAdapter;
    }
.end annotation


# static fields
.field private static final BITMAP_THUMB_SIZE_HEIGHT:I = 0xc8

#the value of this static final field might be set in the static constructor
.field private static final BITMAP_THUMB_SIZE_SCALE:D = 0.0

.field private static final BITMAP_THUMB_SIZE_WIDTH:I = 0xc8

.field private static final DEFAULT_LOCATION_SEARCH_TYPE:I = 0x1

.field public static final DEFAULT_PLACE_NAME:Ljava/lang/String; = "Address"

.field private static final DIALOG_LOC_SETTINGS:I = 0x0

.field private static final DIALOG_LOC_WIFI:I = 0x1

.field public static final EXTRA_CONTACT_NAME:Ljava/lang/String; = "extra_contact_name"

.field public static final EXTRA_IMAGE_PATH:Ljava/lang/String; = "extra_image_path"

.field public static final EXTRA_MAP_URL:Ljava/lang/String; = "extra_map_url"

.field public static final EXTRA_PLACE_ADDRESS:Ljava/lang/String; = "extra_place_address"

.field public static final EXTRA_PLACE_BYTES:Ljava/lang/String; = "extra_selected_place"

.field public static final EXTRA_STARTUP_FLAG:Ljava/lang/String; = "extra_startup_flag"

.field private static final FOCUS_MODE_ADD_LOCATION:I = 0x1

.field private static final FOCUS_MODE_FULL_SCREEN_SEARCH:I = 0x4

.field private static final FOCUS_MODE_FULL_SCREEN_SEARCH_RESULTS:I = 0x5

.field private static final FOCUS_MODE_HALF_SCREEN_SEARCH:I = 0x0

.field private static final FOCUS_MODE_HALF_SCREEN_SEARCH_RESULTS:I = 0x2

.field private static final FOCUS_MODE_LOCATION_LIST:I = 0x3

.field private static final FOCUS_MODE_MAP_ONLY:I = 0x7

.field private static final FOCUS_MODE_VIEW_ONLY:I = 0x6

.field private static final LOCATION_SEARCH_TYPE:Ljava/lang/String; = "search_type"

.field private static final LOCATION_SEARCH_TYPE_ADDRESS:I = 0x0

.field private static final LOCATION_SEARCH_TYPE_BING:I = 0x1

.field private static final MAP_IMAGE_FILENAME:Ljava/lang/String; = "location.map"

.field public static final PIN_NAME_MEDIA:Ljava/lang/String; = "Address"

.field private static final PREF_FIRST_TRACKING:Ljava/lang/String; = "first_tracking"

.field private static final PREF_FOLLOW_ME:Ljava/lang/String; = "follow_me"

.field private static final PREF_INIT_FIRST_LOCATION:Ljava/lang/String; = "init_first_location"

.field private static final PREF_KEY_DO_NOT_ASK_AGAIN:Ljava/lang/String; = "pref_loc_do_not_ask_again"

.field private static final PREF_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final PREF_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final PREF_ZOOM:Ljava/lang/String; = "zoom"

.field public static final REQUEST_CODE_ATTACH_FAV_LOCATION:I = 0x34

.field public static final REQUEST_CODE_ATTACH_GEO_MEDIA:I = 0x32

.field public static final REQUEST_CODE_ATTACH_PICK_CONTACT:I = 0x33

.field public static final REQUEST_CODE_ATTACH_RECENT_LOCATION:I = 0x35

.field public static final STARTUP_MODE_MEDIA:I = 0x5

.field public static final STARTUP_MODE_MY_LOCATION:I = 0x1

.field public static final STARTUP_MODE_NORMAL:I = 0x0

.field public static final STARTUP_MODE_SEARCH_ADDRESS:I = 0x3

.field public static final STARTUP_MODE_SEARCH_POI:I = 0x2

.field public static final STARTUP_MODE_SHOW_ADDRESS:I = 0x6

.field public static final STARTUP_MODE_VIEW_ONLY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LocationMapActivity"

.field private static final ZOOM_DEFAULT_LEVEL:I = 0xf

.field private static final ZOOM_INITIAL_LEVEL:I = 0x1

.field private static final centerLat:D = 35.46066

.field private static final centerLong:D = -96.85547


# instance fields
.field private final COMPRESS_QUALITY:I

.field private accuracyString:Ljava/lang/String;

.field private final addLocationClickListener:Landroid/view/View$OnClickListener;

.field private bInitFirstLocation:Z

.field private btnFavorite:Landroid/widget/Button;

.field private btnGo:Landroid/widget/Button;

.field private btnOk:Landroid/widget/Button;

.field private btnRecent:Landroid/widget/Button;

.field private btnVZNavigate:Landroid/widget/Button;

.field private coords:Lcom/nbi/map/data/Coordinates;

.field private currentFocusMode:I

.field private currentPlace:I

.field private favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

.field private final favoritesClickListener:Landroid/view/View$OnClickListener;

.field private firstTracking:Z

.field private followMe:Z

.field private isStartupSearch:Z

.field private lastDisplayedPlaces:I

.field private lastLatitude:D

.field private lastLongitude:D

.field private lastSingleSearchInfo:Lcom/nbi/search/singlesearch/SingleSearchInformation;

.field private locationListener:Lcom/nbi/location/LocationListener;

.field private locationMenuList:Landroid/widget/ListView;

.field private mAutoWifiDialogHasDismissed:Z

.field private mContext:Landroid/content/Context;

.field private mFavoriteLocation:Landroid/view/MenuItem;

.field private mHasLocSettingShown:Z

.field private mMyLocation:Landroid/view/MenuItem;

.field private mNoNetworkDialog:Landroid/app/AlertDialog;

.field private mRecentLocation:Landroid/view/MenuItem;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSuggestionCurAdapter:Landroid/widget/CursorAdapter;

.field private mSuggestionSearchInfo:Lcom/nbi/search/singlesearch/SuggestionSearchInformation;

.field private mSuggestionSearchListener:Lcom/nbi/search/singlesearch/SuggestionSearchListener;

.field private mSuggestionSearchRequest:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

.field private final mapChangeListener:Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;

.field private mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

.field private final mapPinEventListener:Lcom/nbi/map/android/MapView$OnPinEventListener;

.field private mapView:Lcom/nbi/map/android/MapView;

.field private final mapViewRedrawHandler:Landroid/os/Handler;

.field private final mapViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mbHasInitialized:Z

.field private mediaBitmap:Landroid/graphics/Bitmap;

.field private mediaLatitude:D

.field private mediaLongitude:D

.field private mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

.field private navigationBar:Landroid/widget/RelativeLayout;

.field private navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

.field private nbiContext:Lcom/nbi/common/NBIContext;

.field private pinBubble:Lcom/samsung/mms/location/PinBubbleView;

.field private placesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nbi/map/data/Place;",
            ">;"
        }
    .end annotation
.end field

.field private progressBar:Landroid/view/View;

.field private recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

.field private final recentClickListener:Landroid/view/View$OnClickListener;

.field private reverseLookUpPinId:I

.field private searchField:Lcom/samsung/mms/location/SearchEditText;

.field private final searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

.field private searchPerformed:Z

.field private searchResultsList:Landroid/widget/ListView;

.field private searchString:Ljava/lang/String;

.field private searchTypeRadioGroup:Landroid/widget/RadioGroup;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private singleSearchRequest:Lcom/nbi/search/singlesearch/SingleSearchRequest;

.field private singleSubSearchIndex:I

.field private startupMode:I

.field private final vzNavigateListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4069

    invoke-static {v0, v1, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/samsung/mms/location/LocationMapActivity;->BITMAP_THUMB_SIZE_SCALE:D

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const-wide/high16 v6, -0x4010

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchPerformed:Z

    iput-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->isStartupSearch:Z

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    const/16 v0, 0x4b

    iput v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->COMPRESS_QUALITY:I

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchRequest:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchInfo:Lcom/nbi/search/singlesearch/SuggestionSearchInformation;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionCurAdapter:Landroid/widget/CursorAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->placesList:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchString:Ljava/lang/String;

    new-instance v0, Lcom/nbi/map/data/Coordinates;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->coords:Lcom/nbi/map/data/Coordinates;

    iput-wide v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    iput-wide v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    iput-boolean v5, p0, Lcom/samsung/mms/location/LocationMapActivity;->firstTracking:Z

    iput-boolean v5, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    iput-boolean v5, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->reverseLookUpPinId:I

    iput-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    iput-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    iput-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mAutoWifiDialogHasDismissed:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->accuracyString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mHasLocSettingShown:Z

    iput-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$1;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapViewRedrawHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$2;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchListener:Lcom/nbi/search/singlesearch/SuggestionSearchListener;

    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$7;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$8;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapPinEventListener:Lcom/nbi/map/android/MapView$OnPinEventListener;

    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$9;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$9;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->addLocationClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$10;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$10;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->recentClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$11;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$11;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->favoritesClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$12;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$12;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->vzNavigateListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$13;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$13;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$14;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$14;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapChangeListener:Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;

    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$15;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$15;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/mms/location/LocationMapActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/search/singlesearch/SuggestionSearchRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchRequest:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/mms/location/LocationMapActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->doSubSearch()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/map/android/Pin;ZZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/mms/location/LocationMapActivity;->addPinToMap(Lcom/nbi/map/android/Pin;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PinBubbleView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/mms/location/LocationMapActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/mms/location/LocationMapActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->addLocationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$172(Lcom/samsung/mms/location/LocationMapActivity;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    and-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->vzNavigateListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/mms/location/LocationMapActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/mms/location/LocationMapActivity;->dropPin(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapViewRedrawHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/mms/location/LocationMapActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/mms/location/LocationMapActivity;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/samsung/mms/location/LocationMapActivity;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/samsung/mms/location/LocationMapActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->accuracyString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/samsung/mms/location/LocationMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->accuracyString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/geocode/ReverseGeocodeRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/mms/location/LocationMapActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->createMapImage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/CursorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionCurAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView$OnPinEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapPinEventListener:Lcom/nbi/map/android/MapView$OnPinEventListener;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/map/data/Place;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/mms/location/LocationMapActivity;->shiftMapToLocation(Lcom/nbi/map/data/Place;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/mms/location/LocationMapActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->firstTracking:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/samsung/mms/location/LocationMapActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->firstTracking:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/NavigationHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/mms/location/LocationMapActivity;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/samsung/mms/location/LocationMapActivity;D)D
    .locals 0

    iput-wide p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    return-wide p1
.end method

.method static synthetic access$3700(Lcom/samsung/mms/location/LocationMapActivity;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/samsung/mms/location/LocationMapActivity;D)D
    .locals 0

    iput-wide p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/samsung/mms/location/LocationMapActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/samsung/mms/location/LocationMapActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/search/singlesearch/SuggestionSearchInformation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchInfo:Lcom/nbi/search/singlesearch/SuggestionSearchInformation;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/mms/location/LocationMapActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/mms/location/LocationMapActivity;->dropPinOnMapCenter(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/search/singlesearch/SuggestionSearchInformation;)Lcom/nbi/search/singlesearch/SuggestionSearchInformation;
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchInfo:Lcom/nbi/search/singlesearch/SuggestionSearchInformation;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/samsung/mms/location/LocationMapActivity;DDZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/mms/location/LocationMapActivity;->requestReverseLocation(DDZ)V

    return-void
.end method

.method static synthetic access$4202(Lcom/samsung/mms/location/LocationMapActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->isStartupSearch:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mMyLocation:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mFavoriteLocation:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mRecentLocation:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/samsung/mms/location/LocationMapActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchPerformed:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->launchLocationSettings()V

    return-void
.end method

.method static synthetic access$4902(Lcom/samsung/mms/location/LocationMapActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mAutoWifiDialogHasDismissed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchHandlerListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/mms/location/LocationMapActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->singleSubSearchIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/mms/location/LocationMapActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->singleSubSearchIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private addPinToMap(Lcom/nbi/map/android/Pin;ZZ)I
    .locals 3

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->getPinCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->removeAllPins()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/nbi/map/android/MapView;->addPin(Lcom/nbi/map/android/Pin;ZZ)I

    move-result v0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private adjustViewsBasedOnFocus(I)V
    .locals 22

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I

    packed-switch p1, :pswitch_data_0

    const-string v2, "LocationMapActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustViewsBasedOnFocus() - unsupported focus mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/LocationMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/16 v19, 0x1

    :goto_1
    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    goto :goto_0

    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    const v3, 0x7f0c02ef

    invoke-virtual {v2, v3}, Lcom/samsung/mms/location/SearchEditText;->setHint(I)V

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    const v3, 0x7f0c02f0

    invoke-virtual {v2, v3}, Lcom/samsung/mms/location/SearchEditText;->setHint(I)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    const v3, 0x7f0c02f1

    invoke-virtual {v2, v3}, Lcom/samsung/mms/location/SearchEditText;->setHint(I)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    goto/16 :goto_0

    :pswitch_6
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    const v2, 0x7f0c02f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->setTitle(I)V

    const v2, 0x7f0b0167

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    const v2, 0x7f0b0167

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private createLocSettingDialog()Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c030e

    invoke-virtual {p0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c030f

    invoke-virtual {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0312

    invoke-virtual {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$18;

    invoke-direct {v3, p0}, Lcom/samsung/mms/location/LocationMapActivity$18;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0311

    invoke-virtual {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$17;

    invoke-direct {v3, p0}, Lcom/samsung/mms/location/LocationMapActivity$17;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/mms/location/LocationMapActivity$16;

    invoke-direct {v2, p0}, Lcom/samsung/mms/location/LocationMapActivity$16;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createLocWifiEnableDialog()Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f04003d

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b0125

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "pref_loc_do_not_ask_again"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Lcom/samsung/mms/location/LocationMapActivity$19;

    invoke-direct {v4, p0, v3}, Lcom/samsung/mms/location/LocationMapActivity$19;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c030a

    invoke-virtual {p0, v4}, Lcom/samsung/mms/location/LocationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c030b

    invoke-virtual {p0, v5}, Lcom/samsung/mms/location/LocationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/mms/location/LocationMapActivity$22;

    invoke-direct {v6, p0}, Lcom/samsung/mms/location/LocationMapActivity$22;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c030c

    invoke-virtual {p0, v5}, Lcom/samsung/mms/location/LocationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/mms/location/LocationMapActivity$21;

    invoke-direct {v6, p0}, Lcom/samsung/mms/location/LocationMapActivity$21;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/mms/location/LocationMapActivity$20;

    invoke-direct {v5, p0}, Lcom/samsung/mms/location/LocationMapActivity$20;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method private createMapImage()Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->createScaledMapImage()Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v7, "location.map"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x4b

    invoke-virtual {v2, v7, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    if-eqz v6, :cond_1

    const-string v7, "location.map"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    :try_start_1
    const-string v7, "LocationMapActivity"

    const-string v8, "createMapImage() - could not compress map image to JPEG."

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    const/4 v2, 0x0

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v7, "LocationMapActivity"

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    const-string v7, "LocationMapActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createMapImage() - error writing out the map image file. Details: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v7

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_3
    throw v7
.end method

.method private createScaledMapImage()Landroid/graphics/Bitmap;
    .locals 21

    const/16 v19, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->getHeight()I

    move-result v17

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v1

    mul-int v1, v1, v18

    if-gt v4, v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v1

    mul-int v1, v1, v18

    move/from16 v0, v17

    if-le v0, v1, :cond_1

    :cond_0
    mul-int/lit8 v18, v18, 0x2

    goto :goto_0

    :cond_1
    div-int v1, v4, v18

    div-int v2, v17, v18

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    const/16 v20, 0x32

    const/16 v1, 0x32

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v1, v3, 0x32

    move/from16 v0, v17

    if-ge v1, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    const/4 v2, 0x0

    const/16 v5, 0x32

    invoke-virtual/range {v1 .. v6}, Lcom/nbi/map/android/MapView;->getImage(IIIILandroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_2

    div-int v1, v4, v18

    const/16 v2, 0x32

    div-int v2, v2, v18

    const/4 v9, 0x1

    invoke-static {v6, v1, v2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v8, v1, [I

    const/4 v9, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v11, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    div-int v14, v3, v18

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v9, v19

    move-object v10, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    add-int/lit8 v3, v3, 0x32

    goto :goto_1

    :cond_3
    sub-int v5, v17, v3

    if-lez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/nbi/map/android/MapView;->getImage(IIIILandroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_4

    div-int v1, v4, v18

    div-int v2, v5, v18

    const/4 v9, 0x1

    invoke-static {v6, v1, v2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v8, v1, [I

    const/4 v9, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v11, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    div-int v14, v3, v18

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v9, v19

    move-object v10, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v6, 0x0

    return-object v19
.end method

.method private displayLoadErrorDialog(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/mms/location/LocationMapActivity$6;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doSubSearch()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v2}, Lcom/nbi/map/android/MapView;->getMapCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/mms/location/LocationMapActivity;->doSearch(ILjava/lang/String;Lcom/nbi/map/data/Coordinates;)V

    return-void
.end method

.method private drawBestLocationIfAvailable()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/mms/location/LBSManager;->getInstance()Lcom/samsung/mms/location/LBSManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/location/LBSManager;->getCurrentBestLocation()Lcom/nbi/location/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    invoke-interface {v2, v1}, Lcom/nbi/location/LocationListener;->locationUpdated(Lcom/nbi/location/Location;)V
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nbi/location/LocationException;->printStackTrace()V

    goto :goto_0
.end method

.method private dropPin(II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/mms/location/LocationMapActivity;->dropPin(III)V

    return-void
.end method

.method private dropPin(III)V
    .locals 6

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->accuracyString:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->removeAllPins()V

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    new-instance v2, Lcom/nbi/map/data/Point;

    invoke-direct {v2, p1, p2}, Lcom/nbi/map/data/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/nbi/map/android/MapView;->convertMapXYToCoordinates(Lcom/nbi/map/data/Point;)Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/mms/location/LocationMapActivity;->requestReverseLocation(DD)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02fc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private dropPinOnMapCenter()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v0}, Lcom/nbi/map/android/MapView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/mms/location/LocationMapActivity;->dropPin(III)V

    return-void
.end method

.method private dropPinOnMapCenter(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v0}, Lcom/nbi/map/android/MapView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/mms/location/LocationMapActivity;->dropPin(III)V

    return-void
.end method

.method private static floatComp(FF)Z
    .locals 3

    const v0, 0x38d1b717

    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMediaContentPath(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/samsung/mms/location/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v0, -0x1

    if-eq v0, v7, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v9

    :try_start_1
    const-string v0, "LocationMapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaContentPath(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v8, 0x0

    :cond_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    throw v0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private getUriBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v13, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v9, "file"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x1

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v9, :cond_1

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v9, v10, :cond_1

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v9, v10, :cond_1

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v8, v8

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v8, v8

    cmpl-double v8, v3, v8

    if-lez v8, :cond_2

    sget-wide v8, Lcom/samsung/mms/location/LocationMapActivity;->BITMAP_THUMB_SIZE_SCALE:D

    div-double/2addr v3, v8

    :goto_0
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    double-to-int v8, v3

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/mms/location/LocationMapActivity;->scaleBitmapForBubble(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_0
    :goto_1
    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020017

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_1
    :goto_2
    return-object v8

    :cond_2
    const-wide/high16 v3, 0x4030

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v8, "LocationMapActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Out Of Memory Error while doing Bitmap decode on file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const-string v9, "content"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    const/4 v12, 0x3

    invoke-static {v9, v10, v11, v12, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v9, v10, v11, v13, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_4
    if-nez v6, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/mms/location/LocationMapActivity;->getMediaContentPath(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->getUriBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    :cond_5
    move-object v8, v6

    goto :goto_2
.end method

.method private initializeViewItems()V
    .locals 3

    const v0, 0x7f0b0172

    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nbi/map/android/MapView;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    const v0, 0x7f0b016d

    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0b0176

    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationBar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0173

    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    const v0, 0x7f0b0170

    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    const v0, 0x7f0b0169

    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/location/SearchEditText;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    const v0, 0x7f0b016b

    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    const v0, 0x7f0b016c

    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    const v0, 0x7f0b016a

    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnGo:Landroid/widget/Button;

    const v0, 0x7f0b017a

    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnOk:Landroid/widget/Button;

    const v0, 0x7f0b017b

    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnVZNavigate:Landroid/widget/Button;

    const v0, 0x7f0b0174

    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->progressBar:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnOk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->addLocationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->recentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->favoritesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnVZNavigate:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->vzNavigateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsung/mms/location/PinBubbleView;

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/mms/location/PinBubbleView;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    return-void
.end method

.method private launchLocationSettings()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private readIntentMapData()V
    .locals 11

    const/4 v10, 0x0

    const-wide/high16 v6, -0x4010

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    iput-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    const-string v6, "extra_map_url"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "extra_selected_place"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    invoke-virtual {v6, v10}, Lcom/samsung/mms/location/PinBubbleView;->setIsLoading(Z)V

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v6, v3}, Lcom/nbi/map/android/MapView;->mapFromURL(Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_4

    const-string v6, "LocationMapActivity"

    const-string v7, "PlaceBytes is not NULL"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/samsung/mms/location/Place;->createPlace([B)Lcom/samsung/mms/location/Place;

    move-result-object v4

    const/4 v2, 0x0

    if-nez v4, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {v4}, Lcom/samsung/mms/location/PlaceUtils;->createNBIPlaceFromSDK(Lcom/samsung/mms/location/Place;)Lcom/nbi/map/data/Place;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->shiftMapToLocation(Lcom/nbi/map/data/Place;)V

    :goto_1
    iget v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v6}, Lcom/nbi/map/android/MapView;->deselectAllPins()V

    invoke-virtual {v2}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    const-string v6, "extra_image_path"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/mms/location/LocationMapActivity;->getUriBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaBitmap:Landroid/graphics/Bitmap;

    iget-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    iget-wide v8, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/samsung/mms/location/LocationMapActivity;->requestReverseLocation(DD)V

    :cond_4
    :goto_2
    iput-boolean v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v6}, Lcom/nbi/map/android/MapView;->getSelectedPin()I

    move-result v6

    iput v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->reverseLookUpPinId:I

    goto :goto_1

    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->shiftMapToLocation(Lcom/nbi/map/data/Place;)V

    goto :goto_2
.end method

.method private requestReverseLocation(DD)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/mms/location/LocationMapActivity;->requestReverseLocation(DDZ)V

    return-void
.end method

.method private requestReverseLocation(DDZ)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    invoke-virtual {v4}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;->cancelRequest()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    if-eqz v4, :cond_1

    if-eqz p5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/mms/location/PinBubbleView;->setIsLoading(Z)V

    :cond_1
    new-instance v13, Lcom/nbi/map/data/MapLocation;

    invoke-direct {v13}, Lcom/nbi/map/data/MapLocation;-><init>()V

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/nbi/map/data/MapLocation;->setLatLon(DD)V

    new-instance v15, Lcom/nbi/map/data/Place;

    invoke-direct {v15}, Lcom/nbi/map/data/Place;-><init>()V

    invoke-virtual {v15, v13}, Lcom/nbi/map/data/Place;->setLocation(Lcom/nbi/map/data/MapLocation;)V

    new-instance v14, Lcom/nbi/map/android/Pin;

    const/4 v4, 0x4

    const-string v5, ""

    invoke-direct {v14, v4, v15, v5}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v5}, Lcom/samsung/mms/location/LocationMapActivity;->addPinToMap(Lcom/nbi/map/android/Pin;ZZ)I

    new-instance v16, Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/mms/location/LocationMapActivity;->nbiContext:Lcom/nbi/common/NBIContext;

    const/4 v11, 0x0

    new-instance v4, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;-><init>(Lcom/samsung/mms/location/LocationMapActivity;DD)V

    move-object/from16 v5, v16

    move-object v6, v10

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-object v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;-><init>(Lcom/nbi/common/NBIContext;DDZLcom/nbi/map/geocode/ReverseGeocodeListener;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    invoke-virtual {v4}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;->startRequest()V

    return-void
.end method

.method private scaleBitmapForBubble(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    const/16 v0, 0xc8

    const/16 v1, 0xc8

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit16 v5, v2, 0xc8

    if-gt v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit16 v5, v2, 0xc8

    if-le v4, v5, :cond_1

    :cond_0
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    if-eq v2, v6, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v5, v2

    invoke-static {p1, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    return-object v3

    :cond_2
    move-object v3, p1

    goto :goto_1
.end method

.method private searchLocation(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchRequest:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchRequest:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    invoke-virtual {v1}, Lcom/nbi/search/singlesearch/SuggestionSearchRequest;->cancelRequest()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v2}, Lcom/nbi/map/android/MapView;->getMapCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/mms/location/LocationMapActivity;->doSearch(ILjava/lang/String;Lcom/nbi/map/data/Coordinates;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    if-eqz p2, :cond_8

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    if-eqz p3, :cond_9

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnGo:Landroid/widget/Button;

    if-eqz p4, :cond_a

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnOk:Landroid/widget/Button;

    if-eqz p5, :cond_b

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnVZNavigate:Landroid/widget/Button;

    if-eqz p6, :cond_c

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p6, :cond_3

    if-eqz p12, :cond_3

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mMyLocation:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mMyLocation:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mMyLocation:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mFavoriteLocation:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mFavoriteLocation:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mFavoriteLocation:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mRecentLocation:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mRecentLocation:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mRecentLocation:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    if-eqz p7, :cond_d

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    if-eqz p8, :cond_e

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    if-eqz p9, :cond_f

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setVisibility(I)V

    if-eqz p10, :cond_4

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    const v3, 0x7f020091

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_4
    if-eqz p11, :cond_5

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    const v3, 0x7f0200e3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_5
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    if-eqz p12, :cond_10

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Lcom/nbi/map/android/MapView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->progressBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationBar:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_9
    if-eqz p14, :cond_6

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    invoke-virtual {v2}, Lcom/samsung/mms/location/SearchEditText;->requestFocus()Z

    :cond_6
    if-eqz p15, :cond_7

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    invoke-virtual {v2}, Lcom/samsung/mms/location/SearchEditText;->selectAll()V

    :cond_7
    if-eqz p16, :cond_13

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :goto_a
    return-void

    :cond_8
    const/16 v2, 0x8

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x8

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x8

    goto/16 :goto_2

    :cond_b
    const/16 v2, 0x8

    goto/16 :goto_3

    :cond_c
    const/16 v2, 0x8

    goto/16 :goto_4

    :cond_d
    const/16 v2, 0x8

    goto :goto_5

    :cond_e
    const/16 v2, 0x8

    goto :goto_6

    :cond_f
    const/16 v2, 0x8

    goto :goto_7

    :cond_10
    const/16 v2, 0x8

    goto :goto_8

    :cond_11
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationBar:Landroid/widget/RelativeLayout;

    if-eqz p13, :cond_12

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_9

    :cond_12
    const/16 v2, 0x8

    goto :goto_b

    :cond_13
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    invoke-virtual {v2}, Lcom/samsung/mms/location/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_a
.end method

.method private setFollowMe(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/MapView;->setKeepScreenOn(Z)V

    return-void
.end method

.method private shiftMapToLocation(Lcom/nbi/map/data/Place;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    invoke-virtual {v3, v5}, Lcom/samsung/mms/location/PinBubbleView;->setIsLoading(Z)V

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v3}, Lcom/nbi/map/android/MapView;->removeAllPins()V

    new-instance v2, Lcom/samsung/mms/location/PlaceFormatter;

    invoke-direct {v2, p1}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    invoke-virtual {v2, v5}, Lcom/samsung/mms/location/PlaceFormatter;->getFormattedPlaceArray(Z)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "LocationMapActivity"

    aget-object v4, v1, v5

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/nbi/map/android/Pin;

    const/4 v3, 0x4

    aget-object v4, v1, v6

    invoke-direct {v0, v3, p1, v4}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;Ljava/lang/String;)V

    aget-object v3, v1, v5

    invoke-virtual {v0, v3}, Lcom/nbi/map/android/Pin;->setTitle(Ljava/lang/String;)V

    invoke-direct {p0, v0, v6, v6}, Lcom/samsung/mms/location/LocationMapActivity;->addPinToMap(Lcom/nbi/map/android/Pin;ZZ)I

    move-result v3

    iput v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->reverseLookUpPinId:I

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->reverseLookUpPinId:I

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Lcom/nbi/map/android/MapView;->zoomToPin(II)Z

    invoke-direct {p0, v6}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v3, p1}, Lcom/samsung/mms/location/PlaceDBAdapter;->insertPlace(Lcom/nbi/map/data/Place;)J

    return-void
.end method

.method private showLocSettingIfNecessary()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/mms/location/LocationUtils;->isAllLocationProviderEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mHasLocSettingShown:Z

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mHasLocSettingShown:Z

    invoke-virtual {p0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->showDialog(I)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mHasLocSettingShown:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showWifiEnabledDialogIfNeeded()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_loc_do_not_ask_again"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mAutoWifiDialogHasDismissed:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->showDialog(I)V

    :cond_1
    return-void
.end method

.method private suggestionChangeRequest(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    invoke-static {}, Lcom/samsung/mms/location/LBSManager;->getInstance()Lcom/samsung/mms/location/LBSManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/mms/location/LBSManager;->getNBIContext()Lcom/nbi/common/NBIContext;

    move-result-object v1

    new-instance v3, Lcom/nbi/map/data/SearchRegion;

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v2}, Lcom/nbi/map/android/MapView;->getMapCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/nbi/map/data/SearchRegion;-><init>(Lcom/nbi/map/data/Coordinates;)V

    const/16 v4, 0xa

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchListener:Lcom/nbi/search/singlesearch/SuggestionSearchListener;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/nbi/search/singlesearch/SuggestionSearchRequest;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lcom/nbi/map/data/SearchRegion;IILcom/nbi/search/singlesearch/SuggestionSearchListener;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchRequest:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchRequest:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    invoke-virtual {v0}, Lcom/nbi/search/singlesearch/SuggestionSearchRequest;->startRequest()V
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Lcom/nbi/location/LocationException;->printStackTrace()V

    invoke-direct {p0, p0}, Lcom/samsung/mms/location/LocationMapActivity;->displayLoadErrorDialog(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionCurAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionCurAdapter:Landroid/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchRequest:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchRequest:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    invoke-virtual {v0}, Lcom/nbi/search/singlesearch/SuggestionSearchRequest;->cancelRequest()V

    goto :goto_0
.end method


# virtual methods
.method public doSearch(ILjava/lang/String;Lcom/nbi/map/data/Coordinates;)V
    .locals 9

    iget v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    new-instance v0, Lcom/samsung/mms/location/SearchHandler;

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v5, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/mms/location/SearchHandler;-><init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V

    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchInfo:Lcom/nbi/search/singlesearch/SuggestionSearchInformation;

    iget v8, p0, Lcom/samsung/mms/location/LocationMapActivity;->singleSubSearchIndex:I

    move-object v3, v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/mms/location/SearchHandler;->performSingleSearch(ILjava/lang/String;Lcom/nbi/map/data/Coordinates;Lcom/nbi/search/singlesearch/SuggestionSearchInformation;I)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 26

    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/samsung/mms/location/LocationUtils;->retrieveGeocoordinates(Landroid/net/Uri;Landroid/content/Context;)[F

    move-result-object v17

    if-eqz v17, :cond_0

    const/4 v2, 0x0

    aget v2, v17, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/mms/location/LocationMapActivity;->floatComp(FF)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    aget v2, v17, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/mms/location/LocationMapActivity;->floatComp(FF)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v2}, Lcom/nbi/map/android/MapView;->deselectAllPins()V

    const/4 v2, 0x0

    aget v2, v17, v2

    float-to-double v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    const/4 v2, 0x1

    aget v2, v17, v2

    float-to-double v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->getUriBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/mms/location/LocationMapActivity;->requestReverseLocation(DD)V

    goto :goto_0

    :pswitch_1
    const-string v2, "extra_selected_place"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v21

    if-eqz v21, :cond_0

    invoke-static/range {v21 .. v21}, Lcom/samsung/mms/location/Place;->createPlace([B)Lcom/samsung/mms/location/Place;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-static/range {v18 .. v18}, Lcom/samsung/mms/location/PlaceUtils;->createNBIPlaceFromSDK(Lcom/samsung/mms/location/Place;)Lcom/nbi/map/data/Place;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->shiftMapToLocation(Lcom/nbi/map/data/Place;)V

    goto :goto_0

    :pswitch_2
    const/16 v19, 0x0

    const/16 v24, 0x0

    const/4 v12, 0x0

    const/16 v23, 0x0

    const/4 v14, 0x0

    const/16 v22, 0x0

    const/16 v25, -0x1

    const-string v2, "LocationMapActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected Contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/LocationMapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "display_name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/mms/location/LocationMapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    const-string v16, ""

    const-string v2, "data2"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const-string v2, "data4"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const-string v2, "data7"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v2, "data8"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v2, "data10"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "data9"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    if-eqz v24, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_3
    if-eqz v12, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_4
    if-eqz v23, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_5
    if-eqz v14, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_6
    if-eqz v22, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_7
    const-string v2, "ComposeMessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full Address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v25, :pswitch_data_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Other)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_8
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b

    const v2, 0x7f0c031c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Home)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Work)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v15, :cond_0

    const v2, 0x7f0c031e

    invoke-virtual {v15, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/mms/location/LocationMapActivity$AddressAdapter;

    const v3, 0x7f040009

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v3, v1, v9}, Lcom/samsung/mms/location/LocationMapActivity$AddressAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9}, Lcom/samsung/mms/location/LocationMapActivity$3;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v15, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "LocationMapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Config change of:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapViewRedrawHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/mms/location/LBSManager;->init(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    iget-boolean v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    const v10, 0x7f040057

    invoke-virtual {p0, v10}, Lcom/samsung/mms/location/LocationMapActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->initializeViewItems()V

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "extra_startup_flag"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    new-instance v10, Lcom/samsung/mms/location/FavoritesDBAdapter;

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/mms/location/FavoritesDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v10}, Lcom/samsung/mms/location/PlaceDBAdapter;->open()Lcom/samsung/mms/location/PlaceDBAdapter;

    new-instance v10, Lcom/samsung/mms/location/RecentsDBAdapter;

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/mms/location/RecentsDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v10}, Lcom/samsung/mms/location/PlaceDBAdapter;->open()Lcom/samsung/mms/location/PlaceDBAdapter;

    :try_start_0
    invoke-static {}, Lcom/samsung/mms/location/LBSManager;->getInstance()Lcom/samsung/mms/location/LBSManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/mms/location/LBSManager;->getNBIContext()Lcom/nbi/common/NBIContext;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->nbiContext:Lcom/nbi/common/NBIContext;
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v5, 0x0

    const-string v10, "MAP_LOCATION"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/samsung/mms/location/LocationMapActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "latitude"

    const v12, 0x420dd7b7

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v10

    float-to-double v3, v10

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "longitude"

    const v12, -0x3d3e4a00

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v10

    float-to-double v6, v10

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "zoom"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "first_tracking"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->firstTracking:Z

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "init_first_location"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    iget v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    if-eqz v10, :cond_1

    iget v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    :cond_1
    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    new-instance v5, Lcom/nbi/location/Location;

    invoke-direct {v5}, Lcom/nbi/location/Location;-><init>()V

    invoke-virtual {v5, v3, v4}, Lcom/nbi/location/Location;->setLatitude(D)V

    invoke-virtual {v5, v6, v7}, Lcom/nbi/location/Location;->setLongitude(D)V

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->nbiContext:Lcom/nbi/common/NBIContext;

    invoke-static {v10, v5}, Lcom/nbi/map/android/MapConfiguration;->defaultConfigurationFromLocation(Lcom/nbi/common/NBIContext;Lcom/nbi/location/Location;)Lcom/nbi/map/android/MapConfiguration;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapConfiguration;->setShowUncertaintyRadius(Z)V

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    invoke-virtual {v10, v9}, Lcom/nbi/map/android/MapConfiguration;->setZoom(I)V

    const-string v10, "LocationMapActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read and Apply Zoom Level"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapConfiguration;->setZoomButtons(Z)V

    :try_start_1
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v11, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapView;->setConfiguration(Lcom/nbi/map/android/MapConfiguration;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v11, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v11, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapPinEventListener:Lcom/nbi/map/android/MapView$OnPinEventListener;

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapView;->setOnPinEventListener(Lcom/nbi/map/android/MapView$OnPinEventListener;)V

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v11, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapChangeListener:Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapView;->setOnMapCenterAndZoomChangeListener(Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;)V

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v11, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    invoke-virtual {v11}, Lcom/nbi/map/android/MapConfiguration;->getZoom()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/nbi/map/android/MapView;->setZoomLevel(IZ)Z

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapView;->mapShowLocation(Z)Z

    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapView;->showPinLayer(Z)Z

    new-instance v10, Lcom/samsung/mms/location/NavigationHandler;

    iget-object v11, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v12, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    invoke-direct {v10, p0, v11, v12}, Lcom/samsung/mms/location/NavigationHandler;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/map/android/MapView;Lcom/nbi/map/android/MapConfiguration;)V

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->readIntentMapData()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/nbi/location/LocationException;->printStackTrace()V

    invoke-direct {p0, p0}, Lcom/samsung/mms/location/LocationMapActivity;->displayLoadErrorDialog(Landroid/app/Activity;)V

    goto/16 :goto_1

    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Landroid/os/Process;->killProcess(I)V

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->createLocSettingDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->createLocWifiEnableDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 13

    const v12, 0x7f0b0318

    const/4 v11, 0x0

    const/4 v2, 0x2

    const/4 v10, 0x1

    iget v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :goto_0
    return v10

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v8

    const v0, 0x7f0f0007

    invoke-virtual {v8, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f0b033a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mMyLocation:Landroid/view/MenuItem;

    const v0, 0x7f0b033b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mFavoriteLocation:Landroid/view/MenuItem;

    const v0, 0x7f0b033c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mRecentLocation:Landroid/view/MenuItem;

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/SearchManager;

    new-instance v6, Landroid/content/ComponentName;

    const-string v0, "com.android.mms"

    const-string v1, "com.samsung.mms.location.LocationMapActivity"

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9, v6}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v10}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v7, v11

    const-string v0, "line1"

    aput-object v0, v7, v10

    const-string v0, "line2"

    aput-object v0, v7, v2

    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    new-array v4, v2, [Ljava/lang/String;

    const-string v0, "line1"

    aput-object v0, v4, v11

    const-string v0, "line2"

    aput-object v0, v4, v10

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f040087

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionCurAdapter:Landroid/widget/CursorAdapter;

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionCurAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/samsung/mms/location/LocationMapActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/mms/location/LocationMapActivity$4;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    new-instance v1, Lcom/samsung/mms/location/LocationMapActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/mms/location/LocationMapActivity$5;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    nop

    :array_0
    .array-data 0x4
        0x62t 0x1t 0xbt 0x7ft
        0x9ft 0x2t 0xbt 0x7ft
    .end array-data
.end method

.method protected onDestroy()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "map"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    invoke-virtual {v1}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;->isRequestInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    invoke-virtual {v1}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;->cancelRequest()V

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "init_first_location"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_tracking"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v1}, Lcom/samsung/mms/location/PlaceDBAdapter;->close()V

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v1}, Lcom/samsung/mms/location/PlaceDBAdapter;->close()V

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnGo:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnOk:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnVZNavigate:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1, v4}, Lcom/nbi/map/android/MapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1, v4}, Lcom/nbi/map/android/MapView;->setOnPinEventListener(Lcom/nbi/map/android/MapView$OnPinEventListener;)V

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1, v4}, Lcom/nbi/map/android/MapView;->setOnMapCenterAndZoomChangeListener(Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;)V

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-static {}, Lcom/samsung/mms/location/LBSManager;->destroy()V

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->nbiContext:Lcom/nbi/common/NBIContext;

    if-eqz v1, :cond_1

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->nbiContext:Lcom/nbi/common/NBIContext;

    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

    invoke-virtual {v1}, Lcom/samsung/mms/location/NavigationHandler;->onDestroy()V

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

    :cond_2
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationBar:Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnGo:Landroid/widget/Button;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnOk:Landroid/widget/Button;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnVZNavigate:Landroid/widget/Button;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->removeDialog(I)V

    invoke-virtual {p0, v5}, Lcom/samsung/mms/location/LocationMapActivity;->removeDialog(I)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->progressBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    :cond_4
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->progressBar:Landroid/view/View;

    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x1

    if-ne p1, v2, :cond_0

    iget v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchPerformed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->isStartupSearch:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchPerformed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->isStartupSearch:Z

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13

    const-wide/16 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const v8, 0x102002c

    if-ne v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    :goto_0
    return v6

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :cond_2
    :goto_1
    move v6, v5

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->dropPinOnMapCenter()V

    goto :goto_1

    :pswitch_1
    iget-wide v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_3

    iget-wide v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_3

    new-instance v3, Lcom/nbi/location/Location;

    invoke-direct {v3}, Lcom/nbi/location/Location;-><init>()V

    iget-wide v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    invoke-virtual {v3, v7, v8}, Lcom/nbi/location/Location;->setLatitude(D)V

    iget-wide v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    invoke-virtual {v3, v7, v8}, Lcom/nbi/location/Location;->setLongitude(D)V

    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    new-instance v8, Lcom/nbi/map/data/Coordinates;

    invoke-virtual {v3}, Lcom/nbi/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v3}, Lcom/nbi/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v9}, Lcom/nbi/map/android/MapView;->getZoomLevel()I

    move-result v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/nbi/map/android/MapView;->setCenterAndZoomLevel(Lcom/nbi/map/data/Coordinates;IZ)V

    goto :goto_1

    :cond_3
    const v6, 0x7f0c0314

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_2
    iget-boolean v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    if-nez v7, :cond_2

    :try_start_0
    invoke-static {}, Lcom/samsung/mms/location/LBSManager;->getInstance()Lcom/samsung/mms/location/LBSManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v7, v8}, Lcom/samsung/mms/location/LBSManager;->startReceivingFixes(Lcom/nbi/location/LocationListener;)V
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput-boolean v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nbi/location/LocationException;->printStackTrace()V

    goto :goto_2

    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/samsung/mms/location/FavoritePlacesList;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v6, 0x34

    invoke-virtual {p0, v1, v6}, Lcom/samsung/mms/location/LocationMapActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :pswitch_4
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/samsung/mms/location/RecentPlacesList;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v6, 0x35

    invoke-virtual {p0, v4, v6}, Lcom/samsung/mms/location/LocationMapActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :pswitch_5
    const/16 v6, 0x32

    invoke-static {p0, v6}, Lcom/android/mms/ui/MessageUtils;->selectImage(Landroid/content/Context;I)V

    goto :goto_1

    :pswitch_6
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.PICK"

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v6, 0x33

    invoke-virtual {p0, v2, v6}, Lcom/samsung/mms/location/LocationMapActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0b033a
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_1

    const-string v1, "latitude"

    iget-wide v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    double-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_1
    iget-wide v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_2

    const-string v1, "longitude"

    iget-wide v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    double-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const-string v1, "first_tracking"

    iget-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->firstTracking:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "init_first_location"

    iget-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "zoom"

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v2}, Lcom/nbi/map/android/MapView;->getZoomLevel()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ZoomLevel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving Zoom Level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v3}, Lcom/nbi/map/android/MapView;->getZoomLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "follow_me"

    iget-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b033f

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "LocationMapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryTextChange called for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/mms/location/LocationMapActivity;->suggestionChangeRequest(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/mms/location/LocationMapActivity;->searchLocation(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->showLocSettingIfNecessary()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->showWifiEnabledDialogIfNeeded()V

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "search_type"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/mms/location/LBSManager;->getInstance()Lcom/samsung/mms/location/LBSManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v2, v3}, Lcom/samsung/mms/location/LBSManager;->startReceivingFixes(Lcom/nbi/location/LocationListener;)V
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nbi/location/LocationException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v4}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    :try_start_0
    invoke-static {}, Lcom/samsung/mms/location/LBSManager;->getInstance()Lcom/samsung/mms/location/LBSManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v1, v2}, Lcom/samsung/mms/location/LBSManager;->stopReceivingFixes(Lcom/nbi/location/LocationListener;)V
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nbi/location/LocationException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAllPinsFromMap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v0}, Lcom/nbi/map/android/MapView;->removeAllPins()V

    return-void
.end method

.method public showAllPins()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->setFollowMe(Z)V

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v0}, Lcom/nbi/map/android/MapView;->zoomToAllPins()Z

    return-void
.end method

.method public showFavoriteList()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v2}, Lcom/samsung/mms/location/PlaceDBAdapter;->getAllPlaces()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/samsung/mms/location/LocationListAdapter;

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/samsung/mms/location/LocationListAdapter;-><init>(Landroid/content/Context;Lcom/samsung/mms/location/PlaceDBAdapter;Ljava/util/Vector;Z)V

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;

    invoke-direct {v3, p0, v0}, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;

    invoke-direct {v3, p0, v0}, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    const v3, 0x7f020091

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    const v3, 0x7f0200e4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0c02f3

    invoke-static {p0, v2, v4}, Lcom/samsung/mms/location/LocationUtils;->showToastOnUIThread(Landroid/app/Activity;II)V

    const-string v2, "LocationMapActivity"

    const-string v3, "recentClickListener:onClick() - no recent places in database"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showNoInternetDialog()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0326

    invoke-virtual {p0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0327

    invoke-virtual {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0328

    invoke-virtual {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$24;

    invoke-direct {v3, p0}, Lcom/samsung/mms/location/LocationMapActivity$24;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0329

    invoke-virtual {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$23;

    invoke-direct {v3, p0}, Lcom/samsung/mms/location/LocationMapActivity$23;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showRecentList()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v2}, Lcom/samsung/mms/location/PlaceDBAdapter;->getAllPlaces()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/samsung/mms/location/LocationListAdapter;

    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/samsung/mms/location/LocationListAdapter;-><init>(Landroid/content/Context;Lcom/samsung/mms/location/PlaceDBAdapter;Ljava/util/Vector;Z)V

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;

    invoke-direct {v3, p0, v1}, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;

    invoke-direct {v3, p0, v1}, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    const v3, 0x7f020092

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    const v3, 0x7f0200e3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0c02f4

    invoke-static {p0, v2, v4}, Lcom/samsung/mms/location/LocationUtils;->showToastOnUIThread(Landroid/app/Activity;II)V

    const-string v2, "LocationMapActivity"

    const-string v3, "recentClickListener:onClick() - no recent places in database"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
