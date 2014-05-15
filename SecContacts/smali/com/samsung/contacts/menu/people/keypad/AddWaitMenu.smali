.class public Lcom/samsung/contacts/menu/people/keypad/AddWaitMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "AddWaitMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/AddWaitMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tab-pager-dialpad"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialString(C)V

    :cond_0
    const/4 v2, 0x1

    return v2
.end method
