.class public Lcom/sec/android/dmc/MVFDEngine;
.super Ljava/lang/Object;
.source "MVFDEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/dmc/MVFDEngine$FaceROI;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native FDInit()I
.end method

.method public static native FDRelease()I
.end method

.method public static native FDRun(Landroid/graphics/Bitmap;II)I
.end method

.method public static native getFaceROI(I)Lcom/sec/android/dmc/MVFDEngine$FaceROI;
.end method
