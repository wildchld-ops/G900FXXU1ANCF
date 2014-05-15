.class public abstract Lorg/samsung/base/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static CHANNEL_SCROLLING:Z = false

.field public static final FEATURE_HOVERING_UI:Ljava/lang/String; = "com.sec.feature.hovering_ui"

.field public static final FLAG_QRCODE:Z = true

.field public static final HOVER_LINK_PREVIEW:Z = false

.field public static final MULTI_WINDOW_TAB_FEATURE:Z = true

.field public static final TAB_LIFE_CYCLE_MANAGEMENT:Z = true

.field private static final TAG:Ljava/lang/String;

.field public static TOUCH_PERFORMANCE:Z

.field private static bInitDone:Z

.field private static mCscClassObject:Ljava/lang/Object;

.field private static mMethodgetEnableStatus:Ljava/lang/reflect/Method;

.field private static mMethodgetString:Ljava/lang/reflect/Method;

.field private static mRSSFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-class v0, Lorg/samsung/base/Feature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/samsung/base/Feature;->TAG:Ljava/lang/String;

    sput-boolean v1, Lorg/samsung/base/Feature;->CHANNEL_SCROLLING:Z

    sput-boolean v1, Lorg/samsung/base/Feature;->TOUCH_PERFORMANCE:Z

    const/4 v0, 0x0

    sput-boolean v0, Lorg/samsung/base/Feature;->bInitDone:Z

    sput-boolean v1, Lorg/samsung/base/Feature;->mRSSFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitCSCFeature()V
    .locals 8

    :try_start_0
    const-string v3, "com.sec.android.app.CscFeature"

    const-string v4, "com.sec.android.app.CscFeature"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lorg/samsung/base/Feature;->mCscClassObject:Ljava/lang/Object;

    const-string v4, "getEnableStatus"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/samsung/base/Feature;->mMethodgetEnableStatus:Ljava/lang/reflect/Method;

    const-string v4, "getString"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/samsung/base/Feature;->mMethodgetString:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    sput-boolean v4, Lorg/samsung/base/Feature;->bInitDone:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v2

    sget-object v4, Lorg/samsung/base/Feature;->TAG:Ljava/lang/String;

    const-string v5, "Class Not found **"

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v4, Lorg/samsung/base/Feature;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Received **"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEnableStatus(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-boolean v3, Lorg/samsung/base/Feature;->bInitDone:Z

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    sget-object v2, Lorg/samsung/base/Feature;->mMethodgetEnableStatus:Ljava/lang/reflect/Method;

    sget-object v3, Lorg/samsung/base/Feature;->mCscClassObject:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lorg/samsung/base/Feature;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getEnableStatus Exception Received **"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    sget-boolean v3, Lorg/samsung/base/Feature;->bInitDone:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    sget-object v3, Lorg/samsung/base/Feature;->mMethodgetString:Ljava/lang/reflect/Method;

    sget-object v4, Lorg/samsung/base/Feature;->mCscClassObject:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lorg/samsung/base/Feature;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString Exception Received **"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isQuickLaunchEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public isRssEnable()Z
    .locals 7

    const/4 v1, 0x0

    sget-boolean v2, Lorg/samsung/base/Feature;->bInitDone:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lorg/samsung/base/Feature;->mMethodgetEnableStatus:Ljava/lang/reflect/Method;

    sget-object v2, Lorg/samsung/base/Feature;->mCscClassObject:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    const-string v6, "CscFeature_Web_DisableRSS"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lorg/samsung/base/Feature;->mRSSFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-boolean v1, Lorg/samsung/base/Feature;->mRSSFlag:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Feature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception Received **"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
