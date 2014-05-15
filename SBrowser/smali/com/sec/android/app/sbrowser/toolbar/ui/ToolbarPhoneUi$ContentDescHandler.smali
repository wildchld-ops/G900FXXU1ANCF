.class Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;
.super Ljava/lang/Object;
.source "ToolbarPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentDescHandler"
.end annotation


# instance fields
.field private mIsViewPartOfLowerToolbar:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;Z)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;->mIsViewPartOfLowerToolbar:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;->mIsViewPartOfLowerToolbar:Z

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v9, 0x800035

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->access$600(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    const/4 v8, 0x2

    new-array v2, v8, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v7, v2, v7

    sub-int v7, v8, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int v4, v7, v8

    aget v5, v2, v6

    if-eqz v1, :cond_1

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;->mIsViewPartOfLowerToolbar:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v3, v9, v4, v7}, Landroid/widget/Toast;->setGravity(III)V

    :goto_0
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_1
    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v3, v9, v4, v7}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    :cond_1
    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;->mIsViewPartOfLowerToolbar:Z

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v7, v5, v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    #calls: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getStatusBarHeight()I
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v9, v4, v7}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$ContentDescHandler;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    #calls: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getStatusBarHeight()I
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v9, v4, v7}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1
.end method
