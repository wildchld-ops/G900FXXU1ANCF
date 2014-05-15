.class public Lcom/samsung/contacts/menu/people/contacts/MergeAccountsMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "MergeAccountsMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/MergeAccountsMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/contacts/interactions/MergeDialogFragment;->show(Landroid/app/FragmentManager;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
