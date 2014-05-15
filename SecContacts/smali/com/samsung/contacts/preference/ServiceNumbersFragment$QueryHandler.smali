.class Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ServiceNumbersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/preference/ServiceNumbersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/preference/ServiceNumbersFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    if-eqz p3, :cond_0

    const-string v0, "[ServiceNumbersFragment]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: cursor.count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    #setter for: Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->access$102(Lcom/samsung/contacts/preference/ServiceNumbersFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    const/4 v1, 0x0

    #calls: Lcom/samsung/contacts/preference/ServiceNumbersFragment;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->access$200(Lcom/samsung/contacts/preference/ServiceNumbersFragment;Z)V

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    #getter for: Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mAdapter:Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;
    invoke-static {v0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->access$300(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    #getter for: Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->access$100(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    #getter for: Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->access$400(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    #getter for: Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->access$500(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    #getter for: Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mEmptyTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->access$600(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    #getter for: Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->access$400(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    #getter for: Lcom/samsung/contacts/preference/ServiceNumbersFragment;->mEmptyView:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->access$500(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method
