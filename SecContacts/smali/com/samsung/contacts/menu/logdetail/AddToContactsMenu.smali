.class public Lcom/samsung/contacts/menu/logdetail/AddToContactsMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "AddToContactsMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/logdetail/AddToContactsMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity;

    iget-object v1, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/dialer/util/CallLogUtil;->addToContact(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
