.class public Lorg/chromium/content/browser/ResourceExtractor;
.super Ljava/lang/Object;
.source "ResourceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ResourceExtractor$ExtractTask;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LAST_LANGUAGE:Ljava/lang/String; = "Last language"

.field private static final LOGTAG:Ljava/lang/String; = "ResourceExtractor"

.field private static final MOSTVISITED_MHTML:Ljava/lang/String; = "mostvisited.mhtml"

.field private static final PAK_FILENAMES:Ljava/lang/String; = "Pak filenames"

.field private static final PINNED_MHTML:Ljava/lang/String; = "pinned.mhtml"

.field private static final QUICK_ACCESS_MANDATORY_FILES:[Ljava/lang/String; = null

.field private static final QUICK_LAUNCH_MHTML_OP_DONE:Ljava/lang/String; = "quick_launch_file_op"

.field private static sExtractImplicitLocalePak:Z

.field private static sInstance:Lorg/chromium/content/browser/ResourceExtractor;

.field private static sMandatoryPaks:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtractTask:Lorg/chromium/content/browser/ResourceExtractor$ExtractTask;

.field private mOutputDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v0, Lorg/chromium/content/browser/ResourceExtractor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ResourceExtractor;->$assertionsDisabled:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/content/browser/ResourceExtractor;->sMandatoryPaks:[Ljava/lang/String;

    sput-boolean v1, Lorg/chromium/content/browser/ResourceExtractor;->sExtractImplicitLocalePak:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "mostvisited.mhtml"

    aput-object v3, v0, v2

    const-string v2, "pinned.mhtml"

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/content/browser/ResourceExtractor;->QUICK_ACCESS_MANDATORY_FILES:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/ResourceExtractor;->mContext:Landroid/content/Context;

    const-string v0, "VerificationLog"

    const-string v1, "ResourceExtractor - getOutputDirFromContext - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ResourceExtractor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/content/browser/ResourceExtractor;->getOutputDirFromContext(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ResourceExtractor;->mOutputDir:Ljava/io/File;

    const-string v0, "VerificationLog"

    const-string v1, "ResourceExtractor - getOutputDirFromContext - end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ResourceExtractor;->sMandatoryPaks:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ResourceExtractor;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ResourceExtractor;->mOutputDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ResourceExtractor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ResourceExtractor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/content/browser/ResourceExtractor;->sExtractImplicitLocalePak:Z

    return v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ResourceExtractor;->QUICK_ACCESS_MANDATORY_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method public static deleteFiles(Landroid/content/Context;)V
    .locals 9

    const-string v6, "VerificationLog"

    const-string v7, "ResourceExtractor - deleteFiles - start"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lorg/chromium/content/browser/ResourceExtractor;->getOutputDirFromContext(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ResourceExtractor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to remove existing resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "VerificationLog"

    const-string v7, "ResourceExtractor - deleteFiles - end"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/content/browser/ResourceExtractor;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ResourceExtractor;->sInstance:Lorg/chromium/content/browser/ResourceExtractor;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/ResourceExtractor;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ResourceExtractor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/content/browser/ResourceExtractor;->sInstance:Lorg/chromium/content/browser/ResourceExtractor;

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ResourceExtractor;->sInstance:Lorg/chromium/content/browser/ResourceExtractor;

    return-object v0
.end method

.method public static getOutputDirFromContext(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/base/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "paks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setExtractImplicitLocaleForTesting(Z)V
    .locals 2

    sget-boolean v0, Lorg/chromium/content/browser/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ResourceExtractor;->sInstance:Lorg/chromium/content/browser/ResourceExtractor;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ResourceExtractor;->sInstance:Lorg/chromium/content/browser/ResourceExtractor;

    iget-object v0, v0, Lorg/chromium/content/browser/ResourceExtractor;->mExtractTask:Lorg/chromium/content/browser/ResourceExtractor$ExtractTask;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must be called before startExtractingResources is called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sput-boolean p0, Lorg/chromium/content/browser/ResourceExtractor;->sExtractImplicitLocalePak:Z

    return-void
.end method

.method public static varargs setMandatoryPaksToExtract([Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lorg/chromium/content/browser/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ResourceExtractor;->sInstance:Lorg/chromium/content/browser/ResourceExtractor;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ResourceExtractor;->sInstance:Lorg/chromium/content/browser/ResourceExtractor;

    iget-object v0, v0, Lorg/chromium/content/browser/ResourceExtractor;->mExtractTask:Lorg/chromium/content/browser/ResourceExtractor$ExtractTask;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must be called before startExtractingResources is called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sput-object p0, Lorg/chromium/content/browser/ResourceExtractor;->sMandatoryPaks:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public startExtractingResources()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/ResourceExtractor;->mExtractTask:Lorg/chromium/content/browser/ResourceExtractor$ExtractTask;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "VerificationLog"

    const-string v1, "ResourceExtractor - startExtractingResources - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/chromium/content/browser/ResourceExtractor$ExtractTask;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ResourceExtractor$ExtractTask;-><init>(Lorg/chromium/content/browser/ResourceExtractor;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ResourceExtractor;->mExtractTask:Lorg/chromium/content/browser/ResourceExtractor$ExtractTask;

    iget-object v0, p0, Lorg/chromium/content/browser/ResourceExtractor;->mExtractTask:Lorg/chromium/content/browser/ResourceExtractor$ExtractTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/ResourceExtractor$ExtractTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "VerificationLog"

    const-string v1, "ResourceExtractor - startExtractingResources - end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public waitForCompletion()V
    .locals 5

    const-string v3, "VerificationLog"

    const-string v4, "ResourceExtractor - waitForCompletion - start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lorg/chromium/content/browser/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/chromium/content/browser/ResourceExtractor;->mExtractTask:Lorg/chromium/content/browser/ResourceExtractor$ExtractTask;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/chromium/content/browser/ResourceExtractor;->mExtractTask:Lorg/chromium/content/browser/ResourceExtractor$ExtractTask;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ResourceExtractor$ExtractTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const-string v3, "VerificationLog"

    const-string v4, "ResourceExtractor - waitForCompletion - stop"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lorg/chromium/content/browser/ResourceExtractor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/content/browser/ResourceExtractor;->deleteFiles(Landroid/content/Context;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v3, p0, Lorg/chromium/content/browser/ResourceExtractor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/content/browser/ResourceExtractor;->deleteFiles(Landroid/content/Context;)V

    goto :goto_0

    :catch_2
    move-exception v2

    iget-object v3, p0, Lorg/chromium/content/browser/ResourceExtractor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/content/browser/ResourceExtractor;->deleteFiles(Landroid/content/Context;)V

    goto :goto_0
.end method
