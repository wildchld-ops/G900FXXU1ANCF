.class public Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;
.super Ljava/lang/Object;
.source "MakeSim.java"


# static fields
.field private static mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

.field private static sMakeSim:Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    return-void
.end method

.method public static getInstance()Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;
    .locals 2

    sget-object v1, Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;->sMakeSim:Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimMultiOperation;

    invoke-direct {v0}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimMultiOperation;-><init>()V

    :goto_0
    new-instance v1, Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;

    invoke-direct {v1, v0}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;-><init>(Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;)V

    sput-object v1, Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;->sMakeSim:Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;

    :cond_0
    sget-object v1, Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;->sMakeSim:Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;

    return-object v1

    :cond_1
    new-instance v0, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimSingleOperation;

    invoke-direct {v0}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSimSingleOperation;-><init>()V

    goto :goto_0
.end method

.method public static getOperation()Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;
    .locals 1

    invoke-static {}, Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;->getInstance()Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;

    sget-object v0, Lcom/samsung/contacts/sim/makesimdbservice/MakeSim;->mMakeSimOperation:Lcom/samsung/contacts/sim/makesimdbservice/MakeSimOperation;

    return-object v0
.end method
