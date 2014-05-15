.class public Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;
.super Ljava/lang/Object;
.source "GestureAirTurnListener.java"

# interfaces
.implements Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;
.implements Lcom/samsung/android/service/gesture/GestureListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field animLayout:Landroid/view/View;

.field private mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field private mContext:Landroid/content/Context;

.field private mGestureListenerRegistered:Z

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsConnectedToService:Z

.field private mIsSwitchingTab:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field private final mTabNumberHeight:I

.field private final mTabNumberWidth:I

.field private shouldHideUrlBArAfterAnimation:Z

.field private t:Landroid/widget/Toast;

.field public viewstub:Landroid/view/ViewStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GestureAirTurnListener"

    sput-object v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mGestureListenerRegistered:Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->t:Landroid/widget/Toast;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mRunnable:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->shouldHideUrlBArAfterAnimation:Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->viewstub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->animLayout:Landroid/view/View;

    const-string v0, "VerificationLog"

    const-string v1, "Calling GestureAirTurnListener- begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09027d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mTabNumberWidth:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09027e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mTabNumberHeight:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->t:Landroid/widget/Toast;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$1;-><init>(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->init()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v1, 0x7f0a0206

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->viewstub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->viewstub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->animLayout:Landroid/view/View;

    const-string v0, "VerificationLog"

    const-string v1, "Calling GestureAirTurnListener- End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->shouldHideUrlBArAfterAnimation:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mIsSwitchingTab:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->displayCurrentTabNumber(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->t:Landroid/widget/Toast;

    return-object v0
.end method

