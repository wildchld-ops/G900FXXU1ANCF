.class Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1$1;
.super Ljava/lang/Object;
.source "QuickAccessUtilityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "touchicon"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempbyte:[B
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1000(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "dominant"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempbyte:[B
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1000(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)[B

    move-result-object v5

    #calls: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->identifyDominantColor([B)I
    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1300(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "url = ?"

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedFavIconURL:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$700(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->urlIndex:I
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$900(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
