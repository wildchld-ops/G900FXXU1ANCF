.class public abstract Lcom/samsung/contacts/util/ImsLowSignalBase;
.super Ljava/lang/Object;
.source "ImsLowSignalBase.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mImsOn:Z

.field private mLowSignal:Z

.field private mRefActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mRefHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/contacts/util/ImsLowSignalBase;->mRefActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalBase;->mRefHandler:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalBase;->mRefHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method protected dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalBase;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalBase;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalBase;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalBase;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected isImsOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/util/ImsLowSignalBase;->mImsOn:Z

    return v0
.end method

.method protected isLowSignal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/util/ImsLowSignalBase;->mLowSignal:Z

    return v0
.end method

.method protected notifyLowSignalRegistraints()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/contacts/util/ImsLowSignalBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public abstract register()V
.end method

.method public registerForLowSignal(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/contacts/util/ImsLowSignalBase;->mRefHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected setAlertDialog(Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/util/ImsLowSignalBase;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method protected setImsOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/util/ImsLowSignalBase;->mImsOn:Z

    return-void
.end method

.method protected setLowSignal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/util/ImsLowSignalBase;->mLowSignal:Z

    return-void
.end method

.method public abstract showErrorDialog(I)V
.end method

.method public abstract unregister()V
.end method
