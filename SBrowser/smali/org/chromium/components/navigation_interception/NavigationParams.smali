.class public Lorg/chromium/components/navigation_interception/NavigationParams;
.super Ljava/lang/Object;
.source "NavigationParams.java"


# instance fields
.field public final hasUserGesture:Z

.field public final isPost:Z

.field public final isRedirect:Z

.field public final pageTransitionType:I

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZIZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->url:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->isPost:Z

    iput-boolean p3, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->hasUserGesture:Z

    iput p4, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    iput-boolean p5, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->isRedirect:Z

    return-void
.end method

.method public static create(Ljava/lang/String;ZZIZ)Lorg/chromium/components/navigation_interception/NavigationParams;
    .locals 6
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/navigation_interception/NavigationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/components/navigation_interception/NavigationParams;-><init>(Ljava/lang/String;ZZIZ)V

    return-object v0
.end method
