.class public Lcom/samsung/contacts/impl/HelpSpeedDialActivity;
.super Lcom/samsung/contacts/speeddial/SpeedDialActivity;
.source "HelpSpeedDialActivity.java"


# instance fields
.field private mHelp:Lcom/samsung/contacts/impl/HelpImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;-><init>()V

    return-void
.end method

.method private showSpeedDialTutorialPopup()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/contacts/impl/HelpImpl;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/impl/HelpImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0492

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;->setPostionFromBottom(I)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/impl/HelpImpl;->setArrowVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v3, v1}, Lcom/samsung/contacts/impl/HelpImpl;->show(ZZZ)V

    return-void
.end method


# virtual methods
.method protected deleteSpdl(I)Z
    .locals 2

    const v0, 0x7f0e03d6

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    return v0
.end method

.method protected insertSpdl(I)Z
    .locals 4

    const/4 v3, 0x1

    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    sub-int v1, p1, v1

    iput v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST_SPEED_HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "additional"

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_speed_dial"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "has_result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "index"

    iget v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v1}, Lcom/samsung/contacts/impl/HelpImpl;->hide()V

    :cond_0
    const v1, 0x7f0e03d5

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    const v1, 0x7f0e001d

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/contacts/impl/HelpSpeedDialActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/impl/HelpSpeedDialActivity$2;-><init>(Lcom/samsung/contacts/impl/HelpSpeedDialActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 9

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->enableHelpMode()V

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0e0497

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/contacts/impl/HelpSpeedDialActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/impl/HelpSpeedDialActivity$1;-><init>(Lcom/samsung/contacts/impl/HelpSpeedDialActivity;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->showSpeedDialTutorialPopup()V

    goto :goto_0
.end method
