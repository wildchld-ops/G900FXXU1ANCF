.class public Lcom/samsung/contacts/menu/people/favorites/FavoriteViewChangeMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "FavoriteViewChangeMenu.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/contacts/menu/people/favorites/FavoriteViewChangeMenu;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/menu/people/favorites/FavoriteViewChangeMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "favorite_strquent_listview_state"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "favorite_strquent_listview_state"

    if-nez v0, :cond_2

    move v4, v5

    :goto_0
    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v4, p0, Lcom/samsung/contacts/menu/people/favorites/FavoriteViewChangeMenu;->mContext:Landroid/content/Context;

    const-string v7, "0020"

    invoke-static {v4, v7}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/favorites/FavoriteViewChangeMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v7, "tab-pager-favorite"

    invoke-virtual {v4, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    move v6, v5

    :cond_0
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactTileListFragment;->setStreListViewState(Z)V

    :cond_1
    return v5

    :cond_2
    move v4, v6

    goto :goto_0
.end method
