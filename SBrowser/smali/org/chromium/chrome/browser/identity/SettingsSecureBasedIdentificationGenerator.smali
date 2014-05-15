.class public Lorg/chromium/chrome/browser/identity/SettingsSecureBasedIdentificationGenerator;
.super Ljava/lang/Object;
.source "SettingsSecureBasedIdentificationGenerator.java"

# interfaces
.implements Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;


# static fields
.field public static final GENERATOR_ID:Ljava/lang/String; = "SETTINGS_SECURE_ANDROID_ID"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/identity/SettingsSecureBasedIdentificationGenerator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method getAndroidId()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/identity/SettingsSecureBasedIdentificationGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/identity/SettingsSecureBasedIdentificationGenerator;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, ""

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v2, Lorg/chromium/chrome/browser/util/HashUtil$Params;

    invoke-direct {v2, v0}, Lorg/chromium/chrome/browser/util/HashUtil$Params;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lorg/chromium/chrome/browser/util/HashUtil$Params;->withSalt(Ljava/lang/String;)Lorg/chromium/chrome/browser/util/HashUtil$Params;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/util/HashUtil;->getMd5Hash(Lorg/chromium/chrome/browser/util/HashUtil$Params;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0
.end method
