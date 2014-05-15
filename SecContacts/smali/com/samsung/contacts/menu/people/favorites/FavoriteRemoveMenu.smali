.class public Lcom/samsung/contacts/menu/people/favorites/FavoriteRemoveMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "FavoriteRemoveMenu.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/contacts/menu/people/favorites/FavoriteRemoveMenu;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/contacts/menu/people/favorites/FavoriteRemoveMenu;->mContext:Landroid/content/Context;

    const-string v3, "0019"

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/favorites/FavoriteRemoveMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tab-pager-favorite"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactTileListFragment;->setDeleteOnlyMode(Z)V

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->startActionMode()V

    :cond_0
    return v4
.end method
