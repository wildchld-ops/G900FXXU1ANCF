.class public Lcom/samsung/contacts/menu/people/contacts/MultiSelectionMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "MultiSelectionMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/MultiSelectionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->startActionMode()V

    const/4 v0, 0x0

    return v0
.end method
