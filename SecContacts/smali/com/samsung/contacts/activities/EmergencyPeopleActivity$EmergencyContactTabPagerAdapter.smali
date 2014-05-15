.class Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;
.super Lcom/samsung/contacts/activities/TabPagerAdapter;
.source "EmergencyPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/activities/EmergencyPeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyContactTabPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/activities/EmergencyPeopleActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;->this$0:Lcom/samsung/contacts/activities/EmergencyPeopleActivity;

    invoke-direct {p0, p2}, Lcom/samsung/contacts/activities/TabPagerAdapter;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->COUNT:I

    goto :goto_0
.end method

.method protected getFragment(ILandroid/app/FragmentTransaction;)Landroid/app/Fragment;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "EmergencyPeopleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request fragment at position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", eventhough we "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "are in search mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;->this$0:Lcom/samsung/contacts/activities/EmergencyPeopleActivity;

    #getter for: Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->access$300(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;->this$0:Lcom/samsung/contacts/activities/EmergencyPeopleActivity;

    iget-object v0, v0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;->this$0:Lcom/samsung/contacts/activities/EmergencyPeopleActivity;

    #getter for: Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->access$400(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;)Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;->this$0:Lcom/samsung/contacts/activities/EmergencyPeopleActivity;

    #getter for: Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->access$500(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    goto :goto_0

    :cond_4
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

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;->this$0:Lcom/samsung/contacts/activities/EmergencyPeopleActivity;

    #getter for: Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->access$000(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;->this$0:Lcom/samsung/contacts/activities/EmergencyPeopleActivity;

    iget-object v0, v0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;->this$0:Lcom/samsung/contacts/activities/EmergencyPeopleActivity;

    #getter for: Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->access$100(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;)Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;->this$0:Lcom/samsung/contacts/activities/EmergencyPeopleActivity;

    #getter for: Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->access$200(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x2

    goto :goto_0
.end method
