.class Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;
.super Ljava/lang/Object;
.source "QuickAccessUtilityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->insertMulitiplePinnedIconToDB(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

.field final synthetic val$item:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;->val$item:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;->val$item:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "url"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;->val$item:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->getmUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "title"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;->val$item:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->getmTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsSbrRSSFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;->val$item:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->getmUrl()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->addRSSLinksToPinnedDB(Ljava/lang/String;)I
    invoke-static {v4, v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1700(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;->val$item:Ljava/util/ArrayList;

    #setter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempStorage:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1602(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1800(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$7;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1800(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
