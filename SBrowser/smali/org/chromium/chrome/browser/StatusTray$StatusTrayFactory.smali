.class public Lorg/chromium/chrome/browser/StatusTray$StatusTrayFactory;
.super Ljava/lang/Object;
.source "StatusTray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/StatusTray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusTrayFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Lorg/chromium/chrome/browser/StatusTray;
    .locals 1

    new-instance v0, Lorg/chromium/chrome/browser/StatusTray;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/StatusTray;-><init>()V

    return-object v0
.end method
