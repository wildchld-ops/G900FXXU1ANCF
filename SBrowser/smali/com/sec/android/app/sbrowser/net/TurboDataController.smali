.class public Lcom/sec/android/app/sbrowser/net/TurboDataController;
.super Ljava/lang/Object;
.source "TurboDataController.java"


# static fields
.field static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field static final FILE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.app.sbrowser/app_sbrowser/Default/turbo data"

.field private static final MILLIS_30DAYS:J = 0x9a7ec800L

.field private static final MILLIS_PER_DAY:J = 0x5265c00L

.field private static final MILLIS_PER_HOUR:J = 0x36ee80L

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field private static final MILLIS_PER_SECOND:J = 0x3e8L

.field static final PREF_DATA_COMPRESSION_COMPRESSED_SIZE:Ljava/lang/String; = "data_compression_compressed_size"

.field static final PREF_DATA_COMPRESSION_ORIGINAL_SIZE:Ljava/lang/String; = "data_compression_original_size"

.field static final TAG:Ljava/lang/String; = "TurboDataController"

.field static final TODAY_COMPRESSED_SIZE:Ljava/lang/String; = "data_compression_compressed_size_today"

.field static final TODAY_ORIGINAL_SIZE:Ljava/lang/String; = "data_compression_original_size_today"

.field static final TURBO_LAST_MODIFIED:Ljava/lang/String; = "data_compression_last_modified"


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDateChanged()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "data_compression_last_modified"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "TurboDataController"

    const-string v1, " mjtest : checkDateChanged() - TURBO_LAST_MODIFIED is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_compression_last_modified"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "data_compression_last_modified"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentDate()Ljava/util/Date;
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentDateString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getCurrentDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTurboCompressedSize()J
    .locals 8

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, "TurboDataController"

    const-string v7, "updateTurboTodayData() can\'t get the context"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v4

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "data_compression_compressed_size"

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "data_compression_compressed_size_today"

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    add-long v4, v0, v2

    goto :goto_0
.end method

.method public getTurboOriginalSize()J
    .locals 8

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, "TurboDataController"

    const-string v7, "updateTurboTodayData() can\'t get the context"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v4

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "data_compression_original_size"

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "data_compression_original_size_today"

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    add-long v4, v0, v2

    goto :goto_0
.end method

.method public loadDataFromFile()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/net/TurboData;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v9, "/data/data/com.sec.android.app.sbrowser/app_sbrowser/Default/turbo data"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "TurboDataController"

    const-string v10, "loadDataFromFile() - File not exist!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v3, :cond_0

    :try_start_1
    throw v3

    :cond_0
    if-eqz v5, :cond_1

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    :cond_1
    :goto_0
    return-object v8

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_4

    const-string v9, "TurboDataController"

    const-string v10, "loadDataFromFile() - No data"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v3, :cond_3

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    :cond_3
    if-eqz v5, :cond_1

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_5
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/data/data/com.sec.android.app.sbrowser/app_sbrowser/Default/turbo data"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_d

    :try_start_7
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_e

    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_6
    :goto_2
    move-object v5, v6

    move-object v3, v4

    :cond_7
    :goto_3
    move-object v8, v7

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_4
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_8

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_8
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    :goto_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_6
    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v3, :cond_9

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    :cond_9
    if-eqz v5, :cond_7

    :try_start_d
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    :goto_7
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v3, :cond_a

    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    :cond_a
    if-eqz v5, :cond_7

    :try_start_10
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_5

    :catchall_0
    move-exception v8

    :goto_8
    if-eqz v3, :cond_b

    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :cond_c
    :goto_9
    throw v8

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto :goto_5

    :catch_c
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v8

    move-object v3, v4

    goto :goto_8

    :catchall_2
    move-exception v8

    move-object v5, v6

    move-object v3, v4

    goto :goto_8

    :catch_d
    move-exception v1

    move-object v3, v4

    goto :goto_7

    :catch_e
    move-exception v1

    move-object v5, v6

    move-object v3, v4

    goto :goto_7

    :catch_f
    move-exception v1

    move-object v3, v4

    goto :goto_6

    :catch_10
    move-exception v1

    move-object v5, v6

    move-object v3, v4

    goto :goto_6

    :catch_11
    move-exception v1

    move-object v3, v4

    goto :goto_4

    :catch_12
    move-exception v1

    move-object v5, v6

    move-object v3, v4

    goto :goto_4
