.class public Lcom/samsung/contacts/util/ImsLowSignalWfc;
.super Lcom/samsung/contacts/util/ImsLowSignalBase;
.source "ImsLowSignalWfc.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsRegistered:Z

.field private mLowSignalObserver:Landroid/database/ContentObserver;

.field private mRegistrationStateObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/util/ImsLowSignalBase;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->mLowSignalObserver:Landroid/database/ContentObserver;

    iput-boolean v2, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->mIsRegistered:Z

    new-instance v0, Lcom/samsung/contacts/util/ImsLowSignalWfc$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/util/ImsLowSignalWfc$1;-><init>(Lcom/samsung/contacts/util/ImsLowSignalWfc;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/contacts/util/ImsLowSignalWfc$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/util/ImsLowSignalWfc$2;-><init>(Lcom/samsung/contacts/util/ImsLowSignalWfc;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->mLowSignalObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->setImsOn(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->setLowSignal(Z)V

    iput-boolean v2, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->mIsRegistered:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public register()V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/samsung/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;

    const-string v4, "mLowSignalObserver/register()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegister(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$LowSignalContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->mLowSignalObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v3, v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->setImsOn(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isLowSignal(Landroid/content/ContentResolver;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->setLowSignal(Z)V

    iput-boolean v2, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->mIsRegistered:Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->notifyLowSignalRegistraints()V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->setImsOn(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->setLowSignal(Z)V

    goto :goto_0
.end method

.method public showErrorDialog(I)V
    .locals 3

    sget-object v0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLowSignalObserver/showErrorDialog(), resid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->dismissDialog()V

    invoke-virtual {p0}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/samsung/tmowfc/wfcutils/StandardDialogs;->showTextDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregister()V
    .locals 3

    sget-object v1, Lcom/samsung/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;

    const-string v2, "mLowSignalObserver/unregister()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->mIsRegistered:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->mLowSignalObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc;->mIsRegistered:Z

    :cond_0
    return-void
.end method
