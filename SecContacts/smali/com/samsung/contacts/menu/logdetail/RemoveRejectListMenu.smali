.class public Lcom/samsung/contacts/menu/logdetail/RemoveRejectListMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "RemoveRejectListMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/logdetail/RemoveRejectListMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v1}, Lcom/samsung/dialer/util/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/util/ArrayList;)V

    const/4 v2, 0x1

    return v2
.end method
