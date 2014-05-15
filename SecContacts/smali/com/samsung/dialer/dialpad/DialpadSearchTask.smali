.class public Lcom/samsung/dialer/dialpad/DialpadSearchTask;
.super Landroid/os/AsyncTask;
.source "DialpadSearchTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/samsung/dialer/dialpad/ContactItem;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mDialpadSearch:Lcom/samsung/dialer/dialpad/SmartDialSearch;

.field mIsDisplayOrderPrimary:Z

.field mIsRequestShowResult:Z

.field mSearchKeyword:Ljava/lang/String;

.field mViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mSearchKeyword:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mIsDisplayOrderPrimary:Z

    iput-object p4, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    iput-boolean p5, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mIsRequestShowResult:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->doInBackground([Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/dialpad/ContactItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground - keyword = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mSearchKeyword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mDialpadSearch:Lcom/samsung/dialer/dialpad/SmartDialSearch;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/dialer/dialpad/SmartDialSearch;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mIsDisplayOrderPrimary:Z

    invoke-direct {v0, v1, v2}, Lcom/samsung/dialer/dialpad/SmartDialSearch;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mDialpadSearch:Lcom/samsung/dialer/dialpad/SmartDialSearch;

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mDialpadSearch:Lcom/samsung/dialer/dialpad/SmartDialSearch;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mSearchKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/dialpad/SmartDialSearch;->query(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/dialpad/ContactItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewUpdater-setSearchLayout - keyword = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mSearchKeyword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mSearchKeyword:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->setSearchLayout(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mIsRequestShowResult:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchTask;->mViewUpdater:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->showSearchResult()V

    :cond_0
    return-void
.end method
