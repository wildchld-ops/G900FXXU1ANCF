.class final Lcom/samsung/contacts/activities/GroupListActivity$GroupBrowserActionListener;
.super Ljava/lang/Object;
.source "GroupListActivity.java"

# interfaces
.implements Lcom/samsung/contacts/group/GroupCommonBrowseListFragment$OnGroupBrowserActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/activities/GroupListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupBrowserActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/activities/GroupListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/activities/GroupListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/activities/GroupListActivity$GroupBrowserActionListener;->this$0:Lcom/samsung/contacts/activities/GroupListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewGroupAction(Lcom/samsung/contacts/group/GroupInfo;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/activities/GroupListActivity$GroupBrowserActionListener;->this$0:Lcom/samsung/contacts/activities/GroupListActivity;

    const-class v2, Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "GroupInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/activities/GroupListActivity$GroupBrowserActionListener;->this$0:Lcom/samsung/contacts/activities/GroupListActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/activities/GroupListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
