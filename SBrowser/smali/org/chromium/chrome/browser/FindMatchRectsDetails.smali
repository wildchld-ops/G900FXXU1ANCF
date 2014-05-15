.class public Lorg/chromium/chrome/browser/FindMatchRectsDetails;
.super Ljava/lang/Object;
.source "FindMatchRectsDetails.java"


# instance fields
.field public final activeRect:Landroid/graphics/RectF;

.field public final rects:[Landroid/graphics/RectF;

.field public final version:I


# direct methods
.method public constructor <init>(I[Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/chrome/browser/FindMatchRectsDetails;->version:I

    iput-object p2, p0, Lorg/chromium/chrome/browser/FindMatchRectsDetails;->rects:[Landroid/graphics/RectF;

    iput-object p3, p0, Lorg/chromium/chrome/browser/FindMatchRectsDetails;->activeRect:Landroid/graphics/RectF;

    return-void
.end method
