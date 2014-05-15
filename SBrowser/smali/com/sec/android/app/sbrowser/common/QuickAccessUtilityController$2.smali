.class Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;
.super Ljava/lang/Object;
.source "QuickAccessUtilityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->addFavIconToPinnedDB(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

.field final synthetic val$addFavIconMap:Ljava/util/Map;

.field final synthetic val$mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;->val$addFavIconMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;->val$mUrl:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "touchicon"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;->val$addFavIconMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;->val$mUrl:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "dominant"

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;->val$addFavIconMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;->val$mUrl:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    #calls: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->identifyDominantColor([B)I
    invoke-static {v5, v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1300(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;[B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "url = ?"

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;->val$mUrl:Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v3, "QuickAccessUtilityController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickAccessUtilityController  addFavIconToPinnedDB "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;->val$mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$2;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
