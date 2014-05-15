.class public Lorg/samsung/content/sbrowser/AirGestureListener;
.super Ljava/lang/Object;
.source "AirGestureListener.java"

# interfaces
.implements Lcom/samsung/android/service/gesture/GestureListener;
.implements Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;


# static fields
.field public static final AIR_MOTION_AIRJUMP:I = 0x0

.field public static final AIR_MOTION_AIRPIN:I = 0x1

.field public static final AIR_MOTION_NONE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AirGestureListener"


# instance fields
.field private final AIR_MOTION_PROVIDER:Ljava/lang/String;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

.field private mMotionType:I

.field private mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;


# direct methods
.method public constructor <init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ir_provider"

    iput-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->AIR_MOTION_PROVIDER:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mConnected:Z

    iput-object v2, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iput v1, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mMotionType:I

    iput-object p2, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    return-void
.end method

.method public static checkAirJumpEnalbed(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll_web_page"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private doScrollToPage(I)V
    .locals 9

    const/4 v7, 0x1

    iget-object v4, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isDisableAirJump()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4, v7}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setAirJumping(Z)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-object v5, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBegin(FF)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onPause()V

    :cond_0
    iget-object v4, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mContext:Landroid/content/Context;

    instance-of v4, v4, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v4, :cond_2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-object v4, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getHeightBottomToolbar()I

    move-result v4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getHeightControlContainer()I

    move-result v5

    add-int v0, v4, v5

    if-gtz v2, :cond_1

    iget-object v4, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-ne p1, v7, :cond_2

    :cond_1
    sub-int/2addr v3, v0

    :cond_2
    iget-object v4, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    int-to-double v5, v3

    const-wide v7, 0x3fee666666666666L

    mul-double/2addr v5, v7

    double-to-float v5, v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setScrollPageCount(I)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollToPage(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onGestureEvent(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "AirGestureListener"

    const-string v1, " GESTURE_EVENT_SWEEP_LEFT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v0, "AirGestureListener"

    const-string v1, " GESTURE_EVENT_SWEEP_RIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v0, "AirGestureListener"

    const-string v1, " GESTURE_EVENT_SWEEP_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/AirGestureListener;->doScrollToPage(I)V

    goto :goto_0

    :pswitch_4
    const-string v0, "AirGestureListener"

    const-string v1, " GESTURE_EVENT_SWEEP_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/AirGestureListener;->doScrollToPage(I)V

    goto :goto_0

    :pswitch_5
    const-string v0, "AirGestureListener"

    const-string v1, " GESTURE_EVENT_HOVER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onServiceConnected()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "AirGestureListener"

    const-string v1, " Service is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mConnected:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-nez v0, :cond_0

    const-string v0, "AirGestureListener"

    const-string v1, " mGestureManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mMotionType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_scroll"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mMotionType:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_clip"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 2

    const-string v0, "AirGestureListener"

    const-string v1, " Service is disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-nez v0, :cond_0

    const-string v0, "AirGestureListener"

    const-string v1, " mGestureManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mConnected:Z

    goto :goto_0
.end method

.method public startAirGestureLintener(I)V
    .locals 3

    const-string v0, "AirGestureListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " startAirGestureLintener, motionType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/samsung/content/sbrowser/AirGestureListener;->checkAirJumpEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setAirJumping(Z)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/service/gesture/GestureManager;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    :cond_1
    iput p1, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mMotionType:I

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mConnected:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mMotionType:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_scroll"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mMotionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_clip"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/AirGestureListener;->stopAirGestureLintener()V

    goto :goto_0
.end method

.method public stopAirGestureLintener()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "AirGestureListener"

    const-string v1, "stopAirGestureLintener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-nez v0, :cond_1

    const-string v0, "AirGestureListener"

    const-string v1, " mGestureManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setAirJumping(Z)V

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lorg/samsung/content/sbrowser/AirGestureListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    goto :goto_0
.end method
