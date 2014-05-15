.class public Lcom/samsung/contacts/menu/people/keypad/IpCallMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "IpCallMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/IpCallMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tab-pager-dialpad"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v2, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadImpl:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-virtual {v2}, Lcom/samsung/dialer/impl/DialpadImpl;->placeIpCall()V

    const/4 v2, 0x1

    return v2
.end method
