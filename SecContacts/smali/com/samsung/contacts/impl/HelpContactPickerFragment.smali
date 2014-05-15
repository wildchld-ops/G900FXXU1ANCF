.class public Lcom/samsung/contacts/impl/HelpContactPickerFragment;
.super Lcom/android/contacts/list/ContactPickerFragment;
.source "HelpContactPickerFragment.java"


# instance fields
.field private mGuideTextId:I

.field private mHelp:Lcom/samsung/contacts/impl/HelpImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    const v0, 0x7f0e04b9

    iput v0, p0, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->mGuideTextId:I

    return-void
.end method

.method private showTutorialPopup(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0e006c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    iget v1, p0, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->mGuideTextId:I

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;->setPostionFromBottom(I)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/impl/HelpImpl;->setArrowVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v3, v1}, Lcom/samsung/contacts/impl/HelpImpl;->show(ZZZ)V

    goto :goto_0
.end method


# virtual methods
.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->showTutorialPopup(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public setGuideTextId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/impl/HelpContactPickerFragment;->mGuideTextId:I

    return-void
.end method
