.class public Lorg/chromium/chrome/browser/FindNotificationDetails;
.super Ljava/lang/Object;
.source "FindNotificationDetails.java"


# instance fields
.field public final activeMatchOrdinal:I

.field public final finalUpdate:Z

.field public final numberOfMatches:I

.field public final rendererSelectionRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/chrome/browser/FindNotificationDetails;->numberOfMatches:I

    iput-object p2, p0, Lorg/chromium/chrome/browser/FindNotificationDetails;->rendererSelectionRect:Landroid/graphics/Rect;

    iput p3, p0, Lorg/chromium/chrome/browser/FindNotificationDetails;->activeMatchOrdinal:I

    iput-boolean p4, p0, Lorg/chromium/chrome/browser/FindNotificationDetails;->finalUpdate:Z

    return-void
.end method
