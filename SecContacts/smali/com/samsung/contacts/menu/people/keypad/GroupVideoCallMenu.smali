.class public Lcom/samsung/contacts/menu/people/keypad/GroupVideoCallMenu;
.super Lcom/samsung/contacts/menu/people/keypad/GroupCallMenu;
.source "GroupVideoCallMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/people/keypad/GroupCallMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/GroupVideoCallMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/menu/people/keypad/GroupVideoCallMenu;->getGroupCallIntent(Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
