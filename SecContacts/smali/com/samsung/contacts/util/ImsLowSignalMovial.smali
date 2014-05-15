.class public Lcom/samsung/contacts/util/ImsLowSignalMovial;
.super Lcom/samsung/contacts/util/ImsLowSignalBase;
.source "ImsLowSignalMovial.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/contacts/util/ImsLowSignalMovial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/util/ImsLowSignalMovial;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/util/ImsLowSignalBase;-><init>(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/util/ImsLowSignalMovial;->mIsReceiverRegistered:Z

    new-instance v0, Lcom/samsung/contacts/util/ImsLowSignalMovial$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/util/ImsLowSignalMovial$1;-><init>(Lcom/samsung/contacts/util/ImsLowSignalMovial;)V

    iput-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalMovial;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :try_start_0
    const-string v0, "com.movial.ipphone.IPUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IMS_REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "com.movial.ipphone.IPUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "IMS_LOWSIGNAL"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/contacts/util/ImsLowSignalMovial;->mFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalMovial;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_1
    sget-object v3, Lcom/samsung/contacts/util/ImsLowSignalMovial;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/util/ImsLowSignalMovial;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public register()V
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/contacts/util/ImsLowSignalMovial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    :try_start_0
    const-string v0, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "CELL_ONLY"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v4, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getBoolean"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalMovial;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/contacts/util/ImsLowSignalMovial;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/samsung/contacts/util/ImsLowSignalMovial;->mIsReceiverRegistered:Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/contacts/util/ImsLowSignalMovial;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v8}, Lcom/samsung/contacts/util/ImsLowSignalMovial;->setImsOn(Z)V

    invoke-virtual {p0, v8}, Lcom/samsung/contacts/util/ImsLowSignalMovial;->setLowSignal(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/util/ImsLowSignalMovial;->notifyLowSignalRegistraints()V

    goto :goto_1
.end method

.method public showErrorDialog(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/contacts/util/ImsLowSignalMovial;->dismissDialog()V

    invoke-virtual {p0}, Lcom/samsung/contacts/util/ImsLowSignalMovial;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/samsung/contacts/util/ImsLowSignalMovial$3;

    invoke-direct {v4, p0, v0}, Lcom/samsung/contacts/util/ImsLowSignalMovial$3;-><init>(Lcom/samsung/contacts/util/ImsLowSignalMovial;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/contacts/util/ImsLowSignalMovial$2;

    invoke-direct {v3, p0, v0}, Lcom/samsung/contacts/util/ImsLowSignalMovial$2;-><init>(Lcom/samsung/contacts/util/ImsLowSignalMovial;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/util/ImsLowSignalMovial;->setAlertDialog(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public unregister()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/contacts/util/ImsLowSignalMovial;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/util/ImsLowSignalMovial;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalMovial;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/util/ImsLowSignalMovial;->mIsReceiverRegistered:Z

    :cond_0
    return-void
.end method
