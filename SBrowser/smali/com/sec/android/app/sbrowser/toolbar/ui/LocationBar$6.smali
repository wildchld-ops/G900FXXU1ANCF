.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->showReaderModeListPopup(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIsReaderClickable:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$600(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mIsReaderClickable:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$602(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Z)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2, v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->setSwitchingToReader(Z)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->launchReaderView()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_3
    const/4 v0, 0x0

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideKeyBoardAndRunThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
