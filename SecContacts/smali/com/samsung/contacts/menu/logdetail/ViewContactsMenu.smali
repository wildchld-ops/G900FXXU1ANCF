.class public Lcom/samsung/contacts/menu/logdetail/ViewContactsMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "ViewContactsMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/logdetail/ViewContactsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/CallDetailActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/dialer/CallDetailActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    return v2
.end method
