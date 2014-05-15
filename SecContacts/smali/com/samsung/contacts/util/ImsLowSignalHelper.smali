.class public Lcom/samsung/contacts/util/ImsLowSignalHelper;
.super Ljava/lang/Object;
.source "ImsLowSignalHelper.java"


# instance fields
.field private mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/contacts/util/ImsLowSignalMovial;

    invoke-direct {v1, v0}, Lcom/samsung/contacts/util/ImsLowSignalMovial;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-direct {v1, v0}, Lcom/samsung/contacts/util/ImsLowSignalWfc;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    goto :goto_0
.end method


# virtual methods
.method public isImsOn()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    invoke-virtual {v0}, Lcom/samsung/contacts/util/ImsLowSignalBase;->isImsOn()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLowSignal()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    invoke-virtual {v0}, Lcom/samsung/contacts/util/ImsLowSignalBase;->isLowSignal()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForLowSignal(Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/util/ImsLowSignalBase;->registerForLowSignal(Ljava/lang/ref/WeakReference;)V

    :cond_0
    return-void
.end method

.method public registerImsReceiver(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    invoke-virtual {v0}, Lcom/samsung/contacts/util/ImsLowSignalBase;->register()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    invoke-virtual {v0}, Lcom/samsung/contacts/util/ImsLowSignalBase;->unregister()V

    goto :goto_0
.end method

.method public showErrorDialog(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/samsung/contacts/util/ImsLowSignalBase;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/util/ImsLowSignalBase;->showErrorDialog(I)V

    :cond_0
    return-void
.end method
