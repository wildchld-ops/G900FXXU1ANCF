.class public Lcom/samsung/contacts/impl/HelpContactEditorFragment;
.super Lcom/android/contacts/editor/ContactEditorFragment;
.source "HelpContactEditorFragment.java"


# instance fields
.field private mHelp:Lcom/samsung/contacts/impl/HelpImpl;

.field private mTutorialMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->mTutorialMode:I

    return-void
.end method


# virtual methods
.method public save(I)Z
    .locals 6

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->mTutorialMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->isContactWritable()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0e048e

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/RawContactEditorView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/StructuredNameEditorView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/StructuredNameEditorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.DialerHelpActivity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x2400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "isTutorialSuccessed"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "displayName"

    invoke-virtual {v1}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/StructuredNameEditorView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/high16 v4, 0x10a

    const v5, 0x10a0001

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    move-result v2

    goto :goto_0
.end method

.method protected selectAccountAndCreateContact()V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getPhoneAccountsWithDataSet()Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->createContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method

.method public setTutorialMode(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->mTutorialMode:I

    iget v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->mTutorialMode:I

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    :cond_0
    return-void
.end method

.method public startAddaContactTutorial()V
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v3}, Lcom/samsung/contacts/impl/HelpImpl;->reset()V

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    const v5, 0x7f0e0490

    invoke-virtual {p0, v5}, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/contacts/impl/HelpImpl;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v3}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->getCoordinatesTutorialView()[I

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    aget v3, v0, v8

    if-gez v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Lcom/samsung/contacts/impl/HelpImpl;->setTopPostion(I)V

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    aget v5, v0, v4

    invoke-virtual {v3, v5}, Lcom/samsung/contacts/impl/HelpImpl;->setBubbleAndIndicatorLeftPosition(I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b027b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v5, 0x7f0b027c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0b027d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0b027e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v3, v2}, Lcom/samsung/contacts/impl/HelpImpl;->setTouchableArea(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v3, v4, v8, v4}, Lcom/samsung/contacts/impl/HelpImpl;->show(ZZZ)V

    return-void

    :cond_0
    aget v3, v0, v8

    goto :goto_0
.end method
