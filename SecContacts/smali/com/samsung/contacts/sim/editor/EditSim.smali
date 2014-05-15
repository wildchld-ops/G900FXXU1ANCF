.class public Lcom/samsung/contacts/sim/editor/EditSim;
.super Ljava/lang/Object;
.source "EditSim.java"


# static fields
.field private static mEditSimOperation:Lcom/samsung/contacts/sim/editor/EditSimOperation;

.field private static sEditSim:Lcom/samsung/contacts/sim/editor/EditSim;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/sim/editor/EditSimOperation;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/contacts/sim/editor/EditSim;->mEditSimOperation:Lcom/samsung/contacts/sim/editor/EditSimOperation;

    return-void
.end method

.method public static getInstance()Lcom/samsung/contacts/sim/editor/EditSim;
    .locals 2

    sget-object v1, Lcom/samsung/contacts/sim/editor/EditSim;->sEditSim:Lcom/samsung/contacts/sim/editor/EditSim;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation;

    invoke-direct {v0}, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation;-><init>()V

    :goto_0
    new-instance v1, Lcom/samsung/contacts/sim/editor/EditSim;

    invoke-direct {v1, v0}, Lcom/samsung/contacts/sim/editor/EditSim;-><init>(Lcom/samsung/contacts/sim/editor/EditSimOperation;)V

    sput-object v1, Lcom/samsung/contacts/sim/editor/EditSim;->sEditSim:Lcom/samsung/contacts/sim/editor/EditSim;

    :cond_0
    sget-object v1, Lcom/samsung/contacts/sim/editor/EditSim;->sEditSim:Lcom/samsung/contacts/sim/editor/EditSim;

    return-object v1

    :cond_1
    new-instance v0, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;

    invoke-direct {v0}, Lcom/samsung/contacts/sim/editor/EditSingleSimOperation;-><init>()V

    goto :goto_0
.end method

.method public static getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;
    .locals 1

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getInstance()Lcom/samsung/contacts/sim/editor/EditSim;

    sget-object v0, Lcom/samsung/contacts/sim/editor/EditSim;->mEditSimOperation:Lcom/samsung/contacts/sim/editor/EditSimOperation;

    return-object v0
.end method
