.class public Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListPhoneUi;
.super Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;
.source "ReadingListPhoneUi.java"


# static fields
.field private static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x5


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;-><init>()V

    const-class v0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListPhoneUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListPhoneUi;->LOGTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dismissProgress(Landroid/content/Context;Lorg/chromium/content/browser/ContentView;)V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListPhoneUi;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListPhoneUi;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListPhoneUi;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListPhoneUi;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->isReadLaterActivityRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->setReadLaterActivityRunning(Z)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/chromium/content/browser/ContentView;->destroy()V

    :cond_2
    const/4 p2, 0x0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListPhoneUi;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot dismiss dialog exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListPhoneUi;->mProgressDialog:Landroid/app/ProgressDialog;

    throw v2
.end method

.method public showProgress(Landroid/content/Context;)V
    .locals 3

    const v1, 0x7f0c0146

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListPhoneUi;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListPhoneUi;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListPhoneUi;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public showToast(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
