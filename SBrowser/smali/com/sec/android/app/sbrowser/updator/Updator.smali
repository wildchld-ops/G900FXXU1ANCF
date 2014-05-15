.class public Lcom/sec/android/app/sbrowser/updator/Updator;
.super Ljava/lang/Object;
.source "Updator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/updator/Updator$1;,
        Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;,
        Lcom/sec/android/app/sbrowser/updator/Updator$OnAppUpdateListener;
    }
.end annotation


# static fields
.field public static final CSC_PATH:Ljava/lang/String; = "/system/csc/sales_code.dat"

.field public static final PATH_PD:Ljava/lang/String; = "mnt/sdcard/sbrowser_updator_pd.test"

.field public static final PTAG_APPID:Ljava/lang/String; = "appId"

.field public static final PTAG_APPINFO:Ljava/lang/String; = "appInfo"

.field public static final PTAG_RESULTCODE:Ljava/lang/String; = "resultCode"

.field public static final PTAG_RESULT_MSG:Ljava/lang/String; = "resultMsg"

.field public static final PTAG_VERSION:Ljava/lang/String; = "version"

.field public static final PTAG_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field private static final RESULT_FAIL:I = 0x0

.field private static final RESULT_SUCCESS:I = 0x1

.field public static final SBROWSER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field public static final SERVER_URL:Ljava/lang/String; = "http://hub.samsungapps.com/product/appCheck.as"

.field private static final TAG:Ljava/lang/String; = "Sbrowser_updator"


# instance fields
.field private appId:Ljava/lang/String;

.field private mAppContext:Landroid/content/Context;

.field private mCheckTask:Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;

.field private mUiListener:Lcom/sec/android/app/sbrowser/updator/Updator$OnAppUpdateListener;

.field private mUpdateNeeded:Z

.field private resultCode:Ljava/lang/String;

