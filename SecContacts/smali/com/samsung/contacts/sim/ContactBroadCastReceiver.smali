.class public Lcom/samsung/contacts/sim/ContactBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactBroadCastReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/sim/ContactBroadCastReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/16 v7, 0x1a0a

    const/16 v6, 0x15b3

    const/16 v5, 0x1e61

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ContactBroadCastReceiver"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec_container_1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "ContactBroadCastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ AirPlane mode changed!! Enable ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "AIRPLANE_MODE_DB_UPDATED"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "airplane_mode_changed"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/contacts/sim/MakeSimDBService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "op"

    const/16 v3, 0x22b8

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->getOperation()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;->makeSimDbService(Landroid/content/Context;ILandroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/contacts/sim/MakeSim2DBService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "op"

    const/16 v2, 0x22b8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.samsung.intent.action.SIM_DB_INIT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->getOperation()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;->isSimDBInitializeNeeded(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/contacts/sim/MakeSimDBService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "op"

    const/16 v3, 0x270f

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->getOperation()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;->makeSimDbService(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/contacts/sim/ContactBroadCastReceiver$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/sim/ContactBroadCastReceiver$1;-><init>(Lcom/samsung/contacts/sim/ContactBroadCastReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_5
    const-string v3, "com.samsung.intent.action.SIM2_DB_INIT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->getOperation()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;->isSimDBInitializeNeeded(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/contacts/sim/MakeSim2DBService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "op"

    const/16 v3, 0x270f

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->getOperation()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v0}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;->makeSimDbService(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/contacts/sim/ContactBroadCastReceiver$2;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/sim/ContactBroadCastReceiver$2;-><init>(Lcom/samsung/contacts/sim/ContactBroadCastReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_7
    const-string v3, "com.samsung.intent.action.PB_SYNC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/samsung/contacts/sim/MakeSimDBService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "op"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->getOperation()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v0}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;->makeSimDbService(Landroid/content/Context;ILandroid/content/Intent;)V

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->setFirstCheck(IZ)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "com.samsung.intent.action.PB2_SYNC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/contacts/sim/MakeSim2DBService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "op"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->getOperation()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v0}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;->makeSimDbService(Landroid/content/Context;ILandroid/content/Intent;)V

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->setFirstCheck(IZ)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "android.intent.action.FDN_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/contacts/sim/MakeSimDBService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "op"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->getOperation()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;->makeSimDbService(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "android.intent.action.FDN2_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/contacts/sim/MakeSim2DBService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "op"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->getOperation()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v0}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;->makeSimDbService(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "android.bluetooth.sap.intent.action.SAP_STATE_NOTIFY_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/samsung/contacts/sim/MakeSimDBService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.bluetooth.sap.intent.SAP_STATE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    const-string v3, "op"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "service_connected"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->getOperation()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;->makeSimDbService(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    if-nez v3, :cond_0

    const-string v1, "op"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "service_connected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->getOperation()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;->makeSimDbService(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_d
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContactBroadCastReceiver"

    const-string v3, "Receive ACTION_SIM_STATE_CHANGED intent"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "airplane_mode_changed"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "ContactBroadCastReceiver"

    const-string v3, "Airplane mode was turned on"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    const-string v0, "ContactBroadCastReceiver"

    const-string v3, "SIM state is ready"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/samsung/contacts/sim/MakeSimDBService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "op"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->getOperation()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v0}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;->makeSimDbService(Landroid/content/Context;ILandroid/content/Intent;)V

    invoke-static {p1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->setFirstCheck(IZ)V

    goto/16 :goto_0
.end method
