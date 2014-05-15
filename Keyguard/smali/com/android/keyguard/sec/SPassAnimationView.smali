.class public Lcom/android/keyguard/sec/SPassAnimationView;
.super Landroid/view/View;
.source "SPassAnimationView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;
    }
.end annotation


# instance fields
.field private final FAILED_STATUS:I

.field private final IDLE_ANIM_STATUS:I

.field private final IDLE_STATUS:I

.field private final PASSED_STATUS:I

.field private final SCANNING_STATUS:I

.field private final SUCCEED_STATUS:I

.field private TAG:Ljava/lang/String;

.field private final WAITING_STATUS:I

.field private mAlphaValue:I

.field private mAnimationDuration:J

.field mAnimationListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

.field private final mArrowImgArray:[I

.field private final mArrowImgCount:I

.field private mFrameIndex:I

.field private mFrameInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mIdIemgArray:[I

.field private final mIdleImgCountt:I

.field private mIsFinished:Z

.field private mIsLast:Z

.field private final mMismatchImgArray:[I

.field private final mMismatchImgCnt:I

.field private mOverConsumeTimeTotal:J

.field private mPreviousHitTime:J

.field private mRemainFrame:J

.field private mResId:I

.field private mScaleValue:D

.field private final mScanImgArray:[I

.field private final mScanImgCnt:I

.field private mStatus:I

.field private mTotalFrame:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0x22

    const/16 v5, 0xf

    const/16 v4, 0xa

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "SPassAnimationView"

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->IDLE_STATUS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->SCANNING_STATUS:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->FAILED_STATUS:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->PASSED_STATUS:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->WAITING_STATUS:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->SUCCEED_STATUS:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->IDLE_ANIM_STATUS:I

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mPreviousHitTime:J

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationDuration:J

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    iput v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mMismatchImgCnt:I

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mMismatchImgArray:[I

    iput v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScanImgCnt:I

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScanImgArray:[I

    iput v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIdleImgCountt:I

    new-array v0, v6, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIdIemgArray:[I

    const/16 v0, 0x31

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mArrowImgCount:I

    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mArrowImgArray:[I

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassAnimationView;->init()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x57t 0x2t 0x2t 0x7ft
        0x58t 0x2t 0x2t 0x7ft
        0x59t 0x2t 0x2t 0x7ft
        0x5at 0x2t 0x2t 0x7ft
        0x5bt 0x2t 0x2t 0x7ft
        0x5ct 0x2t 0x2t 0x7ft
        0x5dt 0x2t 0x2t 0x7ft
        0x5et 0x2t 0x2t 0x7ft
        0x5ft 0x2t 0x2t 0x7ft
        0x60t 0x2t 0x2t 0x7ft
        0x61t 0x2t 0x2t 0x7ft
        0x62t 0x2t 0x2t 0x7ft
        0x63t 0x2t 0x2t 0x7ft
        0x64t 0x2t 0x2t 0x7ft
        0x65t 0x2t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x66t 0x2t 0x2t 0x7ft
        0x67t 0x2t 0x2t 0x7ft
        0x68t 0x2t 0x2t 0x7ft
        0x69t 0x2t 0x2t 0x7ft
        0x6at 0x2t 0x2t 0x7ft
        0x6bt 0x2t 0x2t 0x7ft
        0x6ct 0x2t 0x2t 0x7ft
        0x6dt 0x2t 0x2t 0x7ft
        0x6et 0x2t 0x2t 0x7ft
        0x6ft 0x2t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x8bt 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0xabt 0x0t 0x2t 0x7ft
        0xact 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x56t 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
        0x71t 0x0t 0x2t 0x7ft
        0x72t 0x0t 0x2t 0x7ft
        0x73t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
        0x75t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
        0x81t 0x0t 0x2t 0x7ft
        0x82t 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v6, 0x22

    const/16 v5, 0xf

    const/16 v4, 0xa

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "SPassAnimationView"

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->IDLE_STATUS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->SCANNING_STATUS:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->FAILED_STATUS:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->PASSED_STATUS:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->WAITING_STATUS:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->SUCCEED_STATUS:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->IDLE_ANIM_STATUS:I

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mPreviousHitTime:J

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationDuration:J

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    iput v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mMismatchImgCnt:I

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mMismatchImgArray:[I

    iput v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScanImgCnt:I

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScanImgArray:[I

    iput v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIdleImgCountt:I

    new-array v0, v6, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIdIemgArray:[I

    const/16 v0, 0x31

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mArrowImgCount:I

    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mArrowImgArray:[I

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassAnimationView;->init()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x57t 0x2t 0x2t 0x7ft
        0x58t 0x2t 0x2t 0x7ft
        0x59t 0x2t 0x2t 0x7ft
        0x5at 0x2t 0x2t 0x7ft
        0x5bt 0x2t 0x2t 0x7ft
        0x5ct 0x2t 0x2t 0x7ft
        0x5dt 0x2t 0x2t 0x7ft
        0x5et 0x2t 0x2t 0x7ft
        0x5ft 0x2t 0x2t 0x7ft
        0x60t 0x2t 0x2t 0x7ft
        0x61t 0x2t 0x2t 0x7ft
        0x62t 0x2t 0x2t 0x7ft
        0x63t 0x2t 0x2t 0x7ft
        0x64t 0x2t 0x2t 0x7ft
        0x65t 0x2t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x66t 0x2t 0x2t 0x7ft
        0x67t 0x2t 0x2t 0x7ft
        0x68t 0x2t 0x2t 0x7ft
        0x69t 0x2t 0x2t 0x7ft
        0x6at 0x2t 0x2t 0x7ft
        0x6bt 0x2t 0x2t 0x7ft
        0x6ct 0x2t 0x2t 0x7ft
        0x6dt 0x2t 0x2t 0x7ft
        0x6et 0x2t 0x2t 0x7ft
        0x6ft 0x2t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x8bt 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0xabt 0x0t 0x2t 0x7ft
        0xact 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x56t 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
        0x71t 0x0t 0x2t 0x7ft
        0x72t 0x0t 0x2t 0x7ft
        0x73t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
        0x75t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
        0x81t 0x0t 0x2t 0x7ft
        0x82t 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private fireAnmationEnd(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;->onAnimationEnd(I)V

    :cond_0
    return-void
.end method

.method private nextFrame(IZ)V
    .locals 9

    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassAnimationView;->setIsLast()V

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mMismatchImgArray:[I

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iget-object v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mMismatchImgArray:[I

    array-length v5, v5

    if-lt v3, v5, :cond_3

    const/4 v3, 0x0

    :goto_0
    aget v0, v4, v3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SPassAnimationView;->setResourceId(I)V

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassAnimationView;->postInvalidate()V

    :cond_1
    iget-boolean v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    :cond_2
    return-void

    :cond_3
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    long-to-double v5, v5

    div-double v1, v3, v5

    const-wide v3, 0x406fe00000000000L

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAlphaValue:I

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    if-nez v3, :cond_5

    const-wide/high16 v3, 0x3fe0

    iput-wide v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    :goto_2
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    goto :goto_1

    :cond_5
    const-wide/high16 v3, 0x3fe0

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_8

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mArrowImgArray:[I

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iget-object v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mArrowImgArray:[I

    array-length v5, v5

    if-lt v3, v5, :cond_7

    const/4 v3, 0x0

    :goto_3
    aget v0, v4, v3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SPassAnimationView;->setResourceId(I)V

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    const-wide/16 v3, 0x7d0

    const/16 v5, 0x26

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/keyguard/sec/SPassAnimationView;->setAnimationTime(JI)V

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SPassAnimationView;->startAnimation(I)V

    goto/16 :goto_1

    :cond_7
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    goto :goto_3

    :cond_8
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIdIemgArray:[I

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iget-object v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIdIemgArray:[I

    array-length v5, v5

    if-lt v3, v5, :cond_a

    const/4 v3, 0x0

    :goto_4
    aget v0, v4, v3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SPassAnimationView;->setResourceId(I)V

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_9

    iget-wide v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    :cond_9
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    const-wide/16 v3, 0x459

    const/16 v5, 0x22

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/keyguard/sec/SPassAnimationView;->setAnimationTime(JI)V

    const/4 v3, 0x1

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/keyguard/sec/SPassAnimationView;->startAnimation(IJ)V

    goto/16 :goto_1

    :cond_a
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    goto :goto_4

    :cond_b
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScanImgArray:[I

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iget-object v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScanImgArray:[I

    array-length v5, v5

    if-lt v3, v5, :cond_c

    const/4 v3, 0x0

    :goto_5
    aget v0, v4, v3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SPassAnimationView;->setResourceId(I)V

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    goto/16 :goto_1

    :cond_c
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    goto :goto_5
.end method

.method private setIsLast()V
    .locals 5

    const/4 v4, 0x1

    iget-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    iput-boolean v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mResId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    const-wide/16 v11, 0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    iget v5, p1, Landroid/os/Message;->what:I

    iget v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    if-ne v6, v10, :cond_0

    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    :cond_0
    iget-boolean v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsFinished:Z

    if-nez v6, :cond_1

    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SPassAnimationView;->fireAnmationEnd(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return v10

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mPreviousHitTime:J

    sub-long v3, v0, v6

    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    iget-wide v8, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    sub-long v8, v3, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    cmp-long v6, v6, v11

    if-lez v6, :cond_5

    :goto_1
    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    iget-wide v8, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    cmp-long v6, v6, v11

    if-nez v6, :cond_4

    invoke-direct {p0, v5, v10}, Lcom/android/keyguard/sec/SPassAnimationView;->nextFrame(IZ)V

    :goto_2
    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    iget-wide v8, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/sec/SPassAnimationView;->nextFrame(IZ)V

    goto :goto_2

    :cond_5
    iput-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mPreviousHitTime:J

    invoke-direct {p0, v5, v10}, Lcom/android/keyguard/sec/SPassAnimationView;->nextFrame(IZ)V

    iget-boolean v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    iget-wide v7, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public init()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsFinished:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020273

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SPassAnimationView;->getWidth()I

    move-result v23

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fe0

    mul-double v19, v23, v25

    const-wide/16 v21, 0x0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SPassAnimationView;->getResourceId()I

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SPassAnimationView;->getWidth()I

    move-result v23

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fe0

    mul-double v19, v23, v25

    const-wide/16 v21, 0x0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SPassAnimationView;->getResourceId()I

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SPassAnimationView;->getWidth()I

    move-result v23

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fe0

    mul-double v19, v23, v25

    const-wide/16 v21, 0x0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SPassAnimationView;->getResourceId()I

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SPassAnimationView;->getWidth()I

    move-result v23

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fe0

    mul-double v19, v23, v25

    const-wide/16 v21, 0x0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020273

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020274

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mAlphaValue:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SPassAnimationView;->getWidth()I

    move-result v23

    sub-int v23, v23, v18

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fe0

    mul-double v19, v23, v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SPassAnimationView;->getHeight()I

    move-result v23

    sub-int v23, v23, v8

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fe0

    mul-double v21, v23, v25

    new-instance v17, Landroid/graphics/Rect;

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v23, v0

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v25, v0

    add-double v25, v25, v19

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    int-to-double v0, v8

    move-wide/from16 v26, v0

    add-double v26, v26, v19

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SPassAnimationView;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    sub-double v23, v23, v25

    const-wide/high16 v25, 0x3fe0

    mul-double v13, v23, v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SPassAnimationView;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    int-to-double v0, v8

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    sub-double v23, v23, v25

    const-wide/high16 v25, 0x3fe0

    mul-double v15, v23, v25

    new-instance v7, Landroid/graphics/Rect;

    double-to-int v0, v13

    move/from16 v23, v0

    double-to-int v0, v15

    move/from16 v24, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    add-double v25, v25, v13

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    int-to-double v0, v8

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v26, v26, v13

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public setAnimationTime(JI)V
    .locals 4

    iput-wide p1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationDuration:J

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    iget-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationDuration:J

    iget-wide v2, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    iget-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    iput-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    return-void
.end method

.method public setResourceId(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mResId:I

    return-void
.end method

.method public setSPassAnimationListener(Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

    return-void
.end method

.method public startAnimation(I)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    iget-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationDuration:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    cmp-long v1, v1, v4

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsFinished:Z

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAlphaValue:I

    const-wide/high16 v1, 0x3fe0

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    iput-wide v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mPreviousHitTime:J

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public startAnimation(IJ)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    iget-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationDuration:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    cmp-long v1, v1, v4

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsFinished:Z

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAlphaValue:I

    const-wide/high16 v1, 0x3fe0

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    iput-wide v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mPreviousHitTime:J

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public stopAnimation(I)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