.method private displayCurrentTabNumber(I)V
    .locals 11

    const v10, 0x7f09009c

    const/16 v9, 0x11

    const/4 v8, 0x0

    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v6

    add-int v2, v5, v6

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v3, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mTabNumberWidth:I

    iget v7, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mTabNumberHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x7f0201c5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->t:Landroid/widget/Toast;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->t:Landroid/widget/Toast;

    invoke-virtual {v5, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->t:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$4;-><init>(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)V

    const-wide/16 v6, 0x384

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    sget-object v5, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->TAG:Ljava/lang/String;

    const-string v6, "Displayed tab number. Air Browse ends."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "GestureAirTurnListener"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/service/gesture/GestureManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mIsConnectedToService:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mIsSwitchingTab:Z

    return-void
.end method


# virtual methods
.method public getStatusBarHeight()I
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public isEnableGestureAirTurn()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_engine"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_turn"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_turn_internet_window"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "GestureAirTurnListener"

    const-string v1, "isEnableGestureAirTurn = true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "GestureAirTurnListener"

    const-string v2, "isEnableGestureAirTurn = false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public makeComingAnimation(ZI)Landroid/view/animation/Animation;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    const v2, 0x7f050003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/AirBrowseInterpolator;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/AirBrowseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$3;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$3;-><init>(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method public makeGoingAnimation(ZLandroid/widget/ImageView;I)Landroid/view/animation/Animation;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    const v2, 0x7f050007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/AirBrowseInterpolator;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/AirBrowseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;-><init>(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    const v2, 0x7f050008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method public makeTabListByID(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    invoke-interface {v5, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public onGestureEvent(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mIsSwitchingTab:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getIsAirBrowseRunning()Z

    move-result v22

    if-eqz v22, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentView;->hasWindowFocus()Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/UI;->isFindTextToolbarShowing()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isDisableAirBrowse()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v22

    if-nez v22, :cond_4

    :cond_3
    const-string v22, "GestureAirTurnListener"

    const-string v23, "onGestureEvent : event is ignored"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v22, "GestureAirTurnListener"

    const-string v23, "onGestureEvent"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    const-string v23, "com.sec.android.app.sbrowser"

    const-string v24, "0006"

    invoke-static/range {v22 .. v24}, Lcom/sec/android/app/sbrowser/applogging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v22

    if-nez v22, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setIsAirBrowseRunning(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v23

    add-int v20, v22, v23

    new-instance v13, Ljava/util/HashMap;

    move/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->makeTabListByID(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v15, 0x0

    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_b

    const-string v22, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    const-string v22, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmapRGB565FromCompositor()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->animLayout:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0a007d

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v19, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v22, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isHideURLPrefEnabled()Z

    move-result v22

    if-eqz v22, :cond_8

    const-string v22, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v22, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    :cond_8
    const-string v22, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    const-string v22, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->getStatusBarHeight()I

    move-result v22

    add-int v19, v19, v22

    :cond_a
    :goto_2
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->shouldHideUrlBArAfterAnimation:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setTabSwipeWithAirBrowseGestureInProgress(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setTabSwipeWithAirBrowseGestureInProgress(Z)V

    goto/16 :goto_0

    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->captureBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v22

    if-nez v22, :cond_7

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v22

    if-eqz v22, :cond_7

    sget-object v22, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v8

    sget-object v22, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->TAG:Ljava/lang/String;

    const-string v23, "OutOfMemoryError thrown while trying to fetch a bitmap."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v22, 0xc

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setIsAirBrowseRunning(Z)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v22, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isHideURLPrefEnabled()Z

    move-result v22

    if-nez v22, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->getStatusBarHeight()I

    move-result v22

    sub-int v19, v19, v22

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    if-eqz v21, :cond_e

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v22

    if-eqz v22, :cond_e

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isToolbarVisible()Z

    move-result v22

    if-eqz v22, :cond_e

    const/4 v9, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->getStatusBarHeight()I

    move-result v22

    add-int v19, v19, v22

    goto/16 :goto_2

    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_2

    :pswitch_0
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mIsSwitchingTab:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setTabSwipeWithAirBrowseGestureInProgress(Z)V

    const-string v22, "GestureAirTurnListener"

    const-string v23, "gesture sweep left event!!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->animLayout:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v22, v20, -0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_10

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v15

    :goto_3
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v22

    add-int/lit8 v17, v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v23, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/Tab;->isAssociatedToolBarStateDisplayed()Z

    move-result v10

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    if-eq v10, v9, :cond_f

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->shouldHideUrlBArAfterAnimation:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v22

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->ShowToolBarManually()V

    :cond_f
    const/16 v22, 0x0

    const/16 v23, 0x0

    mul-int/lit8 v24, v19, -0x1

    move/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->animLayout:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->animLayout:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->animLayout:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->makeGoingAnimation(ZLandroid/widget/ImageView;I)Landroid/view/animation/Animation;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v22, v6, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto/16 :goto_3

    :pswitch_1
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mIsSwitchingTab:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setTabSwipeWithAirBrowseGestureInProgress(Z)V

    const-string v22, "GestureAirTurnListener"

    const-string v23, "gesture sweep right event!!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->animLayout:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    if-nez v6, :cond_12

    add-int/lit8 v22, v20, -0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v15

    :goto_4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v22

    add-int/lit8 v17, v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v23, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/Tab;->isAssociatedToolBarStateDisplayed()Z

    move-result v10

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    if-eq v10, v9, :cond_11

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->shouldHideUrlBArAfterAnimation:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->ShowToolBarManually()V

    :cond_11
    const/16 v22, 0x0

    const/16 v23, 0x0

    mul-int/lit8 v24, v19, -0x1

    move/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->animLayout:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->animLayout:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->animLayout:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->makeGoingAnimation(ZLandroid/widget/ImageView;I)Landroid/view/animation/Animation;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_12
    add-int/lit8 v22, v6, -0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceConnected()V
    .locals 4

    const/4 v2, 0x1

    const-string v0, "GestureAirTurnListener"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mIsConnectedToService:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->areAllTabsLoaded()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "GestureAirTurnListener"

    const-string v1, "areAllTabsLoaded() == true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->registerAirTurnListener()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "GestureAirTurnListener"

    const-string v1, "areAllTabsLoaded() == false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 2

    const-string v0, "GestureAirTurnListener"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mIsConnectedToService:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->unregisterAirTurnListener()V

    return-void
.end method

.method public registerAirTurnListener()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    const-string v2, "GestureAirTurnListener"

    const-string v3, "register was not done : totalTabCount is less than 2"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->isEnableGestureAirTurn()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mGestureListenerRegistered:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mIsConnectedToService:Z

    if-ne v2, v3, :cond_2

    :try_start_0
    const-string v2, "GestureAirTurnListener"

    const-string v3, "registerAirTurnListener"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v3, "ir_provider"

    const-string v4, "air_motion_turn"

    invoke-virtual {v2, p0, v3, v4}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mGestureListenerRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GestureAirTurnListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerAirTurnListener : exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterAirTurnListener()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mGestureListenerRegistered:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :try_start_0
    const-string v1, "GestureAirTurnListener"

    const-string v2, "unregisterAirTurnListener"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v2, "ir_provider"

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mGestureListenerRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GestureAirTurnListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterAirTurnListener : exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
