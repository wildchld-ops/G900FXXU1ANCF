.class Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/accessibility/AccessibilityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibratorWrapper"
.end annotation


# static fields
.field private static final MAX_VIBRATE_DURATION_MS:J = 0x1388L


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1
    .annotation runtime Lorg/chromium/content/browser/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method public hasVibrator()Z
    .locals 1
    .annotation runtime Lorg/chromium/content/browser/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    return v0
.end method

.method public vibrate(J)V
    .locals 2
    .annotation runtime Lorg/chromium/content/browser/JavascriptInterface;
    .end annotation

    const-wide/16 v0, 0x1388

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public vibrate([JI)V
    .locals 5
    .annotation runtime Lorg/chromium/content/browser/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1388

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method
