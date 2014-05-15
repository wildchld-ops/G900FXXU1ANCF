.class Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$6;
.super Landroid/os/Handler;
.source "QuickAccessUtilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$6;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$6;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempStorage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1600(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$6;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$6;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempStorage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1600(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->getmUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$6;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->createPinTouchIcon(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$6;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c016b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$6;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c01e9

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$6;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempStorage:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1600(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
