.class public Lcom/samsung/contacts/menu/people/keypad/CallIncludedMessageMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "CallIncludedMessageMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/CallIncludedMessageMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "tab-pager-dialpad"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getDigitsWidget()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/CallIncludedMessageMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/dialer/impl/CallMessageImpl;->launch(Landroid/content/Context;Ljava/lang/String;)Z

    const/4 v3, 0x1

    return v3
.end method
