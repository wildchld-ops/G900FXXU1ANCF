.class public Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;
.super Ljava/lang/Object;
.source "SbrPasswordManagerUtility.java"


# static fields
.field private static final ADD:I = 0x0

.field private static final DELETE:I = 0x2

.field private static final DELETE_ALL:I = 0x3

.field private static final UPDATE:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFingerCheckBoxValue:Z

.field private mNativeSbrPasswordManagerUtility:I

.field private mWebLoginDatabase:Lorg/samsung/chrome/browser/SbrWebLoginProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SbrPasswordManagerUtility"

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->mWebLoginDatabase:Lorg/samsung/chrome/browser/SbrWebLoginProvider;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->mFingerCheckBoxValue:Z

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->nativeInit()I

    move-result v0

    iput v0, p0, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->mNativeSbrPasswordManagerUtility:I

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->mContext:Landroid/content/Context;

    new-instance v0, Lorg/samsung/chrome/browser/SbrWebLoginProvider;

    invoke-direct {v0, p1}, Lorg/samsung/chrome/browser/SbrWebLoginProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->mWebLoginDatabase:Lorg/samsung/chrome/browser/SbrWebLoginProvider;

    return-void
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeInit()I
.end method


# virtual methods
.method public decryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-object p1
.end method

.method public destroy()V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->mNativeSbrPasswordManagerUtility:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->nativeDestroy(I)V

    return-void
.end method

.method public encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    return-object p1
.end method

.method public getWebPassDatabaseInstance()Lorg/samsung/chrome/browser/SbrWebLoginProvider;
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->mWebLoginDatabase:Lorg/samsung/chrome/browser/SbrWebLoginProvider;

    return-object v0
.end method

.method public notifyDBChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "empty"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v4, "empty"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const/4 v2, 0x0

    if-eqz p4, :cond_2

    if-ne p4, v5, :cond_3

    :cond_2
    if-eq v2, v5, :cond_4

    :cond_3
    const/4 v4, 0x3

    if-ne p4, v4, :cond_5

    :cond_4
    iget-object v4, p0, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->mWebLoginDatabase:Lorg/samsung/chrome/browser/SbrWebLoginProvider;

    invoke-virtual {v4, p1, v0, v3, p4}, Lorg/samsung/chrome/browser/SbrWebLoginProvider;->notifyFingerPrintDBChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->setFingerCheckBoxValue(Z)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public setFingerCheckBoxValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;->mFingerCheckBoxValue:Z

    return-void
.end method
