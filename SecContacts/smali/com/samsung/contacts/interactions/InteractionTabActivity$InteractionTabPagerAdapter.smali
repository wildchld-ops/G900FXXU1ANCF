.class Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;
.super Lcom/samsung/contacts/activities/TabPagerAdapter;
.source "InteractionTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InteractionTabPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-direct {p0, p2}, Lcom/samsung/contacts/activities/TabPagerAdapter;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockFavoritesTabMode()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->isBlockLogsTabMode()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InteractionTabPagerAdapter count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InteractionTab actioncode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget v3, v3, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected getFragment(ILandroid/app/FragmentTransaction;)Landroid/app/Fragment;
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getTabStateByPosition(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    #getter for: Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->access$600(Lcom/samsung/contacts/interactions/InteractionTabActivity;)Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    #getter for: Lcom/samsung/contacts/interactions/InteractionTabActivity;->mFavoritesFragment:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->access$600(Lcom/samsung/contacts/interactions/InteractionTabActivity;)Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mCallLogFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getPositionByTabState(I)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x2

    goto :goto_0
.end method
