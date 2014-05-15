.class public Lcom/samsung/contacts/menu/people/contacts/ImportExportMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "ImportExportMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/ImportExportMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/ImportExportMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v0

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v1, v0, v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;ZLjava/lang/Class;)V

    const/4 v0, 0x0

    return v0
.end method
