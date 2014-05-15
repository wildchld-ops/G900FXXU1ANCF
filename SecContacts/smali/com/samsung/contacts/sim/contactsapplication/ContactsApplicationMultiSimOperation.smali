.class public Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationMultiSimOperation;
.super Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSimOperation;
.source "ContactsApplicationMultiSimOperation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSimOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public sendBroadcast(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SIM_DB_INIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SIM2_DB_INIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
