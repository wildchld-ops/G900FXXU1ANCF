.class public Lcom/android/mms/util/UsageFrequencyAccumulator;
.super Ljava/lang/Object;
.source "UsageFrequencyAccumulator.java"


# static fields
.field public static ATTACH_AUDIO:Ljava/lang/String;

.field public static ATTACH_CALENDAR:Ljava/lang/String;

.field public static ATTACH_CONTACT:Ljava/lang/String;

.field public static ATTACH_IMAGE:Ljava/lang/String;

.field public static ATTACH_LOCATION:Ljava/lang/String;

.field public static ATTACH_MEMO:Ljava/lang/String;

.field public static ATTACH_MYLOCATION:Ljava/lang/String;

.field public static ATTACH_RECORDAUDIO:Ljava/lang/String;

.field public static ATTACH_RECORDVIDEO:Ljava/lang/String;

.field public static ATTACH_SCRAPBOOK:Ljava/lang/String;

.field public static ATTACH_TAKEPICTURE:Ljava/lang/String;

.field public static ATTACH_VIDEO:Ljava/lang/String;

.field public static CONTEXT_PROVIDER:Ljava/lang/String;

.field public static DIRECT_CALL:Ljava/lang/String;

.field public static EMOTICON:Ljava/lang/String;

.field public static FOWARD:Ljava/lang/String;

.field public static MMS_ID:Ljava/lang/String;

.field public static RECEIVE_MMS:Ljava/lang/String;

.field public static RECEIVE_SMS:Ljava/lang/String;

.field public static SAVE_ATTACHMENT:Ljava/lang/String;

.field public static SEND_MMS:Ljava/lang/String;

.field public static SEND_SMS:Ljava/lang/String;

.field public static SURVEY_URI:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Mms/FunctionAccumulator"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->TAG:Ljava/lang/String;

    const-string v0, "com.samsung.android.providers.context"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->CONTEXT_PROVIDER:Ljava/lang/String;

    const-string v0, "com.android.mms"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->MMS_ID:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.providers.context.log.use_app_feature_survey"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->SURVEY_URI:Ljava/lang/String;

    const-string v0, "SNDS"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->SEND_SMS:Ljava/lang/String;

    const-string v0, "SNDM"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->SEND_MMS:Ljava/lang/String;

    const-string v0, "VDEO"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_VIDEO:Ljava/lang/String;

    const-string v0, "AUDI"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_AUDIO:Ljava/lang/String;

    const-string v0, "IMAG"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_IMAGE:Ljava/lang/String;

    const-string v0, "TKPT"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_TAKEPICTURE:Ljava/lang/String;

    const-string v0, "LOCA"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_LOCATION:Ljava/lang/String;

    const-string v0, "RCVD"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_RECORDVIDEO:Ljava/lang/String;

    const-string v0, "RCAD"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_RECORDAUDIO:Ljava/lang/String;

    const-string v0, "CALD"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_CALENDAR:Ljava/lang/String;

    const-string v0, "MYLO"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_MYLOCATION:Ljava/lang/String;

    const-string v0, "MEMO"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_MEMO:Ljava/lang/String;

    const-string v0, "SCRP"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_SCRAPBOOK:Ljava/lang/String;

    const-string v0, "CNTC"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->ATTACH_CONTACT:Ljava/lang/String;

    const-string v0, "FOWD"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->FOWARD:Ljava/lang/String;

    const-string v0, "SAVE"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->SAVE_ATTACHMENT:Ljava/lang/String;

    const-string v0, "RCVS"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->RECEIVE_SMS:Ljava/lang/String;

    const-string v0, "RCVM"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->RECEIVE_MMS:Ljava/lang/String;

    const-string v0, "EMOT"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->EMOTICON:Ljava/lang/String;

    const-string v0, "DICL"

    sput-object v0, Lcom/android/mms/util/UsageFrequencyAccumulator;->DIRECT_CALL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersionOfContextProviders(Landroid/content/Context;)I
    .locals 6

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->CONTEXT_PROVIDER:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/mms/util/UsageFrequencyAccumulator;->TAG:Ljava/lang/String;

    const-string v4, "[SW] Could not find ContextProvider"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Lcom/android/mms/util/UsageFrequencyAccumulator;->getVersionOfContextProviders(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->SURVEY_URI:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    sget-object v5, Lcom/android/mms/util/UsageFrequencyAccumulator;->MMS_ID:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "feature"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->TAG:Ljava/lang/String;

    const-string v5, "ContextProvider insertion operation is performed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->TAG:Ljava/lang/String;

    const-string v5, "Error while using the ContextProvider"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/mms/util/UsageFrequencyAccumulator;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
