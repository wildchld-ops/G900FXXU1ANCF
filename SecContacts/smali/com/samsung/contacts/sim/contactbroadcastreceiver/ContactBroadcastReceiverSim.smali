.class public Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;
.super Ljava/lang/Object;
.source "ContactBroadcastReceiverSim.java"


# static fields
.field private static mContactBroadcastReceiverSimOperation:Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

.field private static sContactBroadcastReceiverSim:Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->mContactBroadcastReceiverSimOperation:Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    return-void
.end method

.method public static getInstance()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;
    .locals 2

    sget-object v1, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->sContactBroadcastReceiverSim:Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverMultiSimOperation;

    invoke-direct {v0}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverMultiSimOperation;-><init>()V

    :goto_0
    new-instance v1, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;

    invoke-direct {v1, v0}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;-><init>(Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;)V

    sput-object v1, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->sContactBroadcastReceiverSim:Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;

    :cond_0
    sget-object v1, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->sContactBroadcastReceiverSim:Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;

    return-object v1

    :cond_1
    new-instance v0, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSingleSimOperation;

    invoke-direct {v0}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSingleSimOperation;-><init>()V

    goto :goto_0
.end method

.method public static getOperation()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;
    .locals 1

    invoke-static {}, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->getInstance()Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;

    sget-object v0, Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSim;->mContactBroadcastReceiverSimOperation:Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;

    return-object v0
.end method
