.class public Lcom/kikin/KikinGlobal;
.super Ljava/lang/Object;
.source "KikinGlobal.java"


# static fields
.field public static final EXTRA_IS_KIKIN_RESULT:Ljava/lang/String; = "com.android.browser.is_kikin_result"

.field public static IS_ENABLED:Z = false

.field private static final KIKIN_FORCE_DISABLED_KEY:Ljava/lang/String; = "kikin_force_disabled"

.field private static final KIKIN_SYSTEM_DISABLED_KEY:Ljava/lang/String; = "kikin_system_disabled"

.field public static final KIKIN_TUTORIAL_FINISHED:Ljava/lang/String; = "kikin_tutorial_finished"

.field public static final KIKIN_TUTORIAL_STARTED:Ljava/lang/String; = "kikin_tutorial_started"

.field private static final KIKIN_USER_DISABLED_KEY:Ljava/lang/String; = "kikin_user_disabled"

.field private static final TAG:Ljava/lang/String; = "KikinGlobal"

.field public static final USER_AGREED_KIKIN_TERMS:Ljava/lang/String; = "user_agreed_kikin_terms"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUserAgreedKikinTerms(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_agreed_kikin_terms"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/kikin/KikinGlobal;->isSystemDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/kikin/KikinGlobal;->isForceDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isForceDisabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kikin_force_disabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSystemDisabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kikin_system_disabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static setForceDisabled(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kikin_force_disabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p0}, Lcom/kikin/KikinGlobal;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    return-void
.end method

.method public static setSystemDisabled(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kikin_system_disabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p0}, Lcom/kikin/KikinGlobal;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUserAgreedKikinTerms(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_agreed_kikin_terms"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
