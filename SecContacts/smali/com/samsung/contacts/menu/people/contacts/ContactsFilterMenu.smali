.class public Lcom/samsung/contacts/menu/people/contacts/ContactsFilterMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "ContactsFilterMenu.java"


# instance fields
.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/contacts/menu/people/contacts/ContactsFilterMenu;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/ContactsFilterMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/contacts/sim/list/ListSimManager;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/list/ListSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/list/ListSimManager;->isSimSupportedButNotReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/ContactsFilterMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e01a7

    invoke-static {v1, v2}, Lcom/samsung/contacts/sim/list/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;I)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/ContactsFilterMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/samsung/contacts/menu/people/contacts/ContactsFilterMenu;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Activity;ILcom/android/contacts/common/list/ContactListFilter;)V

    goto :goto_0
.end method
