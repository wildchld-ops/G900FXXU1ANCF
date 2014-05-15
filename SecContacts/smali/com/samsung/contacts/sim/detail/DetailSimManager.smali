.class public Lcom/samsung/contacts/sim/detail/DetailSimManager;
.super Ljava/lang/Object;
.source "DetailSimManager.java"


# static fields
.field private static sDetailSim:Lcom/samsung/contacts/sim/detail/DetailSimManager;

.field private static sDetailSimOperation:Lcom/samsung/contacts/sim/detail/DetailSimOperation;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/sim/detail/DetailSimOperation;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/contacts/sim/detail/DetailSimManager;->sDetailSimOperation:Lcom/samsung/contacts/sim/detail/DetailSimOperation;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/detail/DetailSimManager;
    .locals 2

    sget-object v1, Lcom/samsung/contacts/sim/detail/DetailSimManager;->sDetailSim:Lcom/samsung/contacts/sim/detail/DetailSimManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v1, Lcom/samsung/contacts/sim/detail/DetailSimManager;

    invoke-direct {v1, v0}, Lcom/samsung/contacts/sim/detail/DetailSimManager;-><init>(Lcom/samsung/contacts/sim/detail/DetailSimOperation;)V

    sput-object v1, Lcom/samsung/contacts/sim/detail/DetailSimManager;->sDetailSim:Lcom/samsung/contacts/sim/detail/DetailSimManager;

    :cond_0
    sget-object v1, Lcom/samsung/contacts/sim/detail/DetailSimManager;->sDetailSim:Lcom/samsung/contacts/sim/detail/DetailSimManager;

    return-object v1

    :cond_1
    new-instance v0, Lcom/samsung/contacts/sim/detail/DetailSingleSimOperation;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/sim/detail/DetailSingleSimOperation;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getOperation(Landroid/content/Context;)Lcom/samsung/contacts/sim/detail/DetailSimOperation;
    .locals 1

    invoke-static {p0}, Lcom/samsung/contacts/sim/detail/DetailSimManager;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/detail/DetailSimManager;

    sget-object v0, Lcom/samsung/contacts/sim/detail/DetailSimManager;->sDetailSimOperation:Lcom/samsung/contacts/sim/detail/DetailSimOperation;

    return-object v0
.end method
