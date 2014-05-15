.class public Lorg/chromium/content/browser/LoadUrlParams;
.super Ljava/lang/Object;
.source "LoadUrlParams.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static LOAD_TYPE_BROWSER_INITIATED_HTTP_POST:I

.field public static LOAD_TYPE_DATA:I

.field public static LOAD_TYPE_DEFAULT:I

.field public static UA_OVERRIDE_FALSE:I

.field public static UA_OVERRIDE_INHERIT:I

.field public static UA_OVERRIDE_TRUE:I


# instance fields
.field mBaseUrlForDataUrl:Ljava/lang/String;

.field mCanLoadLocalResources:Z

.field private mExtraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLoadUrlType:I

.field mPostData:[B

.field mTransitionType:I

.field mUaOverrideOption:I

.field final mUrl:Ljava/lang/String;

.field mVirtualUrlForDataUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/LoadUrlParams;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/LoadUrlParams;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/chromium/content/browser/LoadUrlParams;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget v0, Lorg/chromium/content/browser/LoadUrlParams;->LOAD_TYPE_DEFAULT:I

    sget v1, Lorg/chromium/content/browser/LoadUrlParams;->LOAD_TYPE_BROWSER_INITIATED_HTTP_POST:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    sget v0, Lorg/chromium/content/browser/LoadUrlParams;->LOAD_TYPE_DEFAULT:I

    iput v0, p0, Lorg/chromium/content/browser/LoadUrlParams;->mLoadUrlType:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/LoadUrlParams;->mTransitionType:I

    sget v0, Lorg/chromium/content/browser/LoadUrlParams;->UA_OVERRIDE_INHERIT:I

    iput v0, p0, Lorg/chromium/content/browser/LoadUrlParams;->mUaOverrideOption:I

    iput-object v2, p0, Lorg/chromium/content/browser/LoadUrlParams;->mPostData:[B

    iput-object v2, p0, Lorg/chromium/content/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    iput-object v2, p0, Lorg/chromium/content/browser/LoadUrlParams;->mVirtualUrlForDataUrl:Ljava/lang/String;

    return-void
.end method

.method public static createLoadDataParams(Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/content/browser/LoadUrlParams;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/chromium/content/browser/LoadUrlParams;->createLoadDataParams(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/chromium/content/browser/LoadUrlParams;

    move-result-object v0

    return-object v0
.end method

.method public static createLoadDataParams(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/chromium/content/browser/LoadUrlParams;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "data:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, ";base64"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/chromium/content/browser/LoadUrlParams;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    sget v2, Lorg/chromium/content/browser/LoadUrlParams;->LOAD_TYPE_DATA:I

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/LoadUrlParams;->setLoadType(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/LoadUrlParams;->setTransitionType(I)V

    return-object v1
.end method

.method public static createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lorg/chromium/content/browser/LoadUrlParams;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/chromium/content/browser/LoadUrlParams;->createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content/browser/LoadUrlParams;

    move-result-object v0

    return-object v0
.end method

.method public static createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content/browser/LoadUrlParams;
    .locals 3

    invoke-static {p0, p1, p2, p5}, Lorg/chromium/content/browser/LoadUrlParams;->createLoadDataParams(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/chromium/content/browser/LoadUrlParams;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    :goto_0
    invoke-virtual {v0, p3}, Lorg/chromium/content/browser/LoadUrlParams;->setBaseUrlForDataUrl(Ljava/lang/String;)V

    if-eqz p4, :cond_3

    :goto_1
    invoke-virtual {v0, p4}, Lorg/chromium/content/browser/LoadUrlParams;->setVirtualUrlForDataUrl(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    const-string p3, "about:blank"

    goto :goto_0

    :cond_3
    const-string p4, "about:blank"

    goto :goto_1
.end method

.method public static createLoadHttpPostParams(Ljava/lang/String;[B)Lorg/chromium/content/browser/LoadUrlParams;
    .locals 2

    new-instance v0, Lorg/chromium/content/browser/LoadUrlParams;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/chromium/content/browser/LoadUrlParams;->LOAD_TYPE_BROWSER_INITIATED_HTTP_POST:I

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/LoadUrlParams;->setLoadType(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/LoadUrlParams;->setTransitionType(I)V

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/LoadUrlParams;->setPostData([B)V

    return-object v0
.end method

.method private static initializeConstants(IIIIII)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sput p0, Lorg/chromium/content/browser/LoadUrlParams;->LOAD_TYPE_DEFAULT:I

    sput p1, Lorg/chromium/content/browser/LoadUrlParams;->LOAD_TYPE_BROWSER_INITIATED_HTTP_POST:I

    sput p2, Lorg/chromium/content/browser/LoadUrlParams;->LOAD_TYPE_DATA:I

    sput p3, Lorg/chromium/content/browser/LoadUrlParams;->UA_OVERRIDE_INHERIT:I

    sput p4, Lorg/chromium/content/browser/LoadUrlParams;->UA_OVERRIDE_FALSE:I

    sput p5, Lorg/chromium/content/browser/LoadUrlParams;->UA_OVERRIDE_TRUE:I

    return-void
.end method

.method private static native nativeIsDataScheme(Ljava/lang/String;)Z
.end method


# virtual methods
.method getExtraHeadersString()Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lorg/chromium/content/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/chromium/content/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getLoadUrlType()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/LoadUrlParams;->mLoadUrlType:I

    return v0
.end method

.method public getTransitionType()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/LoadUrlParams;->mTransitionType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isBaseUrlDataScheme()Z
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/LoadUrlParams;->mLoadUrlType:I

    sget v1, Lorg/chromium/content/browser/LoadUrlParams;->LOAD_TYPE_DATA:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/content/browser/LoadUrlParams;->nativeIsDataScheme(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBaseUrlForDataUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    return-void
.end method

.method public setCanLoadLocalResources(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/LoadUrlParams;->mCanLoadLocalResources:Z

    return-void
.end method

.method public setExtraHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    return-void
.end method

.method public setLoadType(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/LoadUrlParams;->mLoadUrlType:I

    return-void
.end method

.method public setOverrideUserAgent(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/LoadUrlParams;->mUaOverrideOption:I

    return-void
.end method

.method public setPostData([B)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/LoadUrlParams;->mPostData:[B

    return-void
.end method

.method public setTransitionType(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/LoadUrlParams;->mTransitionType:I

    return-void
.end method

.method public setVirtualUrlForDataUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/LoadUrlParams;->mVirtualUrlForDataUrl:Ljava/lang/String;

    return-void
.end method