.end method

.method public resetTurboData()Z
    .locals 5

    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "TurboDataController"

    const-string v2, "resetTurboData() can\'t get the context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "data_compression_original_size"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "data_compression_compressed_size"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "data_compression_original_size_today"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "data_compression_compressed_size_today"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "data_compression_last_modified"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.sec.android.app.sbrowser/app_sbrowser/Default/turbo data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v1, "TurboDataController"

    const-string v2, "resetTurboData() - Turbo data deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public saveDataToFile(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/net/TurboData;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.sec.android.app.sbrowser/app_sbrowser/Default/turbo data"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TurboDataController"

    const-string v4, "saveDataToFile() - File exist"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :goto_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/data/data/com.sec.android.app.sbrowser/app_sbrowser/Default/turbo data"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    :goto_1
    return-void

    :cond_0
    const-string v3, "TurboDataController"

    const-string v4, "saveDataToFile() - File not exist, so create new file"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public updateTurboData(II)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "TurboDataController"

    const-string v2, "resetTurboData() can\'t get the context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->checkDateChanged()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->updateTurboTodayData(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->updateTurboOverallData(II)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public updateTurboOverallData(II)Z
    .locals 20

    const-string v16, "TurboDataController"

    const-string v17, "updateTurboOverallData() called"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getContext()Landroid/content/Context;

    move-result-object v16

    if-nez v16, :cond_0

    const-string v16, "TurboDataController"

    const-string v17, "updateTurboOverallData() can\'t get the context"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    :goto_0
    return v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    new-instance v14, Lcom/sec/android/app/sbrowser/net/TurboData;

    invoke-direct {v14}, Lcom/sec/android/app/sbrowser/net/TurboData;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "data_compression_last_modified"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/sec/android/app/sbrowser/net/TurboData;->setDate(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "data_compression_compressed_size_today"

    const-wide/16 v18, 0x0

    invoke-interface/range {v16 .. v19}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/sec/android/app/sbrowser/net/TurboData;->setCompressedSize(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "data_compression_original_size_today"

    const-wide/16 v18, 0x0

    invoke-interface/range {v16 .. v19}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/sec/android/app/sbrowser/net/TurboData;->setOriginalSize(J)V

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->loadDataFromFile()Ljava/util/ArrayList;

    move-result-object v15

    if-nez v15, :cond_3

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/net/TurboData;->getOriginalSize()J

    move-result-wide v12

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/net/TurboData;->getCompressedSize()J

    move-result-wide v10

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->saveDataToFile(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v17, "data_compression_compressed_size"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v17, "data_compression_original_size"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v17, "data_compression_compressed_size_today"

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v17, "data_compression_original_size_today"

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v17, "data_compression_last_modified"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getCurrentDateString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getCurrentDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide v16, 0x9a7ec800L

    sub-long v8, v3, v16

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/util/Date;->setTime(J)V

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_2

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/sbrowser/net/TurboData;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/net/TurboData;->getDate()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v16

    if-ltz v16, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v16

    if-ltz v16, :cond_6

    :cond_4
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/sbrowser/net/TurboData;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/net/TurboData;->getOriginalSize()J

    move-result-wide v16

    add-long v12, v12, v16

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/sbrowser/net/TurboData;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/net/TurboData;->getCompressedSize()J

    move-result-wide v16

    add-long v10, v10, v16

    goto :goto_2
.end method

.method public updateTurboTodayData(II)Z
    .locals 8

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "TurboDataController"

    const-string v5, "updateTurboTodayData() can\'t get the context"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "data_compression_original_size_today"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "data_compression_compressed_size_today"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    int-to-long v4, p2

    add-long/2addr v2, v4

    int-to-long v4, p1

    add-long/2addr v0, v4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "data_compression_original_size_today"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/net/TurboDataController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "data_compression_compressed_size_today"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v4, 0x1

    goto :goto_0
.end method
