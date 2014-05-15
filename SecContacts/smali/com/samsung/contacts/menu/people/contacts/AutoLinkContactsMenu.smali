.class public Lcom/samsung/contacts/menu/people/contacts/AutoLinkContactsMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "AutoLinkContactsMenu.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/contacts/menu/people/contacts/AutoLinkContactsMenu;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.contacts.action.AUTO_LINK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/menu/people/contacts/AutoLinkContactsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    return v1
.end method
