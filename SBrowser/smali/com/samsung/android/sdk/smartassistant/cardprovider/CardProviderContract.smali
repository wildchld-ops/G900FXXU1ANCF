.class public final Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract;
.super Ljava/lang/Object;
.source "CardProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Card;,
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardColumns;,
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardElement;,
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardElementColumns;,
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardType;,
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardTypeColumns;,
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Channel;,
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ChannelColumns;,
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ProvidedCardType;,
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ProvidedCardTypeColumns;,
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Provider;,
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ProviderColumns;,
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Setting;,
        Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$SettingColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.smartassistant.cardprovider"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME_CARD:Ljava/lang/String; = "card"

.field public static final TABLE_NAME_CARD_ELEMENT:Ljava/lang/String; = "card_element"

.field public static final TABLE_NAME_CARD_TYPE:Ljava/lang/String; = "card_type"

.field public static final TABLE_NAME_CHANNEL:Ljava/lang/String; = "channel"

.field public static final TABLE_NAME_PROVIDED_CARD_TYPE:Ljava/lang/String; = "provided_card_type"

.field public static final TABLE_NAME_PROVIDER:Ljava/lang/String; = "provider"

.field public static final TABLE_NAME_SETTING:Ljava/lang/String; = "setting"

.field public static final VERSION:Ljava/lang/String; = "8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.smartassistant.cardprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
