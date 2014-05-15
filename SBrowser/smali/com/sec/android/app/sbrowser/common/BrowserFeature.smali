.class public Lcom/sec/android/app/sbrowser/common/BrowserFeature;
.super Ljava/lang/Object;
.source "BrowserFeature.java"


# static fields
.field public static final TouchWiz4_0:I = 0x0

.field public static final TouchWiz5_0:I = 0x1

.field public static final TouchWizVersion:I = 0x1

.field public static final useBrightness:Z = false

.field public static final useColors:Z = true

.field public static final useColorsUI:Z = false

.field public static final useSystemBrightness:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static useBrightness()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static useSystemBrightness()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
