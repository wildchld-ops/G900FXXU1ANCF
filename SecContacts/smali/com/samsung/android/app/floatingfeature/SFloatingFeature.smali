.class public final Lcom/samsung/android/app/floatingfeature/SFloatingFeature;
.super Ljava/lang/Object;
.source "SFloatingFeature.java"


# static fields
.field private static sInstance:Lcom/samsung/android/app/floatingfeature/SFloatingFeature;


# instance fields
.field private mFloatingFeatureClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mTarget:Lcom/samsung/android/feature/IFloatingFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->sInstance:Lcom/samsung/android/app/floatingfeature/SFloatingFeature;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mFloatingFeatureClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->initSFloatingFeature()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/app/floatingfeature/SFloatingFeature;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->sInstance:Lcom/samsung/android/app/floatingfeature/SFloatingFeature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;

    invoke-direct {v0}, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->sInstance:Lcom/samsung/android/app/floatingfeature/SFloatingFeature;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->sInstance:Lcom/samsung/android/app/floatingfeature/SFloatingFeature;

    return-object v0
.end method

.method private initSFloatingFeature()V
    .locals 6

    :try_start_0
    const-string v3, "com.samsung.android.feature.FloatingFeature"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mFloatingFeatureClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mFloatingFeatureClass:Ljava/lang/Class;

    const-string v5, "getInstance"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/samsung/android/feature/IFloatingFeature;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/samsung/android/feature/IFloatingFeature;

    iput-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "SFloatingFeature"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/floatingfeature/SFloatingFeature;->mTarget:Lcom/samsung/android/feature/IFloatingFeature;

    invoke-interface {v1, p1}, Lcom/samsung/android/feature/IFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SFloatingFeature"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
