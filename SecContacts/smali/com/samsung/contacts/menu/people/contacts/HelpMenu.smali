.class public Lcom/samsung/contacts/menu/people/contacts/HelpMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "HelpMenu.java"


# instance fields
.field tabState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/samsung/contacts/menu/people/contacts/HelpMenu;->tabState:I

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.helphub.HELP"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "helphub:appid"

    const-string v6, "phone"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/HelpMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    move v2, v4

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/HelpMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return v4
.end method
