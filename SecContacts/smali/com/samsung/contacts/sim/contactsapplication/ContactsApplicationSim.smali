.class public Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;
.super Ljava/lang/Object;
.source "ContactsApplicationSim.java"


# static fields
.field private static mContactsApplicationSimOperation:Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSimOperation;

.field private static sContactsApplicationSim:Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSimOperation;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;->mContactsApplicationSimOperation:Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSimOperation;

    return-void
.end method

.method public static getInstance()Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;
    .locals 2

    sget-object v1, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;->sContactsApplicationSim:Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationMultiSimOperation;

    invoke-direct {v0}, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationMultiSimOperation;-><init>()V

    :goto_0
    new-instance v1, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;

    invoke-direct {v1, v0}, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;-><init>(Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSimOperation;)V

    sput-object v1, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;->sContactsApplicationSim:Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;

    :cond_0
    sget-object v1, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;->sContactsApplicationSim:Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;

    return-object v1

    :cond_1
    new-instance v0, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSingleSimOperation;

    invoke-direct {v0}, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSingleSimOperation;-><init>()V

    goto :goto_0
.end method

.method public static getOperation()Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSimOperation;
    .locals 1

    invoke-static {}, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;->getInstance()Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;

    sget-object v0, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;->mContactsApplicationSimOperation:Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSimOperation;

    return-object v0
.end method
