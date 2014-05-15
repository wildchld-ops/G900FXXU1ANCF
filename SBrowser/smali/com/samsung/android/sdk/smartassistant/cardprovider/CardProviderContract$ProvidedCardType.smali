.class public final Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ProvidedCardType;
.super Ljava/lang/Object;
.source "CardProviderContract.java"

# interfaces
.implements Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ProvidedCardTypeColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvidedCardType"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.samsung.android.smartassistant.cardprovider.provided_card_type"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.samsung.android.smartassistant.cardprovider.provided_card_type"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "provided_card_type"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$ProvidedCardType;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
