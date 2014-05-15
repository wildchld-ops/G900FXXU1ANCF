.class public Lcom/samsung/contacts/menu/people/common/CallSettingsMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "CallSettingsMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    invoke-static {}, Lcom/android/contacts/activities/PeopleActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/common/CallSettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x63

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    return v1
.end method
