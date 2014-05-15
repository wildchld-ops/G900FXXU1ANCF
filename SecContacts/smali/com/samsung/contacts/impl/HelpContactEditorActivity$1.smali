.class Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;
.super Ljava/lang/Object;
.source "HelpContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/editor/ContactEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/impl/HelpContactEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->finish()V

    return-void
.end method

.method public onContactSplit(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->finish()V

    return-void
.end method

.method public onCustomCreateContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "account_type"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "data_set"

    iget-object v4, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x280

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v3}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->finish()V

    return-void
.end method

.method public onCustomEditContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    invoke-virtual {v2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    if-eqz p4, :cond_1

    const/high16 v3, 0x280

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v3}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x280

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "addToDefaultDirectory"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->finish()V

    return-void
.end method

.method public onReverted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->finish()V

    return-void
.end method

.method public onSaveFinished(Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    #getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z
    invoke-static {v0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->access$000(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0, p1}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->finish()V

    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    #getter for: Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mTutorialMode:I
    invoke-static {v0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->access$100(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "tutorial_mode"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpContactEditorActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
