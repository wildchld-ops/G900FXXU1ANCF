.class public Lcom/samsung/contacts/menu/people/contacts/MoveToKnoxMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "MoveToKnoxMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/MoveToKnoxMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActionModeKnox(Z)V

    const/4 v0, 0x0

    return v0
.end method
