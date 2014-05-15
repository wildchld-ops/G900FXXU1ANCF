.class public Lorg/chromium/chrome/browser/ChromeWebContentsDelegateAndroid;
.super Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;
.source "ChromeWebContentsDelegateAndroid.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;-><init>()V

    return-void
.end method

.method private static createFindMatchRectsDetails(IILandroid/graphics/RectF;)Lorg/chromium/chrome/browser/FindMatchRectsDetails;
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/FindMatchRectsDetails;

    new-array v1, p1, [Landroid/graphics/RectF;

    invoke-direct {v0, p0, v1, p2}, Lorg/chromium/chrome/browser/FindMatchRectsDetails;-><init>(I[Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-object v0
.end method

.method private static createFindNotificationDetails(ILandroid/graphics/Rect;IZ)Lorg/chromium/chrome/browser/FindNotificationDetails;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/FindNotificationDetails;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/FindNotificationDetails;-><init>(ILandroid/graphics/Rect;IZ)V

    return-object v0
.end method

.method private static createRect(IIII)Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static createRectF(FFFF)Landroid/graphics/RectF;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private static setMatchRectByIndex(Lorg/chromium/chrome/browser/FindMatchRectsDetails;ILandroid/graphics/RectF;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/FindMatchRectsDetails;->rects:[Landroid/graphics/RectF;

    aput-object p2, v0, p1

    return-void
.end method


# virtual methods
.method public onFindMatchRectsAvailable(Lorg/chromium/chrome/browser/FindMatchRectsDetails;)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method

.method public onFindResultAvailable(Lorg/chromium/chrome/browser/FindNotificationDetails;)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-void
.end method
