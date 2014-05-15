.class public Lcom/android/keyguard/sec/SecCameraShortcut;
.super Landroid/widget/FrameLayout;
.source "SecCameraShortcut.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCameraButton:Landroid/widget/ImageView;

.field private mCurrentOrientation:F

.field private mDistance:D

.field private mFirstBorder:I

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsFirst:Z

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field private mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "SecCameraShortcut"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "SecCameraShortcut"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "SecCameraShortcut"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecCameraShortcut;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecCameraShortcut;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecCameraShortcut;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getUnlockDelay()J
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->getUnlockDelay()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v0

    goto :goto_0
.end method

.method private handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method private handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->reset()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/SecCameraShortcut$3;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut$3;-><init>(Lcom/android/keyguard/sec/SecCameraShortcut;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    const/4 v10, -0x2

    const/16 v9, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "input_method"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const v3, 0x7f0b0027

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecCameraShortcut;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c0031

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mFirstBorder:I

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c0032

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecondBorder:I

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "set_shortcuts_mode"

    invoke-static {v3, v6, v4, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/keyguard/sec/SecCameraShortcut;->setVisibility(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v8, 0x7f060067

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v8, 0x7f0600c1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "kids_home_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v1, v4

    :goto_1
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "emergency_mode"

    invoke-static {v3, v6, v5, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v0, v4

    :goto_2
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/keyguard/sec/SecCameraShortcut;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v5}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequestWithSlot(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v4}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequestWithSlot(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v9}, Lcom/android/keyguard/sec/SecCameraShortcut;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_2
.end method

.method public onScreenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "touched"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/16 v19, 0x1

    :goto_1
    return v19

    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    goto :goto_0

    :cond_0
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :cond_1
    :goto_2
    const-string v19, "ShortcutWidget"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SecCameraShortcut;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/16 v19, 0x1

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "action down"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStartX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/SecCameraShortcut;->mStartY:F

    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f020038

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_3
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f02000d

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "action up/cancel mDistance: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mFirstBorder:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v21, v0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecondBorder:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpg-double v19, v19, v21

    if-ltz v19, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecondBorder:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_4

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SecCameraShortcut;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    new-instance v19, Lcom/android/keyguard/sec/SecCameraShortcut$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut$1;-><init>(Lcom/android/keyguard/sec/SecCameraShortcut;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->getUnlockDelay()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SecCameraShortcut;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f02000d

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    goto/16 :goto_2

    :pswitch_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v17, v19, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v18, v19, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v6, v0

    int-to-double v0, v5

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    int-to-double v0, v6

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    add-double v9, v19, v21

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x3

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-double v13, v0

    div-double v11, v7, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStartX:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    move/from16 v0, v19

    float-to-int v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStartY:F

    move/from16 v19, v0

    sub-float v19, v16, v19

    move/from16 v0, v19

    float-to-int v6, v0

    int-to-double v0, v5

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    int-to-double v0, v6

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    add-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ACTION_MOVE mDistance: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecondBorder:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_5

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SecCameraShortcut;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    new-instance v19, Lcom/android/keyguard/sec/SecCameraShortcut$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut$2;-><init>(Lcom/android/keyguard/sec/SecCameraShortcut;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->getUnlockDelay()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SecCameraShortcut;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v21, v0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f020039

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f020038

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method protected rotateIcon(F)V
    .locals 7

    const/high16 v6, 0x4387

    const/high16 v4, 0x3f00

    const/4 v5, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    move v2, p1

    cmpl-float v0, v1, v5

    if-nez v0, :cond_2

    cmpl-float v0, v2, v6

    if-nez v0, :cond_2

    const/high16 v1, 0x43b4

    :cond_0
    :goto_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iput p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    :cond_1
    return-void

    :cond_2
    cmpl-float v0, v1, v6

    if-nez v0, :cond_0

    cmpl-float v0, v2, v5

    if-nez v0, :cond_0

    const/high16 v2, 0x43b4

    goto :goto_0
.end method

.method public setAdditionalUnlockView(Lcom/android/keyguard/sec/KeyguardEffectViewNone;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    return-void
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "setCallback(): null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "setCallback(): not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
