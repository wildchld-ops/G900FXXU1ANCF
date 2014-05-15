.class Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;
.super Ljava/lang/Object;
.source "ConversationListRestore.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/ConversationListRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/mms/ui/ConversationListRestore;


# direct methods
.method private constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore;Lcom/samsung/mms/ui/ConversationListRestore$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-virtual {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->startRestoreOperation()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b034a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v1, "Mms/ConversationListRestore"

    const-string v2, " Inside oncreateactionmode()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$700(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->twSetCustomMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1500(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-virtual {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$602(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$900(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/samsung/mms/ui/ConversationListRestore;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1402(Lcom/samsung/mms/ui/ConversationListRestore;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #setter for: Lcom/samsung/mms/ui/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1302(Lcom/samsung/mms/ui/ConversationListRestore;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1400(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1400(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback$1;

    invoke-direct {v2, p0}, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback$1;-><init>(Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #setter for: Lcom/samsung/mms/ui/ConversationListRestore;->mMultiMode:Z
    invoke-static {v1, v4}, Lcom/samsung/mms/ui/ConversationListRestore;->access$502(Lcom/samsung/mms/ui/ConversationListRestore;Z)Z

    return v4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1500(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1300(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #setter for: Lcom/samsung/mms/ui/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1302(Lcom/samsung/mms/ui/ConversationListRestore;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #setter for: Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v0, v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$602(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/mms/ui/ConversationListRestore;->mMultiMode:Z
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$502(Lcom/samsung/mms/ui/ConversationListRestore;Z)Z

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 4

    const-string v1, "Mms/ConversationListRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onItemCheckedStateChanged position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " checked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v1}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz p5, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mIsSelectAllmode:Z
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1200(Lcom/samsung/mms/ui/ConversationListRestore;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    const v4, 0x7f0b034a

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$900(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f04

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0009

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/samsung/mms/ui/ConversationListRestore;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1402(Lcom/samsung/mms/ui/ConversationListRestore;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return v3

    :cond_1
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public selectAllList()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/mms/ui/ConversationListRestore;->mIsSelectAllmode:Z
    invoke-static {v1, v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1202(Lcom/samsung/mms/ui/ConversationListRestore;Z)Z

    :goto_1
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$700(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #setter for: Lcom/samsung/mms/ui/ConversationListRestore;->mIsSelectAllmode:Z
    invoke-static {v1, v3}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1202(Lcom/samsung/mms/ui/ConversationListRestore;Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$700(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1300(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1300(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Mms/ConversationListRestore"

    const-string v3, "updateSelectionMenu"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$900(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0467

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1400(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$700(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/samsung/mms/ui/ConversationListRestore;->access$700(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
