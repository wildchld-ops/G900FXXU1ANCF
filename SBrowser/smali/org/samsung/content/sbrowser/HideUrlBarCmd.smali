.class public Lorg/samsung/content/sbrowser/HideUrlBarCmd;
.super Ljava/lang/Object;
.source "HideUrlBarCmd.java"


# static fields
.field public static final SET_URLBAR_ACTIVE:I = 0x2

.field public static final SET_URLBAR_BITMAP:I = 0x1


# instance fields
.field public cmd:I

.field public override_allowed:Z

.field public urlbar_active:Z

.field public urlbar_bitmap:Landroid/graphics/Bitmap;

.field public urlbar_hidden:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
