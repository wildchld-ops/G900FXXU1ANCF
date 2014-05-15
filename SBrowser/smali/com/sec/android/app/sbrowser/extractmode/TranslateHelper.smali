.class public Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;
.super Ljava/lang/Object;
.source "TranslateHelper.java"


# static fields
.field private static mSupportedSrcLangs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSupportedTargetLangs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mTranslateHelper:Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;->mTranslateHelper:Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;->mTranslateHelper:Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;->mTranslateHelper:Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;

    return-object v0
.end method

.method public static setSupportedLanguages([[Ljava/lang/String;)V
    .locals 5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;->mSupportedSrcLangs:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;->mSupportedTargetLangs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v3, p0, v1

    const/4 v4, 0x0

    aget-object v2, v3, v4

    aget-object v3, p0, v1

    const/4 v4, 0x1

    aget-object v0, v3, v4

    sget-object v3, Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;->mSupportedSrcLangs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;->mSupportedTargetLangs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public isTargetLanguageAvailable(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/extractmode/TranslateHelper;->mSupportedTargetLangs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
