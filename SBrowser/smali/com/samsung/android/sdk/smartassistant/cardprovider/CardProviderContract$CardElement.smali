.class public final Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardElement;
.super Ljava/lang/Object;
.source "CardProviderContract.java"

# interfaces
.implements Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardElementColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardElement"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.samsung.android.smartassistant.cardprovider.card_element"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.samsung.android.smartassistant.cardprovider.card_element"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_UPDATE_CARD:Landroid/net/Uri; = null

.field public static final IMAGE_URI_PATH_SEGMENT:Ljava/lang/String; = "image"

.field public static final TYPE_ACTION:Ljava/lang/String; = "action"

.field public static final TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "card_element"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardElement;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardElement;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "update_card"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$CardElement;->CONTENT_URI_UPDATE_CARD:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
