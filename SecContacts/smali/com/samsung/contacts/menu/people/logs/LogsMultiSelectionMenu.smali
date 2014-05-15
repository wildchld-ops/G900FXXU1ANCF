.class public Lcom/samsung/contacts/menu/people/logs/LogsMultiSelectionMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "LogsMultiSelectionMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/logs/LogsMultiSelectionMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tab-pager-calllog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->startActionMode()V

    :cond_0
    const/4 v2, 0x1

    return v2
.end method
