.class public Lcom/samsung/contacts/menu/people/contacts/SimManagementMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "SimManagementMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/SimManagementMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/sim/SIMManagementDialogFragment;->show(Landroid/app/FragmentManager;)V

    const/4 v0, 0x1

    return v0
.end method
