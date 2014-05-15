.class public Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneNumberLocatorBootCompletedReceiver.java"


# static fields
.field private static bTryAgain10Minutes:Z

.field private static bUpdateSuccess:Z

.field public static haveNetWork:Z

.field public static isSIMNetConnected:Z

.field public static isWifiNetConnected:Z

.field private static lastUpdateTime:I

.field public static timetickCount:I


# instance fields
.field private autoUpdate:Z

.field private bNeedUpdate:Z

.field private dateEve3Min:[I

.field private dateEve3MinTest:[I

.field private dateEveOne:[I

.field private dateEveSix:[I

.field private dateEveThree:[I

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field public mContext:Landroid/content/Context;

.field public mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

.field private mWLANOnly:Z

.field private updateType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->haveNetWork:Z

    sput v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bNeedUpdate:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateFormat:Ljava/text/SimpleDateFormat;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    const/16 v0, 0x104

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x6et 0xft 0x0t
        0x40t 0xb0t 0x1et 0x0t
        0x80t 0xf2t 0x2dt 0x0t
        0xc0t 0x34t 0x3dt 0x0t
        0x0t 0x77t 0x4ct 0x0t
        0x40t 0xb9t 0x5bt 0x0t
        0x80t 0xfbt 0x6at 0x0t
        0xc0t 0x3dt 0x7at 0x0t
        0x0t 0x80t 0x89t 0x0t
        0x40t 0xc2t 0x98t 0x0t
        0x80t 0x4t 0xa8t 0x0t
        0xc0t 0x46t 0xb7t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x80t 0xf2t 0x2dt 0x0t
        0x40t 0xb9t 0x5bt 0x0t
        0x0t 0x80t 0x89t 0x0t
        0xc0t 0x46t 0xb7t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x40t 0xb9t 0x5bt 0x0t
        0xc0t 0x46t 0xb7t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x20t 0x3t 0x0t 0x0t
        0x23t 0x3t 0x0t 0x0t
        0x26t 0x3t 0x0t 0x0t
        0x29t 0x3t 0x0t 0x0t
        0x2ct 0x3t 0x0t 0x0t
        0x2ft 0x3t 0x0t 0x0t
        0x32t 0x3t 0x0t 0x0t
        0x35t 0x3t 0x0t 0x0t
        0x38t 0x3t 0x0t 0x0t
        0x3bt 0x3t 0x0t 0x0t
        0x3et 0x3t 0x0t 0x0t
        0x41t 0x3t 0x0t 0x0t
        0x44t 0x3t 0x0t 0x0t
        0x47t 0x3t 0x0t 0x0t
        0x4at 0x3t 0x0t 0x0t
        0x4dt 0x3t 0x0t 0x0t
        0x50t 0x3t 0x0t 0x0t
        0x53t 0x3t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x59t 0x3t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0x87t 0x3t 0x0t 0x0t
        0x8at 0x3t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x90t 0x3t 0x0t 0x0t
        0x93t 0x3t 0x0t 0x0t
        0x96t 0x3t 0x0t 0x0t
        0x99t 0x3t 0x0t 0x0t
        0x9ct 0x3t 0x0t 0x0t
        0x9ft 0x3t 0x0t 0x0t
        0xa2t 0x3t 0x0t 0x0t
        0xa5t 0x3t 0x0t 0x0t
        0xa8t 0x3t 0x0t 0x0t
        0xabt 0x3t 0x0t 0x0t
        0xaet 0x3t 0x0t 0x0t
        0xb1t 0x3t 0x0t 0x0t
        0xb4t 0x3t 0x0t 0x0t
        0xb7t 0x3t 0x0t 0x0t
        0xbat 0x3t 0x0t 0x0t
        0xbdt 0x3t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xebt 0x3t 0x0t 0x0t
        0xeet 0x3t 0x0t 0x0t
        0xf1t 0x3t 0x0t 0x0t
        0xf4t 0x3t 0x0t 0x0t
        0xf7t 0x3t 0x0t 0x0t
        0xfat 0x3t 0x0t 0x0t
        0xfdt 0x3t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x3t 0x4t 0x0t 0x0t
        0x6t 0x4t 0x0t 0x0t
        0x9t 0x4t 0x0t 0x0t
        0xct 0x4t 0x0t 0x0t
        0xft 0x4t 0x0t 0x0t
        0x12t 0x4t 0x0t 0x0t
        0x15t 0x4t 0x0t 0x0t
        0x18t 0x4t 0x0t 0x0t
        0x1bt 0x4t 0x0t 0x0t
        0x1et 0x4t 0x0t 0x0t
        0x21t 0x4t 0x0t 0x0t
        0x4ct 0x4t 0x0t 0x0t
        0x4ft 0x4t 0x0t 0x0t
        0x52t 0x4t 0x0t 0x0t
        0x55t 0x4t 0x0t 0x0t
        0x58t 0x4t 0x0t 0x0t
        0x5bt 0x4t 0x0t 0x0t
        0x5et 0x4t 0x0t 0x0t
        0x61t 0x4t 0x0t 0x0t
        0x64t 0x4t 0x0t 0x0t
        0x67t 0x4t 0x0t 0x0t
        0x6at 0x4t 0x0t 0x0t
        0x6dt 0x4t 0x0t 0x0t
        0x70t 0x4t 0x0t 0x0t
        0x73t 0x4t 0x0t 0x0t
        0x76t 0x4t 0x0t 0x0t
        0x79t 0x4t 0x0t 0x0t
        0x7ct 0x4t 0x0t 0x0t
        0x7ft 0x4t 0x0t 0x0t
        0x82t 0x4t 0x0t 0x0t
        0x85t 0x4t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
        0xb3t 0x4t 0x0t 0x0t
        0xb6t 0x4t 0x0t 0x0t
        0xb9t 0x4t 0x0t 0x0t
        0xbct 0x4t 0x0t 0x0t
        0xbft 0x4t 0x0t 0x0t
        0xc2t 0x4t 0x0t 0x0t
        0xc5t 0x4t 0x0t 0x0t
        0xc8t 0x4t 0x0t 0x0t
        0xcbt 0x4t 0x0t 0x0t
        0xcet 0x4t 0x0t 0x0t
        0xd1t 0x4t 0x0t 0x0t
        0xd4t 0x4t 0x0t 0x0t
        0xd7t 0x4t 0x0t 0x0t
        0xdat 0x4t 0x0t 0x0t
        0xddt 0x4t 0x0t 0x0t
        0xe0t 0x4t 0x0t 0x0t
        0xe3t 0x4t 0x0t 0x0t
        0xe6t 0x4t 0x0t 0x0t
        0xe9t 0x4t 0x0t 0x0t
        0x14t 0x5t 0x0t 0x0t
        0x17t 0x5t 0x0t 0x0t
        0x1at 0x5t 0x0t 0x0t
        0x1dt 0x5t 0x0t 0x0t
        0x20t 0x5t 0x0t 0x0t
        0x23t 0x5t 0x0t 0x0t
        0x26t 0x5t 0x0t 0x0t
        0x29t 0x5t 0x0t 0x0t
        0x2ct 0x5t 0x0t 0x0t
        0x2ft 0x5t 0x0t 0x0t
        0x32t 0x5t 0x0t 0x0t
        0x35t 0x5t 0x0t 0x0t
        0x38t 0x5t 0x0t 0x0t
        0x3bt 0x5t 0x0t 0x0t
        0x3et 0x5t 0x0t 0x0t
        0x41t 0x5t 0x0t 0x0t
        0x44t 0x5t 0x0t 0x0t
        0x47t 0x5t 0x0t 0x0t
        0x4at 0x5t 0x0t 0x0t
        0x4dt 0x5t 0x0t 0x0t
        0x78t 0x5t 0x0t 0x0t
        0x7bt 0x5t 0x0t 0x0t
        0x7et 0x5t 0x0t 0x0t
        0x81t 0x5t 0x0t 0x0t
        0x84t 0x5t 0x0t 0x0t
        0x87t 0x5t 0x0t 0x0t
        0x8at 0x5t 0x0t 0x0t
        0x8dt 0x5t 0x0t 0x0t
        0x90t 0x5t 0x0t 0x0t
        0x93t 0x5t 0x0t 0x0t
        0x96t 0x5t 0x0t 0x0t
        0x99t 0x5t 0x0t 0x0t
        0x9ct 0x5t 0x0t 0x0t
        0x9ft 0x5t 0x0t 0x0t
        0xa2t 0x5t 0x0t 0x0t
        0xa5t 0x5t 0x0t 0x0t
        0xa8t 0x5t 0x0t 0x0t
        0xabt 0x5t 0x0t 0x0t
        0xaet 0x5t 0x0t 0x0t
        0xb1t 0x5t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0xdft 0x5t 0x0t 0x0t
        0xe2t 0x5t 0x0t 0x0t
        0xe5t 0x5t 0x0t 0x0t
        0xe8t 0x5t 0x0t 0x0t
        0xebt 0x5t 0x0t 0x0t
        0xeet 0x5t 0x0t 0x0t
        0xf1t 0x5t 0x0t 0x0t
        0xf4t 0x5t 0x0t 0x0t
        0xf7t 0x5t 0x0t 0x0t
        0xfat 0x5t 0x0t 0x0t
        0xfdt 0x5t 0x0t 0x0t
        0x0t 0x6t 0x0t 0x0t
        0x3t 0x6t 0x0t 0x0t
        0x6t 0x6t 0x0t 0x0t
        0x9t 0x6t 0x0t 0x0t
        0xct 0x6t 0x0t 0x0t
        0xft 0x6t 0x0t 0x0t
        0x12t 0x6t 0x0t 0x0t
        0x15t 0x6t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
        0x43t 0x6t 0x0t 0x0t
        0x46t 0x6t 0x0t 0x0t
        0x49t 0x6t 0x0t 0x0t
        0x4ct 0x6t 0x0t 0x0t
        0x4ft 0x6t 0x0t 0x0t
        0x52t 0x6t 0x0t 0x0t
        0x55t 0x6t 0x0t 0x0t
        0x58t 0x6t 0x0t 0x0t
        0x5bt 0x6t 0x0t 0x0t
        0x5et 0x6t 0x0t 0x0t
        0x61t 0x6t 0x0t 0x0t
        0x64t 0x6t 0x0t 0x0t
        0x67t 0x6t 0x0t 0x0t
        0x6at 0x6t 0x0t 0x0t
        0x6dt 0x6t 0x0t 0x0t
        0x70t 0x6t 0x0t 0x0t
        0x73t 0x6t 0x0t 0x0t
        0x76t 0x6t 0x0t 0x0t
        0x79t 0x6t 0x0t 0x0t
        0xa4t 0x6t 0x0t 0x0t
        0xa7t 0x6t 0x0t 0x0t
        0xaat 0x6t 0x0t 0x0t
        0xadt 0x6t 0x0t 0x0t
        0xb0t 0x6t 0x0t 0x0t
        0xb4t 0x6t 0x0t 0x0t
        0xb6t 0x6t 0x0t 0x0t
        0xb9t 0x6t 0x0t 0x0t
        0xbct 0x6t 0x0t 0x0t
        0xbft 0x6t 0x0t 0x0t
        0xc2t 0x6t 0x0t 0x0t
        0xc5t 0x6t 0x0t 0x0t
        0xc8t 0x6t 0x0t 0x0t
        0xcbt 0x6t 0x0t 0x0t
        0xcet 0x6t 0x0t 0x0t
        0xd1t 0x6t 0x0t 0x0t
        0xd4t 0x6t 0x0t 0x0t
        0xd7t 0x6t 0x0t 0x0t
        0xdat 0x6t 0x0t 0x0t
        0xddt 0x6t 0x0t 0x0t
        0x8t 0x7t 0x0t 0x0t
        0xbt 0x7t 0x0t 0x0t
        0xet 0x7t 0x0t 0x0t
        0x11t 0x7t 0x0t 0x0t
        0x14t 0x7t 0x0t 0x0t
        0x17t 0x7t 0x0t 0x0t
        0x1at 0x7t 0x0t 0x0t
        0x1dt 0x7t 0x0t 0x0t
        0x20t 0x7t 0x0t 0x0t
        0x23t 0x7t 0x0t 0x0t
        0x26t 0x7t 0x0t 0x0t
        0x29t 0x7t 0x0t 0x0t
        0x2ct 0x7t 0x0t 0x0t
        0x2ft 0x7t 0x0t 0x0t
        0x32t 0x7t 0x0t 0x0t
        0x35t 0x7t 0x0t 0x0t
        0x38t 0x7t 0x0t 0x0t
        0x3bt 0x7t 0x0t 0x0t
        0x3et 0x7t 0x0t 0x0t
        0x41t 0x7t 0x0t 0x0t
        0x6ct 0x7t 0x0t 0x0t
        0x6ft 0x7t 0x0t 0x0t
        0x72t 0x7t 0x0t 0x0t
        0x75t 0x7t 0x0t 0x0t
        0x78t 0x7t 0x0t 0x0t
        0x7bt 0x7t 0x0t 0x0t
        0x7et 0x7t 0x0t 0x0t
        0x81t 0x7t 0x0t 0x0t
        0x84t 0x7t 0x0t 0x0t
        0x87t 0x7t 0x0t 0x0t
        0x8at 0x7t 0x0t 0x0t
        0x8dt 0x7t 0x0t 0x0t
        0x90t 0x7t 0x0t 0x0t
        0x93t 0x7t 0x0t 0x0t
        0x96t 0x7t 0x0t 0x0t
        0x99t 0x7t 0x0t 0x0t
        0x9ct 0x7t 0x0t 0x0t
        0x9ft 0x7t 0x0t 0x0t
        0xa2t 0x7t 0x0t 0x0t
        0xa5t 0x7t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xd3t 0x7t 0x0t 0x0t
        0xd6t 0x7t 0x0t 0x0t
        0xd9t 0x7t 0x0t 0x0t
        0xdct 0x7t 0x0t 0x0t
        0xdft 0x7t 0x0t 0x0t
        0xe2t 0x7t 0x0t 0x0t
        0xe5t 0x7t 0x0t 0x0t
        0xe8t 0x7t 0x0t 0x0t
        0xebt 0x7t 0x0t 0x0t
        0xeet 0x7t 0x0t 0x0t
        0xf1t 0x7t 0x0t 0x0t
        0xf4t 0x7t 0x0t 0x0t
        0xf7t 0x7t 0x0t 0x0t
        0xfat 0x7t 0x0t 0x0t
        0xfdt 0x7t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
        0x3t 0x8t 0x0t 0x0t
        0x6t 0x8t 0x0t 0x0t
        0x9t 0x8t 0x0t 0x0t
    .end array-data
.end method

.method private InitAutoUpdate(Landroid/content/Context;)V
    .locals 3

    sget-object v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoUpdate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "autoUpdateInit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private checkTime()Z
    .locals 1

    const-string v0, "checkTime"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isTime([I)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isTime([I)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isTime([I)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDataFromDB(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "bTryAgain10"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bTryAgain10Minutes:Z

    const-string v2, "lastUpdateTime"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    const-string v2, "tryTimes"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    const-string v2, "autoUpdateInit"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->InitAutoUpdate(Landroid/content/Context;)V

    :cond_0
    const-string v2, "autoUpdate"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    const-string v2, "updateSuccess"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bUpdateSuccess:Z

    const-string v2, "updateType"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    const-string v2, "WLANOnly"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mWLANOnly:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bTryAgain10Minutes :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bTryAgain10Minutes:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastUpdateTime :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneNumberLocatorDownloader.tryTimes :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bUpdateSuccess :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bUpdateSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoUpdate :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWLANOnly :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mWLANOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getLastUpdateTime()[Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isVersionAndDBFileValid()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v5, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v5, "/system/etc/HomeLocationVersion.bin"

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    if-nez v0, :cond_3

    move-object v2, v3

    :cond_2
    :goto_2
    return-object v2

    :cond_3
    iget-object v1, v0, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    const-string v4, "\\."

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getLatestTime()I
    .locals 11

    const-string v6, "getLatestTime"

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getCurrentTime()I

    move-result v1

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLastUpdateTime()[Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    invoke-direct {p0, v6, v7}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateDate([Ljava/lang/String;I)[I

    move-result-object v5

    iget v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    add-int/lit16 v6, v0, -0x4b0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide/high16 v9, 0x4037

    mul-double/2addr v7, v9

    double-to-int v7, v7

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x404d800000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int v0, v6, v7

    return v0

    :pswitch_0
    if-eqz v5, :cond_0

    invoke-direct {p0, v5, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v2

    aget v0, v5, v2

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    invoke-direct {p0, v6, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v2

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    aget v0, v6, v2

    goto :goto_0

    :pswitch_1
    if-eqz v5, :cond_1

    invoke-direct {p0, v5, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v3

    aget v0, v5, v3

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    invoke-direct {p0, v6, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v3

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    aget v0, v6, v3

    goto :goto_0

    :pswitch_2
    if-eqz v5, :cond_2

    invoke-direct {p0, v5, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v4

    aget v0, v5, v4

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    invoke-direct {p0, v6, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v4

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    aget v0, v6, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLatestTimeSuffix([II)I
    .locals 6

    const-string v4, "getLatestTimeSuffix"

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    array-length v4, p1

    new-array v0, v4, [I

    const/4 v1, 0x0

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    aget v4, p1, v1

    sub-int v4, p2, v4

    aput v4, v0, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dateEveDiff[] is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    aget v4, v0, v1

    if-gez v4, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    aget v3, v0, v4

    aget v4, v0, v1

    if-le v3, v4, :cond_1

    aget v3, v0, v1

    move v2, v1

    goto :goto_2

    :cond_3
    return v2
.end method

.method private isNetConnected()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mWLANOnly:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetConnected isWifiNetConnected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetConnected isSIMNetConnected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  isWifiNetConnected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTime([I)Z
    .locals 4

    const-string v2, "isTime"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getCurrentTime()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTime is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "in isTime()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isVersionAndDBFileValid()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v6, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v5, v2, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_0

    iget-object v5, v2, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_1

    :cond_0
    iget-object v5, v2, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    const-string v6, "20"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVersionAndDBFileValid - mVersionInfo :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    :goto_0
    return v3

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v5, "/data/data/com.android.phone/HomeLocationDB.bin"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVersionAndDBFileValid - mVersionInfo.dbSize :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dbFile.length() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/phone/callsettings/DownloadFileInfo;

    invoke-direct {v1}, Lcom/android/phone/callsettings/DownloadFileInfo;-><init>()V

    const-string v5, "/data/data/com.android.phone/HomeLocationDB.bin"

    iput-object v5, v1, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    iget-wide v5, v2, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    iput-wide v5, v1, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v5, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->readDownloadFileInfo(Lcom/android/phone/callsettings/DownloadFileInfo;)V

    invoke-virtual {v1}, Lcom/android/phone/callsettings/DownloadFileInfo;->isValidFile()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v4, "PNL DB file is not valid"

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PhoneNumberLocatorBootCompletedReceiver"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "PhoneNumberLocatorBootCompletedReceiver"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private makeTest()V
    .locals 7

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "MMdd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v3, v5, 0x2710

    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3MinTest:[I

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    array-length v5, v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3MinTest:[I

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    aget v6, v6, v4

    add-int/2addr v6, v3

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private needUpdateDB()Z
    .locals 5

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->needUpdateForDownloadfailed()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "needUpdateForDownloadfailed"

    invoke-direct {p0, v3, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getLatestTime()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoUpdateTime is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->updateExp(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v3, "updateExp is true"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkTime()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "checkTime"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "needUpdateDB is false"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private needUpdateForDownloadfailed()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getCurrentTime()I

    move-result v2

    sget v3, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    sub-int v0, v2, v3

    sget v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    sget-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bTryAgain10Minutes:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    sget v2, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->tryTimes:I

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0xa

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateDate([Ljava/lang/String;I)[I
    .locals 10

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x3

    new-array v3, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v4, 0xc

    new-array v2, v4, [I

    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0xc

    if-ge v1, v4, :cond_0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-wide/high16 v5, 0x4024

    const-wide/high16 v7, 0x4018

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-wide/high16 v6, 0x4024

    const-wide/high16 v8, 0x4010

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit16 v4, v4, 0x4b0

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v4, 0x4

    new-array v2, v4, [I

    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x4

    if-ge v1, v4, :cond_0

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-wide/high16 v5, 0x4024

    const-wide/high16 v7, 0x4018

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-wide/high16 v6, 0x4024

    const-wide/high16 v8, 0x4010

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit16 v4, v4, 0x4b0

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_2
    const/4 v4, 0x2

    new-array v2, v4, [I

    const/4 v1, 0x0

    :goto_3
    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-wide/high16 v5, 0x4024

    const-wide/high16 v7, 0x4018

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-wide/high16 v6, 0x4024

    const-wide/high16 v8, 0x4010

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit16 v4, v4, 0x4b0

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateExp(I)Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bUpdateSuccess:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkDB()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isVersionAndDBFileValid()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checkDB - DB or version file is not correct, reset to default DB and version file"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->startCopyThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->startCopyThread()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public checkNetWork(Landroid/content/Context;)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_1

    const-string v9, "context null"

    invoke-direct {p0, v9, v8}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return v7

    :cond_1
    const-string v9, "connectivity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v9, v6, :cond_2

    sget-object v9, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v9, v6, :cond_3

    :cond_2
    sput-boolean v7, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    :goto_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v8, v5, :cond_5

    :goto_2
    move v7, v8

    goto :goto_0

    :cond_3
    sput-boolean v8, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    goto :goto_1

    :cond_4
    sput-boolean v7, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    goto :goto_1

    :cond_5
    sput-boolean v8, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "defaultHost:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "defaultPort:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getCurrentTime()I
    .locals 3

    const-string v2, "getCurrentTime"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "onReceive"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Phone number locator feature is dsiabled"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-direct {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setTypeAuto(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setContext(Landroid/content/Context;)V

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "PhoneNumberLocatorBootCompletedReceiver.onReceive(ACTION_BOOT_COMPLETED)"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    if-nez p1, :cond_4

    const-string v0, "context null"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    sput v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getDataFromDB(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-nez v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkDB()V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberLocatorBootCompletedReceiver.onReceive(ACTION_TIME_TICK) - timetickCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    if-nez p1, :cond_7

    const-string v0, "context null"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    sget v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    sget v0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_8

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const-string v0, "stopService PhoneNumberLocatorRegisterService.class because receive time tick over than 3 times"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    sput v3, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    goto/16 :goto_0

    :cond_8
    sget v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_9

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopService PhoneNumberLocatorDownloader.sDownloadFailTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->makeTest()V

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getDataFromDB(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    if-nez v0, :cond_a

    const-string v0, "auto update is not available"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "SIM and wifi both are\'t available"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const-string v0, "PhoneNumberLocatorBootCompletedReceiver context.stopService"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->needUpdateDB()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bNeedUpdate:Z

    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->bNeedUpdate:Z

    if-eqz v0, :cond_0

    const-string v0, "bNeedUpdate is true"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->startDownloadThread()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberLocatorBootCompletedReceiver.onReceive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    if-nez p1, :cond_d

    const-string v0, "context null"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->getDataFromDB(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-nez v0, :cond_0

    sput v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    sput-boolean v3, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberLocatorBootCompletedReceiver.onReceive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public startCopyThread()V
    .locals 3

    :try_start_0
    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver$1;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
