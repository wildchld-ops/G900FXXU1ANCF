.class public Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;
.super Ljava/lang/Object;
.source "ReaderModel.java"


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

.field private mFont:I

.field private mParentActivity:Landroid/app/Activity;

.field private mPrefsettings:Landroid/content/SharedPreferences;

.field private mReaderScrollY:I

.field private mReadingListFont:I

.field private mReadingListPrefsettings:Landroid/content/SharedPreferences;

.field private mReadingListScrollY:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mParentActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mController:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    iput v0, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mFont:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListFont:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mParentActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mController:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    return-void
.end method


# virtual methods
.method public getReaderFontValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mFont:I

    return v0
.end method

.method public getReaderScrollYPosition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReaderScrollY:I

    return v0
.end method

.method public getReadingListFontValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListFont:I

    return v0
.end method

.method public getReadingListScrollYPosition()I
    .locals 3

    const-string v0, "READER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadingList position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListScrollY:I

    return v0
.end method

.method public setFontAndScrollPosition(ILjava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mParentActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mPrefsettings:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mPrefsettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastVisitedReaderUrl"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "readerFontSize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "readerScrollValue"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setReadingListFontAndScrollPosition(ILjava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mParentActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListPrefsettings:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListPrefsettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastVisitedReadingListUrl"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "readinglistFontSize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "readinglistScrollValue"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public startReaderPreference()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mParentActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mPrefsettings:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mController:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mPrefsettings:Landroid/content/SharedPreferences;

    const-string v6, "lastVisitedReaderUrl"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mPrefsettings:Landroid/content/SharedPreferences;

    const-string v6, "readerFontSize"

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mController:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->getReaderDefaultFont()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mFont:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mPrefsettings:Landroid/content/SharedPreferences;

    const-string v6, "readerScrollValue"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReaderScrollY:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mController:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->getReaderDefaultFont()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mFont:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mPrefsettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "lastVisitedReaderUrl"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "readerFontSize"

    iget v6, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mFont:I

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "readerScrollValue"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iput v8, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReaderScrollY:I

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public startReadingListPreference()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mParentActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListPrefsettings:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListPrefsettings:Landroid/content/SharedPreferences;

    const-string v5, "lastVisitedReadingListUrl"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mController:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->getReadingListPageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListPrefsettings:Landroid/content/SharedPreferences;

    const-string v5, "readinglistFontSize"

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mController:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->getReaderDefaultFont()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListFont:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListPrefsettings:Landroid/content/SharedPreferences;

    const-string v5, "readinglistScrollValue"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListScrollY:I

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mController:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->getReaderDefaultFont()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListFont:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListPrefsettings:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "lastVisitedReadingListUrl"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "readinglistFontSize"

    iget v5, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListFont:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "readinglistScrollValue"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iput v7, p0, Lcom/sec/android/app/sbrowser/reader/model/ReaderModel;->mReadingListScrollY:I

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
