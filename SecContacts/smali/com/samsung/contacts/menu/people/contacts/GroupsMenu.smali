.class public Lcom/samsung/contacts/menu/people/contacts/GroupsMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "GroupsMenu.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/contacts/menu/people/contacts/GroupsMenu;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/menu/people/contacts/GroupsMenu;->mContext:Landroid/content/Context;

    const-string v1, "0021"

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/GroupsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/contacts/activities/GroupListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/GroupsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
