.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$ActivityResult;
.super Ljava/lang/Object;
.source "MainActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActivityResult"
.end annotation


# instance fields
.field public final data:Landroid/content/Intent;

.field public final requestCode:I

.field public final resultCode:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$ActivityResult;->requestCode:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$ActivityResult;->resultCode:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$ActivityResult;->data:Landroid/content/Intent;

    return-void
.end method
