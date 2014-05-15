.class interface abstract Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;
.super Ljava/lang/Object;
.source "DeviceMotionAndOrientation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/DeviceMotionAndOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SensorManagerProxy"
.end annotation


# virtual methods
.method public abstract registerListener(Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)Z
.end method

.method public abstract unregisterListener(Landroid/hardware/SensorEventListener;I)V
.end method
