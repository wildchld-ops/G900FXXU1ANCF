.class public Lcom/samsung/contacts/menu/people/favorites/FavoriteAddMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "FavoriteAddMenu.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/contacts/menu/people/favorites/FavoriteAddMenu;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/menu/people/favorites/FavoriteAddMenu;->mContext:Landroid/content/Context;

    const-string v2, "0018"

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.contacts.action.FAVORITE_ADD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/favorites/FavoriteAddMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
