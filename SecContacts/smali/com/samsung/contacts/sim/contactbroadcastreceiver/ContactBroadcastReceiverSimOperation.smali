.class public abstract Lcom/samsung/contacts/sim/contactbroadcastreceiver/ContactBroadcastReceiverSimOperation;
.super Ljava/lang/Object;
.source "ContactBroadcastReceiverSimOperation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isSimDBInitializeNeeded(Landroid/content/Context;I)Z
.end method

.method public abstract makeSimDbService(Landroid/content/Context;ILandroid/content/Intent;)V
.end method
