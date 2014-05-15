.class Lcom/samsung/contacts/util/ImsLowSignalWfc$1;
.super Landroid/database/ContentObserver;
.source "ImsLowSignalWfc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/util/ImsLowSignalWfc;-><init>(Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/util/ImsLowSignalWfc;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$1;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$1;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v0}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$1;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$1;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v0}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v0

    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->setImsOn(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$1;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v0}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->notifyLowSignalRegistraints()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mRegistrationStateObserver/onChange(): getActivity() is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
