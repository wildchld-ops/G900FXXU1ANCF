.class public Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;
.super Ljava/lang/Object;
.source "SBrowserTabSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;,
        Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;,
        Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CRYPTONITO_STRING_ID:Ljava/lang/String; = "cryptonito"

.field public static final TAB_SAVED_STATE:Ljava/lang/String; = "tab_state"

.field private static final TAB_STATE_VERSION:I = 0x3

.field private static final TAB_STRING_ID:Ljava/lang/String; = "tab"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCancelIncognitoTabLoads:Z

.field private mCancelNormalTabLoads:Z

.field private mIsDestroyed:Z

.field private mLoadTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;

.field private mNextRestoredIndex:I

.field private mParentActivity:Landroid/app/Activity;

.field private mSaveListTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;

.field private mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

.field private mSavedActiveId:I

.field private mSavedActiveIndex:I

.field private mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

.field private mTabsToRestore:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabsToSave:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/sec/android/app/sbrowser/common/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->$assertionsDisabled:Z

    const-class v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mCancelIncognitoTabLoads:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mCancelNormalTabLoads:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mNextRestoredIndex:I

    return v0
.end method

.method static synthetic access$1012(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mNextRestoredIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mNextRestoredIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSavedActiveIndex:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->loadNextTab(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->saveListToFile([BI)V

    return-void
.end method

.method static synthetic access$1402(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;)Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->saveListToMemory(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;)Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->saveNextTab(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mCancelIncognitoTabLoads:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mCancelNormalTabLoads:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSavedActiveId:I

    return v0
.end method

.method private cleanupAllEncryptedPersistentData(I)V
    .locals 6

    sget-object v4, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v5, "cleanupAllEncryptedPersistentData"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->fileList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cryptonito"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->deleteFileAsync(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cleanupPersistentData(I)V
    .locals 10

    sget-object v8, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v9, "cleanupPersistentData"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->fileList()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v6, v0, v3

    const/4 v1, 0x0

    const-string v7, "not a number"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "cryptonito"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "cryptonito"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    :cond_0
    :goto_1
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    invoke-interface {v8, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->deleteFileAsync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "tab"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "tab"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v5

    sget-object v8, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v9, "NumberFormatException "

    invoke-static {v8, v9}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    return-void
.end method

.method private cleanupSavedData(IZI)V
    .locals 3

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v2, "cleanupSavedData"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p1, p3}, Lcom/sec/android/app/sbrowser/common/Tab;->getFilename(ZII)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->deleteFileAsync(Ljava/lang/String;)V

    return-void
.end method

.method private cleanupSavedDataAtAndId(II)V
    .locals 9

    sget-object v7, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v8, "cleanupSavedDataAtAndId"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->fileList()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "cryptonito"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "cryptonito"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    :try_start_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_0

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->deleteFileAsync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v7, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v8, "NumberFormatException "

    invoke-static {v7, v8}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tab"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tab"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method private deleteFileAsync(Ljava/lang/String;)V
    .locals 5

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v4, "deleteFileAsync"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$1;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadNextTab(I)V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v3, "APPLOGS: loadNextTab"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mIsDestroyed:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToRestore:Ljava/util/Deque;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->cleanupPersistentData(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->onStateLoaded()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->saveListToFileData(I)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;

    invoke-direct {v2, p0, p1, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;ILcom/sec/android/app/sbrowser/common/SBrowserTabSaver$1;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private loadStateInternal(I)I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v5, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v7, "APPLOGS: loadStateInternal"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    sget-boolean v5, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v25

    const/4 v14, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v27, "tab_state"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    const/4 v8, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    if-eqz v17, :cond_15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v27, "tab_state"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v22

    new-instance v21, Ljava/io/BufferedInputStream;

    invoke-direct/range {v21 .. v22}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v9, Ljava/io/DataInputStream;

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v26

    const/4 v5, 0x3

    move/from16 v0, v26

    if-ne v0, v5, :cond_14

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSavedActiveId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;->isIncognitoSelected()Z

    move-result v18

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    if-ltz v10, :cond_2

    if-ge v11, v10, :cond_2

    if-lt v12, v10, :cond_6

    :cond_2
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v13

    move-object/from16 v20, v21

    move-object v8, v9

    :goto_0
    const/4 v5, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mNextRestoredIndex:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    :cond_3
    if-eqz v20, :cond_4

    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V

    :cond_4
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V

    :cond_5
    :goto_1
    invoke-static/range {v25 .. v25}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v19

    :cond_6
    const/4 v15, 0x0

    :try_start_4
    sget-object v5, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "APPLOGS: loadStateInternallocal No. of Tabs to restored = "

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-ge v15, v10, :cond_11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSavedActiveId:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_f

    if-ne v15, v11, :cond_7

    if-nez v18, :cond_8

    :cond_7
    if-ne v15, v12, :cond_f

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    move/from16 v0, p1

    invoke-static {v2, v5, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->readState(ILandroid/app/Activity;I)Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    move-result-object v24

    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSavedActiveId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSavedActiveIndex:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    move-object/from16 v0, v24

    iget-boolean v7, v0, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->isIncognito:Z

    invoke-interface {v5, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->state:[B

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->restoreState([B)I

    move-result v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v24

    iget v6, v0, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->parentId:I

    const/4 v5, -0x1

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createTabWithNativeContents(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v23

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    sget-object v5, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "APPLOGS: loadStateInternal createTabWithNativeContents index ="

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v23, :cond_9

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->requestFocus()Z

    :cond_9
    :goto_3
    if-lt v2, v14, :cond_a

    add-int/lit8 v14, v2, 0x1

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_b
    sget-object v5, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v7, "APPLOGS: loadStateInternallocal TabState NULL !!"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v5

    move-object/from16 v20, v21

    move-object v8, v9

    :goto_4
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    :cond_c
    if-eqz v20, :cond_d

    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V

    :cond_d
    if-eqz v22, :cond_e

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V

    :cond_e
    throw v5

    :cond_f
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    move/from16 v0, p1

    invoke-static {v2, v5, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->readState(ILandroid/app/Activity;I)Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    move-result-object v24

    if-eqz v24, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    move-object/from16 v0, v24

    iget-boolean v7, v0, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->isIncognito:Z

    invoke-interface {v5, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->incrementRestoreTabCount()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    sget-object v5, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v7, "loadStateInternal adding to mTabsToRestore"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_10
    sget-object v5, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v7, "loadStateInternal localTabState NULL"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :cond_11
    move/from16 v19, v14

    :goto_5
    if-eqz v9, :cond_12

    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    :cond_12
    if-eqz v21, :cond_13

    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V

    :cond_13
    if-eqz v22, :cond_16

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V

    move-object/from16 v20, v21

    move-object v8, v9

    goto/16 :goto_1

    :cond_14
    const/16 v19, 0x0

    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mNextRestoredIndex:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :cond_15
    sget-object v5, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v7, "loadStateInternal isFileExist doesn\'t EXISTS "

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mNextRestoredIndex:I

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    goto :goto_4

    :catchall_2
    move-exception v5

    move-object/from16 v20, v21

    goto :goto_4

    :catch_1
    move-exception v13

    goto/16 :goto_0

    :catch_2
    move-exception v13

    move-object/from16 v20, v21

    goto/16 :goto_0

    :cond_16
    move-object/from16 v20, v21

    move-object v8, v9

    goto/16 :goto_1
.end method

.method private static logSaveException(Ljava/lang/Exception;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v1, "Error while saving tabs state; will attempt to continue..."

    invoke-static {v0, v1, p0}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private onStateLoaded()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v1, "onStateLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->tabStateLoaded()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->tabStateLoaded()V

    :cond_1
    return-void
.end method

.method private saveListToFile([BI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v4, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v5, "saveListToFile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v5, "saveListToFile TAB_SAVED_STATE called"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "tab_state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v1, :cond_2

    :try_start_2
    sget-object v4, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v5, "saveListToFile dataOutputStream closed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v3

    :try_start_4
    sget-object v4, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_1
    :try_start_5
    sget-object v4, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    :try_start_6
    sget-object v4, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v5, "saveListToFile dataOutputStream closed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v0, 0x0

    goto :goto_0

    :catch_2
    move-exception v3

    :try_start_7
    sget-object v4, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :goto_3
    if-eqz v0, :cond_1

    :try_start_8
    sget-object v5, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v6, "saveListToFile dataOutputStream closed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    const/4 v0, 0x0

    :cond_1
    :goto_4
    :try_start_9
    throw v4

    :catch_3
    move-exception v3

    sget-object v5, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v4

    move-object v0, v1

    goto :goto_2

    :catchall_3
    move-exception v4

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private saveListToFileData(I)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v1, "saveListToFileData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$2;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private saveListToMemory(I)[B
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v21, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v22, "saveListToMemory"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-enter p0

    const/4 v6, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v21, 0x3

    :try_start_1
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v15

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v9

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v11

    add-int v4, v9, v11

    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v13

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v17

    add-int v16, v13, v17

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v20, 0x0

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v5

    :goto_0
    move/from16 v0, v20

    if-ge v0, v5, :cond_0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_0
    const/16 v20, 0x0

    invoke-interface {v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v18

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    move/from16 v0, v20

    invoke-interface {v15, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-eqz v7, :cond_4

    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v6, 0x0

    :cond_2
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object v21, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v22, "saveListToMemory"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_0
    move-exception v8

    :goto_3
    :try_start_4
    sget-object v21, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v22, "saveListToMemory Exception"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2

    :try_start_5
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    const/4 v6, 0x0

    goto :goto_2

    :catchall_0
    move-exception v21

    :goto_4
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    const/4 v6, 0x0

    :cond_3
    throw v21

    :catchall_1
    move-exception v21

    :goto_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v21

    :catchall_2
    move-exception v21

    move-object v6, v7

    goto :goto_5

    :catchall_3
    move-exception v21

    move-object v6, v7

    goto :goto_4

    :catch_1
    move-exception v8

    move-object v6, v7

    goto :goto_3

    :cond_4
    move-object v6, v7

    goto :goto_2
.end method

.method private saveNextTab(I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v2, "saveNextTab"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v2, "saveNextTab mSaveTabTask NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/Tab;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    invoke-direct {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;Lcom/sec/android/app/sbrowser/common/Tab;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v2, "saveNextTab mSaveListTask called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;ILcom/sec/android/app/sbrowser/common/SBrowserTabSaver$1;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public addTabToSaveQueue(Lcom/sec/android/app/sbrowser/common/Tab;I)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v1, "addTabToSaveQueue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->shouldTabStateBePersisted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->saveNextTab(I)V

    return-void
.end method

.method public cancelLoadingTabs(Z)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v1, "cancelLoadingTabs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mCancelIncognitoTabLoads:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mCancelNormalTabLoads:Z

    goto :goto_0
.end method

.method public clearEncryptedState(I)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v1, "clearEncryptedState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->cleanupAllEncryptedPersistentData(I)V

    return-void
.end method

.method public clearState(I)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v1, "clearState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tab_state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->deleteFileAsync(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v1, "clearState deleteFileAsync TAB_SAVED_STATE called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->cleanupPersistentData(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->onStateLoaded()V

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mIsDestroyed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToRestore:Ljava/util/Deque;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->cancel(Z)Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->cancel(Z)Z

    :cond_4
    return-void
.end method

.method public getRestorableTabCountByInstanceId(I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "tab_state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    :try_start_0
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "tab_state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    :cond_0
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    const/4 v0, 0x0

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    const/4 v5, 0x0

    :cond_1
    :goto_2
    return v8

    :catch_0
    move-exception v4

    :goto_3
    :try_start_3
    sget-object v9, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception e"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    const/4 v2, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    const/4 v0, 0x0

    :cond_3
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    const/4 v5, 0x0

    goto :goto_2

    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    const/4 v2, 0x0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    const/4 v0, 0x0

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    const/4 v5, 0x0

    :cond_6
    throw v9

    :catchall_1
    move-exception v9

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v9

    move-object v0, v1

    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v0, v1

    move-object v2, v3

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_1

    :cond_8
    move-object v2, v3

    goto :goto_0
.end method

.method getRestoredTabCount()I
    .locals 3

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v2, "getRestoredTabCount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToRestore:Ljava/util/Deque;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public loadState(I)I
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v4, "loadState"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mCancelNormalTabLoads:Z

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mCancelIncognitoTabLoads:Z

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToRestore:Ljava/util/Deque;

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->loadStateInternal(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tab_state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->deleteFileAsync(Ljava/lang/String;)V

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v4, "loadState  TAB_SAVED_STATE deleteFileAsync called"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->cleanupSavedDataAtAndId(II)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->loadNextTab(I)V

    return v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadState exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeTabFromQueues(Lcom/sec/android/app/sbrowser/common/Tab;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v3, "removeTabFromQueues"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v2, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToRestore:Ljava/util/Deque;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabId:I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->access$400(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;)I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->cancel(Z)Z

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->loadNextTab(I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    iget v2, v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mTabId:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->cancel(Z)Z

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v3, "removeTabFromQueues  saveNextTab called"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->saveNextTab(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->cleanupSavedData(IZI)V

    return-void
.end method

.method public tabSavedState(I)V
    .locals 17

    sget-object v14, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v15, "tabSavedState"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v14

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v14, v3}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->shouldTabStateBePersisted()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v14, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v14

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v14, v6}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->shouldTabStateBePersisted()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v14, v6}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->cancel(Z)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    iget-boolean v14, v14, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mSavedState:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    iget-object v5, v14, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v14, v5}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->shouldTabStateBePersisted()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v14, v5}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v14}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v9, :cond_4

    :try_start_0
    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v4

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->getState()Ljava/lang/Object;

    move-result-object v14

    move/from16 v0, p1

    invoke-static {v11, v14, v10, v4, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->saveState(ILjava/lang/Object;Landroid/app/Activity;ZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->logSaveException(Ljava/lang/Exception;)V

    sget-object v14, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v15, "IOException attempting to save tab state"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v7

    sget-object v14, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v15, "Out of memory error while attempting to save tab state.  Erasing."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v16

    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v14, v15, v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->deleteStateFile(ILandroid/app/Activity;ZI)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v14}, Ljava/util/Deque;->clear()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->cancel(Z)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;

    iget-boolean v14, v14, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mStateSaved:Z

    if-nez v14, :cond_7

    :cond_6
    :try_start_1
    sget-object v14, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    const-string v15, "tabSavedState saveListToFile called"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->saveListToMemory(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->saveListToFile([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    invoke-static {v13}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catch_2
    move-exception v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->logSaveException(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_7
    sget-object v14, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tabSavedState saveListToFile NOT called"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Saved = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mStateSaved:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
