.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TWProgressPopup"
.end annotation


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mPopup:Landroid/widget/PopupWindow;

.field protected mUserOnProgressPopupListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mUserOnProgressPopupListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->userDismissPopup()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mUserOnProgressPopupListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mUserOnProgressPopupListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;->userOnEndProgressPopup()V

    :cond_0
    return-void
.end method

.method protected userDismissPopup()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    :cond_1
    return-void
.end method

.method public userRelease()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->userDismissPopup()V

    return-void
.end method

.method protected userSetOnProgressPopupListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mUserOnProgressPopupListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;

    return-void
.end method

.method protected userShowPopup()V
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mUserOnProgressPopupListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mUserOnProgressPopupListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;->userOnBeginProgressPopup()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->userDismissPopup()V

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userGetTimeIntervalAlphaEffectForDeleteItems()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