.field private resultMsg:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mCheckTask:Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mAppContext:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mUpdateNeeded:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->appId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->resultCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->resultMsg:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->versionCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mAppContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;-><init>(Lcom/sec/android/app/sbrowser/updator/Updator;Lcom/sec/android/app/sbrowser/updator/Updator$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mCheckTask:Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mCheckTask:Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/updator/Updator;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/updator/Updator;->checkdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/updator/Updator;)Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mCheckTask:Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/sbrowser/updator/Updator;Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;)Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mCheckTask:Lcom/sec/android/app/sbrowser/updator/Updator$CheckTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/updator/Updator;)Lcom/sec/android/app/sbrowser/updator/Updator$OnAppUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mUiListener:Lcom/sec/android/app/sbrowser/updator/Updator$OnAppUpdateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/updator/Updator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/updator/Updator;->writedate()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/updator/Updator;->readModelCMCC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/updator/Updator;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/updator/Updator;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/updator/Updator;->getMCC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/updator/Updator;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/updator/Updator;->getMNC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/updator/Updator;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/updator/Updator;->isPD()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/updator/Updator;Ljava/net/URL;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/updator/Updator;->checkUpdate(Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/updator/Updator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mUpdateNeeded:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/sbrowser/updator/Updator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mUpdateNeeded:Z

    return p1
.end method

.method private checkUpdate(Ljava/net/URL;)Z
    .locals 13

    const/4 v8, 0x0

    const/4 v12, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v9, 0x0

    invoke-interface {v3, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_0
    const/4 v9, 0x1

    if-eq v4, v9, :cond_8

    const/4 v9, 0x2

    if-ne v4, v9, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "appId"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v12, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->appId:Ljava/lang/String;

    const-string v9, "Sbrowser_updator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Update RSP] appId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->appId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    const/4 v9, 0x3

    if-ne v4, v9, :cond_1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "appInfo"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->appId:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->resultCode:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/sec/android/app/sbrowser/updator/Updator;->getResultUpdateCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    :cond_2
    const-string v9, "resultCode"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v12, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->resultCode:Ljava/lang/String;

    const-string v9, "Sbrowser_updator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Update RSP] resultCode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->resultCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v9, "Sbrowser_updator"

    const-string v10, "xml parsing error"

    invoke-static {v9, v10, v0}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_3
    :goto_2
    return v8

    :cond_4
    :try_start_3
    const-string v9, "resultMsg"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v12, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->resultMsg:Ljava/lang/String;

    const-string v9, "Sbrowser_updator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Update RSP] resultMsg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->resultMsg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string v9, "Sbrowser_updator"

    const-string v10, "Update check, network is unavailable"

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v9, "Sbrowser_updator"

    const-string v10, "Update check, in.close() fail"

    :goto_3
    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :try_start_6
    const-string v9, "version"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v12, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->version:Ljava/lang/String;

    const-string v9, "Sbrowser_updator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Update RSP] version : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->version:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_7
    const-string v9, "Sbrowser_updator"

    const-string v10, "Update check, but network fail"

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v0

    const-string v9, "Sbrowser_updator"

    const-string v10, "Update check, in.close() fail"

    goto :goto_3

    :cond_6
    :try_start_9
    const-string v9, "versionCode"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v12, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->versionCode:Ljava/lang/String;

    const-string v9, "Sbrowser_updator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Update RSP] versionCode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->versionCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_7
    :goto_4
    throw v8

    :cond_8
    if-eqz v2, :cond_9

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_9
    :goto_5
    move v8, v5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string v9, "Sbrowser_updator"

    const-string v10, "Update check, in.close() fail"

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_6
    move-exception v0

    const-string v9, "Sbrowser_updator"

    const-string v10, "Update check, in.close() fail"

    goto/16 :goto_3

    :catch_7
    move-exception v0

    const-string v8, "Sbrowser_updator"

    const-string v9, "Update check, in.close() fail"

    invoke-static {v8, v9}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private checkdate()Z
    .locals 7

    const/4 v3, 0x0

    const-string v4, "yyyy/MM/dd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mAppContext:Landroid/content/Context;

    const-string v5, "UPDATE_CHECK_DATE"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "DATE"

    const-string v5, "0000/00/00"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private getCSCVersion()Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    new-instance v3, Ljava/io/File;

    const-string v6, "/system/csc/sales_code.dat"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x14

    new-array v0, v6, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-eqz v6, :cond_1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    move-object v5, v4

    :goto_2
    return-object v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v5, v4

    goto :goto_2

    :cond_1
    :try_start_3
    new-instance v5, Ljava/lang/String;

    const-string v6, "FAIL"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private getMCC()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mAppContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string v0, ""

    if-nez v3, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :pswitch_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getMNC()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mAppContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getResultUpdateCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x0

    const-string v3, "com.sec.android.app.sbrowser"

    const-string v5, "Sbrowser_updator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResultUpdateCheck - packageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Sbrowser_updator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResultUpdateCheck - stubPackageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "0"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "Sbrowser_updator"

    const-string v6, "There is no application of the Application ID."

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "2"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "Sbrowser_updator"

    const-string v6, "Found Update"

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mAppContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "Sbrowser_updator"

    const-string v5, "sbrowser installed"

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_2
    :goto_1
    return v4

    :cond_3
    const-string v5, "1"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "Sbrowser_updator"

    const-string v6, "There is the application but it is not updatable."

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v5, "2"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Sbrowser_updator"

    const-string v6, "There is updates of the application. You can update it!"

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v5, "Sbrowser_updator"

    const-string v6, "Not found sbrowser Update"

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isCSCExistFile()Z
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Ljava/io/File;

    const-string v3, "/system/csc/sales_code.dat"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const-string v3, "Sbrowser_updator"

    const-string v4, "CSC is not exist"

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "Sbrowser_updator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCSCExistFile::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPD()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "mnt/sdcard/sbrowser_updator_pd.test"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static readModelCMCC()Ljava/lang/String;
    .locals 11

    const-string v6, ""

    const-string v5, "/system/version"

    const/4 v4, -0x1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    const/16 v8, 0x80

    new-array v0, v8, [B

    const/4 v3, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_0
    return-object v6

    :catch_0
    move-exception v1

    const-string v8, "Sbrowser_updator"

    const-string v9, "::readModelCMCC::File not found"

    invoke-static {v8, v9}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    const-string v8, "Sbrowser_updator"

    const-string v9, "::readModelCMCC::"

    invoke-static {v8, v9, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v8, "Sbrowser_updator"

    const-string v9, "::readModelCMCC:: in.close exception"

    :goto_1
    invoke-static {v8, v9, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v8

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_2
    throw v8

    :catch_3
    move-exception v1

    const-string v9, "Sbrowser_updator"

    const-string v10, "::readModelCMCC:: in.close exception"

    invoke-static {v9, v10, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_4
    move-exception v1

    const-string v8, "Sbrowser_updator"

    const-string v9, "::readModelCMCC:: in.close exception"

    goto :goto_1
.end method

.method private writedate()V
    .locals 6

    const-string v3, "yyyy/MM/dd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mAppContext:Landroid/content/Context;

    const-string v4, "UPDATE_CHECK_DATE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "DATE"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getCSC()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/updator/Updator;->isCSCExistFile()Z

    move-result v2

    if-eq v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/updator/Updator;->getCSCVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "Sbrowser_updator"

    const-string v3, "getCSC::getCSCVersion::value is null"

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_2

    const-string v2, "Sbrowser_updator"

    const-string v3, "getCSC::getCSCVersion::Fail to read CSC Version"

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public registerAppUpdateListener(Lcom/sec/android/app/sbrowser/updator/Updator$OnAppUpdateListener;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mUiListener:Lcom/sec/android/app/sbrowser/updator/Updator$OnAppUpdateListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mUiListener:Lcom/sec/android/app/sbrowser/updator/Updator$OnAppUpdateListener;

    return-void
.end method

.method public unregisterAppUpdateListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/updator/Updator;->mUiListener:Lcom/sec/android/app/sbrowser/updator/Updator$OnAppUpdateListener;

    return-void
.end method
