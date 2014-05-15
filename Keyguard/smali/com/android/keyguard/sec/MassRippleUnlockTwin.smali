.class public Lcom/android/keyguard/sec/MassRippleUnlockTwin;
.super Landroid/widget/FrameLayout;
.source "MassRippleUnlockTwin.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;
    }
.end annotation


# instance fields
.field protected final ANIMATION_DURATION:F

.field final CIRCLE_AFFORDANCE_ROUND_SIZE:F

.field final CIRCLE_ROUND_SIZE:F

.field private final COUNT_ANIMATION:I

.field final MAX_RIPPLE_COUNT:I

.field final MSG_AFFORDANCE_TOUCH:I

.field final MSG_FIRST_TOUCH:I

.field final MSG_TIME_TICK:I

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field private diffPressTime:J

.field drawRippleCount:I

.field firstTouch_X:I

.field firstTouch_Y:I

.field private indexAni:I

.field private isPlayAffordance:Z

.field private isStartUnlock:Z

.field private isSystemSoundChecked:Z

.field protected mCircleMain:Landroid/widget/FrameLayout;

.field private mCircleRoot:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field mHandler:Landroid/os/Handler;

.field mMovingRippleCount:I

.field private mRDownId:I

.field private mRUpId:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private massRipple:[Landroid/widget/ImageView;

.field prevMovingDistance:F

.field private prevPressTime:J

.field scale:[Landroid/view/animation/Animation;

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field touchedEventX:F

.field touchedEventY:F

.field typeStorke:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->COUNT_ANIMATION:I

    new-array v1, v6, [Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const-wide v1, 0x3fe99999a0000000L

    iput-wide v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v1, 0x3ff4ccccc0000000L

    iput-wide v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->UNLOCK_DRAG_THRESHOLD:D

    const v1, 0x44a28000

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->ANIMATION_DURATION:F

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    iput v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->drawRippleCount:I

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->typeStorke:[F

    const/high16 v1, 0x4391

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->CIRCLE_ROUND_SIZE:F

    const/high16 v1, 0x4360

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->CIRCLE_AFFORDANCE_ROUND_SIZE:F

    iput v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->MSG_FIRST_TOUCH:I

    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->MSG_AFFORDANCE_TOUCH:I

    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->MSG_TIME_TICK:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->MAX_RIPPLE_COUNT:I

    iput v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    iput-boolean v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isPlayAffordance:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    new-instance v1, Lcom/android/keyguard/sec/MassRippleUnlockTwin$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin$1;-><init>(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mHandler:Landroid/os/Handler;

    iput-object v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iput-object v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->diffPressTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevPressTime:J

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundNum:I

    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundTime:I

    iput v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->SOUND_ID_DOWN:I

    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->SOUND_ID_UP:I

    const v1, 0x7f05000a

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRDownId:I

    const v1, 0x7f05000b

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRUpId:I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030018

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-array v1, v6, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->setLayout()V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x44t 0x42t
        0xcdt 0xcct 0xd4t 0x41t
        0x0t 0x0t 0x14t 0x42t
        0x0t 0x0t 0xf0t 0x41t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundTime:I

    return v0
.end method

.method private checkSound()V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v4, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearAllViews()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private playDragSound(I)V
    .locals 9

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    new-instance v7, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;-><init>(Lcom/android/keyguard/sec/MassRippleUnlockTwin;I)V

    invoke-virtual {v7}, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;->run()V

    goto :goto_0
.end method

.method private playSound(I)V
    .locals 7

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private setSound()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_0

    const-string v2, "MassRippleUnlockTwin"

    const-string v3, "show mSoundPool is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    new-instance v0, Ljava/io/File;

    const-string v2, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-virtual {v3, v4, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v7

    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-virtual {v3, v4, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v6

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRDownId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v2, v7

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRUpId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v2, v6

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->clearAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    :cond_0
    return-void
.end method

.method public getCircleSize(IZ)F
    .locals 3

    const/high16 v2, 0x4391

    if-eqz p2, :cond_0

    const/high16 v0, 0x4360

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x41a0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x385

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const-string v5, "MassRippleUnlockTwin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "touchedEventX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "touchedEventY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "MassRippleUnlockTwin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insdieViewTouchedEventX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "insdieViewTouchedEventY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return v10

    :pswitch_0
    const-string v5, "MassRippleUnlockTwin"

    const-string v6, "ACTION_DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    if-ne v5, v8, :cond_2

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    if-ne v5, v8, :cond_2

    const-string v5, "MassRippleUnlockTwin"

    const-string v6, "ACTION_DOWN First Touch"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v5, v2

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    float-to-int v5, v3

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    :goto_1
    iput v9, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-nez v5, :cond_1

    new-instance v5, Landroid/media/SoundPool;

    const/16 v6, 0xa

    invoke-direct {v5, v6, v10, v9}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    new-array v5, v12, [I

    iput-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    new-instance v0, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-virtual {v6, v7, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v9

    :goto_2
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-virtual {v6, v7, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v10

    :cond_1
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevPressTime:J

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->diffPressTime:J

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    iget v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    invoke-virtual {p0, v5, v6, v9, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->rippeDown(FFIZ)V

    invoke-direct {p0, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->playSound(I)V

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    iput v9, v4, Landroid/os/Message;->what:I

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    float-to-int v5, v5

    iput v5, v4, Landroid/os/Message;->arg1:I

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    float-to-int v5, v5

    iput v5, v4, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_2
    iput v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    iput v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    iput v11, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    goto/16 :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRDownId:I

    invoke-virtual {v6, v7, v8, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v5, v9

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRUpId:I

    invoke-virtual {v6, v7, v8, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v5, v10

    goto :goto_3

    :pswitch_1
    const-string v5, "MassRippleUnlockTwin"

    const-string v6, "ACTION_MOVE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->moveToDistanceIs20percent(FF)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->drawRippleCount:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    iget v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    iget v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    sub-float/2addr v6, v7

    invoke-virtual {p0, v5, v6, v12, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->rippeDown(FFIZ)V

    :goto_4
    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->drawRippleCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->drawRippleCount:I

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    invoke-direct {p0, v10}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->playDragSound(I)V

    :cond_5
    iget-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    const-wide v7, 0x3ff4ccccc0000000L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    const-string v5, "MassRippleUnlockTwin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDistanceRatio ove DRAG threshold "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    iget v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    iget v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    sub-float/2addr v6, v7

    const/4 v7, 0x3

    invoke-virtual {p0, v5, v6, v7, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->rippeDown(FFIZ)V

    goto :goto_4

    :pswitch_2
    iput v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    iput v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    iput v11, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevPressTime:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->diffPressTime:J

    iget-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->diffPressTime:J

    const-wide/16 v7, 0x258

    cmp-long v5, v5, v7

    if-lez v5, :cond_7

    invoke-direct {p0, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->playSound(I)V

    :cond_7
    iget-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    const-wide v7, 0x3fe99999a0000000L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    const-string v5, "MassRippleUnlockTwin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDistanceRatio ove RELEASE threshold "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    return-void
.end method

.method public moveToDistanceIs20percent(FF)Z
    .locals 16

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    move/from16 v0, p1

    float-to-int v11, v0

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    move/from16 v0, p2

    float-to-int v11, v0

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const-string v10, "MassRippleUnlockTwin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onTouchEvent() : diffX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",diffY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-double v10, v1

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    int-to-double v12, v2

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double v5, v10, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    :goto_1
    int-to-double v10, v7

    const-wide/high16 v12, 0x4000

    div-double v8, v10, v12

    div-double v10, v3, v8

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    const-string v10, "MassRippleUnlockTwin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onTouchEvent() : threshold="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",mDistanceRatio="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    const-wide v12, 0x3fdccccccccccccdL

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3fdccccccccccccdL

    cmpl-double v10, v10, v12

    if-lez v10, :cond_3

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " originalCircleX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originalCircleY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " touchedEventX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", touchedEventY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    const/4 v2, 0x0

    return v2
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "MassRippleUnlockTwin"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->clearAllViews()V

    return-void
.end method

.method public rippeDown(FFIZ)V
    .locals 15

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    :cond_1
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->getCircleSize(IZ)F

    move-result v8

    iget-object v13, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v14, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    new-instance v2, Lcom/android/keyguard/sec/MassRippleImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->typeStorke:[F

    aget v4, v4, p3

    float-to-int v5, v8

    float-to-int v6, v8

    const v7, 0x44a28000

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/sec/MassRippleImageView;-><init>(Landroid/content/Context;FIIF)V

    aput-object v2, v13, v14

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v9, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v0, p1

    float-to-int v2, v0

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v10, v2, v3

    move/from16 v0, p2

    float-to-int v2, v0

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v11, v2, v3

    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveX X = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "moveY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v12, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v10, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v11, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    rem-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lineStroke = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indexAni = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public screenTurnedOff()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->clearAllViews()V

    return-void
.end method

.method public screenTurnedOn()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MassRippleUnlockTwin"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isPlayAffordance:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public setLayout()V
    .locals 5

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f04000c

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f04000d

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f04000e

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f04000f

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f040010

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f040011

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x514

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0038

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0037

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleRoot:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->checkSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->setSound()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "MassRippleUnlockTwin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnlockAffordance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startDelay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    iget-boolean v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isPlayAffordance:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->rippeDown(FFIZ)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v5, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
