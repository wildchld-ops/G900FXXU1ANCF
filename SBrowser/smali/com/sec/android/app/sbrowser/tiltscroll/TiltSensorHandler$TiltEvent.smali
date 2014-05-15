.class public Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;
.super Ljava/lang/Object;
.source "TiltSensorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TiltEvent"
.end annotation


# static fields
.field public static final TILT_AXIS_NONE:I = 0x0

.field public static final TILT_AXIS_X:I = 0x1

.field public static final TILT_AXIS_Y:I = 0x2

.field public static final TILT_AXIS_Z:I = 0x4

.field public static final TILT_DIRECTION_NEGATIVE:I = -0x1

.field public static final TILT_DIRECTION_NONE:I = 0x0

.field public static final TILT_DIRECTION_POSITIVE:I = 0x1

.field public static final TILT_LEVEL0:I = 0x0

.field public static final TILT_LEVEL1:I = 0x1

.field public static final TILT_LEVEL2:I = 0x2

.field public static final TILT_LEVEL3:I = 0x3

.field public static final TILT_LEVEL4:I = 0x4

.field public static final TILT_LEVEL_UNDEFINED:I = -0x64


# instance fields
.field private mTiltDirection:I

.field private mTiltLevel:I

.field private mTiltVal:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;->this$0:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;->mTiltLevel:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;->mTiltVal:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;->mTiltDirection:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;III)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;->this$0:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;->mTiltLevel:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;->mTiltVal:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;->mTiltDirection:I

    return-void
.end method


# virtual methods
.method public getTiltDirection()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;->mTiltDirection:I

    return v0
.end method

.method public getTiltLevel()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;->mTiltLevel:I

    return v0
.end method

.method public getTiltValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;->mTiltVal:I

    return v0
.end method
