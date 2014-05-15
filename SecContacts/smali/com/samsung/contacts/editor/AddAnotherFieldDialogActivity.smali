.class public Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;
.super Landroid/app/Activity;
.source "AddAnotherFieldDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private mCheckedItems:[Z

.field private mItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactId:J

.field private mSelectedIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private returnResultAndFinsish(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "selectedIndexList"

    iget-object v2, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mSelectedIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "rawContactId"

    iget-wide v2, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mRawContactId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->safeDialogDismiss(Landroid/content/DialogInterface;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->returnResultAndFinsish(Z)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mSelectedIndexList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mCheckedItems:[Z

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mCheckedItems:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mCheckedItems:[Z

    aget-boolean v0, v2, v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mSelectedIndexList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->safeDialogDismiss(Landroid/content/DialogInterface;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->returnResultAndFinsish(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v2, -0x2

    if-ne p2, v2, :cond_2

    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->safeDialogDismiss(Landroid/content/DialogInterface;)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->returnResultAndFinsish(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mSelectedIndexList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mSelectedIndexList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "itemList"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mItemsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mItemsList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->returnResultAndFinsish(Z)V

    :goto_0
    const-string v5, "rawContactId"

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mRawContactId:J

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mSelectedIndexList:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Z

    iput-object v5, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mCheckedItems:[Z

    goto :goto_0

    :cond_2
    const-string v5, ""

    goto :goto_2

    :cond_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e009c

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/samsung/contacts/editor/AddAnotherFieldDialogActivity;->mCheckedItems:[Z

    invoke-virtual {v6, v5, v7, p0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
