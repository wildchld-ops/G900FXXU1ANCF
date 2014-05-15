.class public Lcom/samsung/contacts/impl/HelpInteractionTabActivity;
.super Lcom/samsung/contacts/interactions/InteractionTabActivity;
.source "HelpInteractionTabActivity.java"


# instance fields
.field private mHelp:Lcom/samsung/contacts/impl/HelpImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;-><init>()V

    return-void
.end method

.method private showSpeedDialTutorialPopup()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/contacts/impl/HelpImpl;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/impl/HelpImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/impl/HelpInteractionTabActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpInteractionTabActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpInteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0493

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpInteractionTabActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpInteractionTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;->setPostionFromBottom(I)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpInteractionTabActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/impl/HelpImpl;->setArrowVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpInteractionTabActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v0, v3, v4, v4}, Lcom/samsung/contacts/impl/HelpImpl;->show(ZZZ)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/samsung/contacts/impl/HelpInteractionTabActivity;->showSpeedDialTutorialPopup()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpInteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent.action.INTERACTION_LIST_SPEED_HELP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpInteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
