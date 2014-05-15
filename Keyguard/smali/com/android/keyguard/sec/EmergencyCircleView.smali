.class public Lcom/android/keyguard/sec/EmergencyCircleView;
.super Landroid/widget/FrameLayout;
.source "EmergencyCircleView.java"


# instance fields
.field private isIgnoreTouch:Z

.field private mCircleUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mDistance:D

.field private mFirstBorder:I

.field private mIsFirst:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mFirstBorder:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mSecondBorder:I

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mCircleUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    return-void
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    const-wide/high16 v10, 0x4000

    const/4 v4, 0x1

    const/4 v9, 0x0

    iget-boolean v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_0

    iput-boolean v9, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mCircleUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v4, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-object v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mCircleUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v5, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    const-string v5, "EmergencyCircleView"

    const-string v6, "onTouchEvent - DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mStartX:F

    iput v3, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mStartY:F

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    :pswitch_2
    const-string v5, "EmergencyCircleView"

    const-string v6, "onTouchEvent - MOVE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mStartX:F

    sub-float v5, v2, v5

    float-to-int v0, v5

    iget v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mStartY:F

    sub-float v5, v3, v5

    float-to-int v1, v5

    int-to-double v5, v0

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    int-to-double v7, v1

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    iget-wide v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    iget v7, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mSecondBorder:I

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_2

    iput-boolean v9, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/EmergencyCircleView;->takeEmergencyCallList()V

    goto :goto_1

    :pswitch_3
    iput-boolean v4, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    :pswitch_4
    const-string v5, "EmergencyCircleView"

    const-string v6, "onTouchEvent - UP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mFirstBorder:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    iget-wide v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    iget v7, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mSecondBorder:I

    int-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    iput-boolean v9, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/EmergencyCircleView;->takeEmergencyCallList()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public takeEmergencyCallList()V
    .locals 5

    iget-object v1, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/EmergencyCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
