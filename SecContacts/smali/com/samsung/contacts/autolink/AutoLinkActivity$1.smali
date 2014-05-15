.class Lcom/samsung/contacts/autolink/AutoLinkActivity$1;
.super Ljava/lang/Object;
.source "AutoLinkActivity.java"

# interfaces
.implements Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/autolink/AutoLinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/autolink/AutoLinkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$1;->this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomActionLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$1;->this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

    #getter for: Lcom/samsung/contacts/autolink/AutoLinkActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/samsung/contacts/autolink/AutoLinkActivity;->access$000(Lcom/samsung/contacts/autolink/AutoLinkActivity;)Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$1;->this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

    #getter for: Lcom/samsung/contacts/autolink/AutoLinkActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/samsung/contacts/autolink/AutoLinkActivity;->access$000(Lcom/samsung/contacts/autolink/AutoLinkActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClickCancelAction()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$1;->this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/autolink/AutoLinkActivity;->finish()V

    return-void
.end method

.method public onClickDoneAction(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/autolink/AutoLinkMultipleJoinData;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$1;->this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$1;->this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

    const v2, 0x7f0e0386

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/autolink/AutoLinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$1;->this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$1;->this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$1;->this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/autolink/AutoLinkMultipleJoinData;

    iget-wide v1, v0, Lcom/samsung/contacts/autolink/AutoLinkMultipleJoinData;->mdefaultId:J

    iget-object v3, v0, Lcom/samsung/contacts/autolink/AutoLinkMultipleJoinData;->mTargetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v3, v9, [J

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_0

    iget-object v5, v0, Lcom/samsung/contacts/autolink/AutoLinkMultipleJoinData;->mTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v3, v6

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$1;->this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/autolink/AutoLinkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v5, Lcom/samsung/contacts/autolink/AutoLinkActivity;

    const-string v6, "ACTION_JOIN_COMPLETED"

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/ContactSaveService;->createJoinMultipleContactsIntent(Landroid/content/Context;J[JZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$1;->this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/autolink/AutoLinkActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    return-void
.end method
