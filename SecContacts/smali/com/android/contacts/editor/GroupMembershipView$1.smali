.class Lcom/android/contacts/editor/GroupMembershipView$1;
.super Ljava/lang/Object;
.source "GroupMembershipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/GroupMembershipView;->setOnClickListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/GroupMembershipView;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/GroupMembershipView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    iput p2, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->val$requestCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.EXTRA_IS_INSERT"

    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    #getter for: Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;
    invoke-static {v2}, Lcom/android/contacts/editor/GroupMembershipView;->access$000(Lcom/android/contacts/editor/GroupMembershipView;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.RAWCONTACT_ID"

    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    #getter for: Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;
    invoke-static {v2}, Lcom/android/contacts/editor/GroupMembershipView;->access$000(Lcom/android/contacts/editor/GroupMembershipView;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    #getter for: Lcom/android/contacts/editor/GroupMembershipView;->mSelectedGroupIds:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/editor/GroupMembershipView;->access$100(Lcom/android/contacts/editor/GroupMembershipView;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    #getter for: Lcom/android/contacts/editor/GroupMembershipView;->mSelectedGroupNames:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/editor/GroupMembershipView;->access$200(Lcom/android/contacts/editor/GroupMembershipView;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    const-string v2, "com.google"

    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    #getter for: Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/editor/GroupMembershipView;->access$300(Lcom/android/contacts/editor/GroupMembershipView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    #getter for: Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/editor/GroupMembershipView;->access$400(Lcom/android/contacts/editor/GroupMembershipView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "account_type"

    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    #getter for: Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/editor/GroupMembershipView;->access$300(Lcom/android/contacts/editor/GroupMembershipView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    #getter for: Lcom/android/contacts/editor/GroupMembershipView;->mListener:Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;
    invoke-static {v1}, Lcom/android/contacts/editor/GroupMembershipView;->access$500(Lcom/android/contacts/editor/GroupMembershipView;)Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->val$requestCode:I

    invoke-interface {v1, v0, v2}, Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;->onStartActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
