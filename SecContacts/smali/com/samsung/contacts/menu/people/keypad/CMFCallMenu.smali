.class public Lcom/samsung/contacts/menu/people/keypad/CMFCallMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "CMFCallMenu.java"


# instance fields
.field private final PREFIX_CMF_CALL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    const-string v0, "***"

    iput-object v0, p0, Lcom/samsung/contacts/menu/people/keypad/CMFCallMenu;->PREFIX_CMF_CALL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    const-string v0, "***"

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/menu/people/keypad/CMFCallMenu;->placeCallExtraService(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected placeCallExtraService(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/CMFCallMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tab-pager-dialpad"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getDigitsWidget()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/CMFCallMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0478

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/CMFCallMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/dialer/dialpad/DialpadUtil;->placeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
