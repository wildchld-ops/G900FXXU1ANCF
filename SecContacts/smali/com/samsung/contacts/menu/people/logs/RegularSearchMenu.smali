.class public Lcom/samsung/contacts/menu/people/logs/RegularSearchMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "RegularSearchMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/logs/RegularSearchMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->executeRegularSearch(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method
