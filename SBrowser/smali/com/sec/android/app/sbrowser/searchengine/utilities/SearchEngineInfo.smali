.class public Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;
.super Ljava/lang/Object;
.source "SearchEngineInfo.java"


# static fields
.field public static final FIELD_ENCODING:I = 0x4

.field public static final FIELD_FAVICON_URI:I = 0x2

.field public static final FIELD_KEYWORD:I = 0x1

.field public static final FIELD_LABEL:I = 0x0

.field public static final FIELD_SEARCH_URI:I = 0x3

.field public static final FIELD_SUGGEST_URI:I = 0x5

.field public static final NUM_FIELDS:I = 0x6

.field private static final PARAMETER_INPUT_ENCODING:Ljava/lang/String; = "{inputEncoding}"

.field private static final PARAMETER_LANGUAGE:Ljava/lang/String; = "{language}"

.field private static final PARAMETER_SEARCH_TERMS:Ljava/lang/String; = "{searchTerms}"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private favIcon:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field public final mSearchEngineData:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SearchEngineInfo"

    sput-object v0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-class v10, Lcom/sec/android/app/sbrowser/R;

    invoke-virtual {v10}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "array"

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v10, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No resources found for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    const/4 v3, 0x0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "default_favicon_search_secret"

    const-string v11, "drawable"

    invoke-virtual {v9, v10, v11, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :goto_0
    if-nez v3, :cond_2

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No resources found for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    const-string v10, "default_favicon_search"

    const-string v11, "drawable"

    invoke-virtual {v9, v10, v11, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    if-nez p3, :cond_3

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->favIcon:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    if-nez v10, :cond_4

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No data found for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->UpdateFavIcon()V

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    array-length v10, v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_5

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has invalid number of fields - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    array-length v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has an empty search URI"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v6, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const/16 v10, 0x2d

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    const-string v13, "{language}"

    invoke-virtual {v12, v13, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v11, 0x5

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v13, 0x5

    aget-object v12, v12, v13

    const-string v13, "{language}"

    invoke-virtual {v12, v13, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const-string v11, "Bing"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v12, 0x3

    aget-object v13, v11, v12

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "&PC=SMSM&FORM=MBDPSB"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v12

    :cond_8
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    const-string v11, "{CID}"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    const-string v13, "{CID}"

    iget-object v14, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    :cond_9
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v11, 0x4

    aget-object v1, v10, v11

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v1, "UTF-8"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v11, 0x4

    aput-object v1, v10, v11

    :cond_a
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    const-string v13, "{inputEncoding}"

    invoke-virtual {v12, v13, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v11, 0x5

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v13, 0x5

    aget-object v12, v12, v13

    const-string v13, "{inputEncoding}"

    invoke-virtual {v12, v13, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    return-void
.end method

.method private getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v1, v4, v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string v5, "Bing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&PC=SMSM&FORM=MBDPSB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    const-string v4, "{searchTerms}"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured when encoding query "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private suggestUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public UpdateFavIcon()V
    .locals 9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".bmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/sbrowser/R;

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->favIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "default_favicon_search_secret"

    const-string v7, "drawable"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No resources found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    const-string v6, "default_favicon_search"

    const-string v7, "drawable"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->favIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public faviconUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getFavIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->favIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->searchUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->suggestUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public keyword()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public searchUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public supportsSuggestions()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->suggestUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchEngineInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
