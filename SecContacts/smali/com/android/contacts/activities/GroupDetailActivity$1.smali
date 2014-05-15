.class Lcom/android/contacts/activities/GroupDetailActivity$1;
.super Ljava/lang/Object;
.source "GroupDetailActivity.java"

# interfaces
.implements Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/GroupDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/GroupDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/GroupDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMemberRequested()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #calls: Lcom/android/contacts/activities/GroupDetailActivity;->addMemberToGroup()V
    invoke-static {v0}, Lcom/android/contacts/activities/GroupDetailActivity;->access$100(Lcom/android/contacts/activities/GroupDetailActivity;)V

    return-void
.end method

.method public onContactSelected(Landroid/net/Uri;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.contacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onGroupSizeUpdated(Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #getter for: Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/activities/GroupDetailActivity;->access$000(Lcom/android/contacts/activities/GroupDetailActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0801b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/GroupDetailActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onRemoveMemberRequested(Landroid/content/Context;Ljava/util/ArrayList;ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;ZI)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    #setter for: Lcom/android/contacts/activities/GroupDetailActivity;->mDeletedMemberCount:I
    invoke-static {v0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->access$202(Lcom/android/contacts/activities/GroupDetailActivity;I)I

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #setter for: Lcom/android/contacts/activities/GroupDetailActivity;->mIsDefaultIceIncluded:Z
    invoke-static {v0, p3}, Lcom/android/contacts/activities/GroupDetailActivity;->access$302(Lcom/android/contacts/activities/GroupDetailActivity;Z)Z

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #setter for: Lcom/android/contacts/activities/GroupDetailActivity;->mDefaultIceCount:I
    invoke-static {v0, p4}, Lcom/android/contacts/activities/GroupDetailActivity;->access$402(Lcom/android/contacts/activities/GroupDetailActivity;I)I

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #getter for: Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I
    invoke-static {v0}, Lcom/android/contacts/activities/GroupDetailActivity;->access$500(Lcom/android/contacts/activities/GroupDetailActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v5, 0x5

    :goto_0
    #calls: Lcom/android/contacts/activities/GroupDetailActivity;->convertToArray(Ljava/util/List;)[J
    invoke-static {p2}, Lcom/android/contacts/activities/GroupDetailActivity;->access$600(Ljava/util/List;)[J

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #getter for: Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;
    invoke-static {v0}, Lcom/android/contacts/activities/GroupDetailActivity;->access$700(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/samsung/contacts/group/GroupInfo;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "editMemberCompleted"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/samsung/contacts/group/GroupInfo;[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #getter for: Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/GroupDetailActivity;->access$800(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    move-result-object v0

    const v1, 0x7f0e036c

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->showProgress(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v0, v6}, Lcom/android/contacts/activities/GroupDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v5, 0x4

    goto :goto_0
.end method

.method public onUpdateSelectMenu(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    #setter for: Lcom/android/contacts/activities/GroupDetailActivity;->mShowSelectMenu:Z
    invoke-static {v0, p1}, Lcom/android/contacts/activities/GroupDetailActivity;->access$902(Lcom/android/contacts/activities/GroupDetailActivity;Z)Z

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/GroupDetailActivity;->invalidateOptionsMenu()V

    return-void
.end method
