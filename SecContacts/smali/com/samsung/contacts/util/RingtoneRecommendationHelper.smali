.class public Lcom/samsung/contacts/util/RingtoneRecommendationHelper;
.super Ljava/lang/Object;
.source "RingtoneRecommendationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;

.field private mOffset:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecommendUri:Landroid/net/Uri;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$1;-><init>(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)V

    iput-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mRecommendUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->returnResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mOffset:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;

    return-object v0
.end method

.method private returnResult()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;

    iget-object v1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mRecommendUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;->onRingtoneRecommend(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public doExtract()V
    .locals 3

    :try_start_0
    new-instance v1, Lcom/samsung/audio/Smat;

    invoke-direct {v1}, Lcom/samsung/audio/Smat;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$2;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$2;-><init>(Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)V

    invoke-virtual {v1}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$2;->start()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getRingtoneRecommendation(Lcom/samsung/audio/Smat;)V
    .locals 9

    const/4 v7, 0x0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v3, Lcom/samsung/audio/Smat;

    invoke-direct {v3}, Lcom/samsung/audio/Smat;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/audio/Smat;->extract()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    :pswitch_0
    const-wide/16 v5, 0xc8

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/audio/Smat;->get_stat()I

    move-result v4

    if-eq v1, v4, :cond_1

    move v1, v4

    iput v7, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mOffset:I

    packed-switch v4, :pswitch_data_0

    :pswitch_1
    const-string v5, "RingtoneRecommendationHelper"

    const-string v6, "Nothing selected"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/audio/Smat;->get_info()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    mul-int/lit16 v5, v5, 0x3e8

    iput v5, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mOffset:I

    invoke-virtual {p1}, Lcom/samsung/audio/Smat;->deinit()I

    iget-object v5, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/audio/Smat;->deinit()I

    iget-object v5, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/audio/Smat;->deinit()I

    iget-object v5, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isRecommendSupported(Lcom/samsung/audio/Smat;)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v10, Lcom/samsung/audio/Smat;

    invoke-direct {v10}, Lcom/samsung/audio/Smat;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v10

    :cond_0
    const/4 v8, 0x0

    const-string v0, "RingtoneRecommendationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested Uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v11

    :goto_0
    return v0

    :catch_0
    move-exception v7

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v11

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p1, v8, v11}, Lcom/samsung/audio/Smat;->init(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p1}, Lcom/samsung/audio/Smat;->deinit()I

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v11

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    move v0, v11

    goto :goto_0

    :catch_1
    move-exception v7

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    move v0, v11

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/audio/Smat;->is_extractable()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/audio/Smat;->deinit()I

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v11

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;

    invoke-interface {v0}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;->onDoExtractInActivity()V

    :cond_6
    move v0, v12

    goto :goto_0
.end method
