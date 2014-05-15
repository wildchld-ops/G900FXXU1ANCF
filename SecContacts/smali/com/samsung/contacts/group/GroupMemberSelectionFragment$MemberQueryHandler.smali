.class Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GroupMemberSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupMemberSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemberQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupMemberSelectionFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/group/GroupMemberSelectionFragment;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;->this$0:Lcom/samsung/contacts/group/GroupMemberSelectionFragment;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    const/4 v5, -0x1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v5, 0x1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;->this$0:Lcom/samsung/contacts/group/GroupMemberSelectionFragment;

    invoke-virtual {v5}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->notifyDataSetChanged()V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public runQuery()V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;->this$0:Lcom/samsung/contacts/group/GroupMemberSelectionFragment;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;->this$0:Lcom/samsung/contacts/group/GroupMemberSelectionFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mMode:I
    invoke-static {v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->access$100(Lcom/samsung/contacts/group/GroupMemberSelectionFragment;)I

    move-result v1

    #calls: Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->configureUri(I)Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->access$200(Lcom/samsung/contacts/group/GroupMemberSelectionFragment;I)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;->this$0:Lcom/samsung/contacts/group/GroupMemberSelectionFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mMode:I
    invoke-static {v0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->access$100(Lcom/samsung/contacts/group/GroupMemberSelectionFragment;)I

    move-result v1

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v0

    const/4 v0, 0x1

    const-string v3, "lookup"

    aput-object v3, v4, v0

    move-object v0, p0

    move-object v3, v2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
