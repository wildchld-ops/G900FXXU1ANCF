.class Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GroupChangeOrderListFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupChangeOrderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReOrderListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;",
        ">;",
        "Lcom/sec/android/touchwiz/widget/TwDndController;"
    }
.end annotation


# instance fields
.field private mLayoutId:I

.field final synthetic this$0:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/group/GroupChangeOrderListFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->this$0:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput p3, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->mLayoutId:I

    return-void
.end method


# virtual methods
.method public allowDrag(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public allowDrop(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dropDone(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->remove(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->insert(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->this$0:Lcom/samsung/contacts/group/GroupChangeOrderListFragment;

    #calls: Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->updateDoneButton()V
    invoke-static {v1}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment;->access$200(Lcom/samsung/contacts/group/GroupChangeOrderListFragment;)V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ViewHolder;

    invoke-direct {v0, p2}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    const-string v2, "GroupChangeOrderListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "holder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "GroupChangeOrderListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "holder.title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;->systemId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;->systemId:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/contacts/util/GroupUtils;->isKnoxReadOnlyGroup(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;->systemId:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/contacts/util/GroupUtils;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ViewHolder;->title:Landroid/widget/TextView;

    const v4, 0x7f0b01fd

    invoke-static {v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ViewHolder;

    goto :goto_0

    :cond_2
    const-string v2, "ICE"

    iget-object v3, v1, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/samsung/contacts/util/GroupUtils;->shouldChangeEmergencyText()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f0e028c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f0e0012

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f0e028b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/contacts/group/GroupChangeOrderListFragment$GroupListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
