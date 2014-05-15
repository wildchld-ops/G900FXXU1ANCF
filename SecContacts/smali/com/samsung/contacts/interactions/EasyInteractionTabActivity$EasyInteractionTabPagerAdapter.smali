.class Lcom/samsung/contacts/interactions/EasyInteractionTabActivity$EasyInteractionTabPagerAdapter;
.super Lcom/samsung/contacts/activities/TabPagerAdapter;
.source "EasyInteractionTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyInteractionTabPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity$EasyInteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;

    invoke-direct {p0, p2}, Lcom/samsung/contacts/activities/TabPagerAdapter;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getFragment(ILandroid/app/FragmentTransaction;)Landroid/app/Fragment;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity$EasyInteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity$EasyInteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    goto :goto_0

    :cond_1
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
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity$EasyInteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity$EasyInteractionTabPagerAdapter;->this$0:Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
