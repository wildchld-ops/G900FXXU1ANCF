.class public Lcom/sec/android/dmc/MVFDEngine$FaceROI;
.super Ljava/lang/Object;
.source "MVFDEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/dmc/MVFDEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceROI"
.end annotation


# instance fields
.field public Bottom:I

.field public Left:I

.field public Right:I

.field public Top:I

.field final synthetic this$0:Lcom/sec/android/dmc/MVFDEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/dmc/MVFDEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/dmc/MVFDEngine$FaceROI;->this$0:Lcom/sec/android/dmc/MVFDEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
