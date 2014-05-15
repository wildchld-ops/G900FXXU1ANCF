.class public Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;
.super Ljava/lang/Object;
.source "SbrWebsiteSettingsUtils.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopupExceptionInfo"
.end annotation


# instance fields
.field private mPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;->mPattern:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAllowed()Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    iget-object v3, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;->mPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getPopupExceptionSettingFromPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "allow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "block"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public setAllowed(Ljava/lang/Boolean;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;->mPattern:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setPopupException(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->removePopupException(Ljava/lang/String;)V

    goto :goto_0
.end method
