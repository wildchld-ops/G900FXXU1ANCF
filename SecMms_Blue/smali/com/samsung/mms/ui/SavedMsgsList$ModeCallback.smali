.class Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;
.super Ljava/lang/Object;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/SavedMsgsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/mms/ui/SavedMsgsList;


# direct methods
.method private constructor <init>(Lcom/samsung/mms/ui/SavedMsgsList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/mms/ui/SavedMsgsList;Lcom/samsung/mms/ui/SavedMsgsList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v5

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1100(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2200(Lcom/samsung/mms/ui/SavedMsgsList;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1700(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/io/File;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1100(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I
    invoke-static {v4}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2200(Lcom/samsung/mms/ui/SavedMsgsList;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;
    invoke-static {v1, v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1702(Lcom/samsung/mms/ui/SavedMsgsList;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2300(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2400(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->refreshList()V
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$400(Lcom/samsung/mms/ui/SavedMsgsList;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    const/16 v1, 0xc

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->setOperation(I)V
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2500(Lcom/samsung/mms/ui/SavedMsgsList;I)V

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2200(Lcom/samsung/mms/ui/SavedMsgsList;)I

    move-result v1

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->checkIfEncrypted(I)V
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2600(Lcom/samsung/mms/ui/SavedMsgsList;I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    const/16 v1, 0xb

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->setOperation(I)V
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2500(Lcom/samsung/mms/ui/SavedMsgsList;I)V

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2200(Lcom/samsung/mms/ui/SavedMsgsList;)I

    move-result v1

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->checkIfEncrypted(I)V
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2600(Lcom/samsung/mms/ui/SavedMsgsList;I)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1602(Lcom/samsung/mms/ui/SavedMsgsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->showDialog(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    const/16 v1, 0xd

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->setOperation(I)V
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2500(Lcom/samsung/mms/ui/SavedMsgsList;I)V

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-virtual {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->ShowRenameDialog()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0323
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v1, "Mms/SavedMsgsList"

    const-string v2, " Inside oncreateactionmode()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->fileList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1200(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->twSetCustomMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-virtual {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1002(Lcom/samsung/mms/ui/SavedMsgsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1600(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1600(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v1, v3}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1602(Lcom/samsung/mms/ui/SavedMsgsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1800(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2702(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2102(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2700(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2700(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback$1;

    invoke-direct {v2, p0}, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback$1;-><init>(Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mMultiMode:Z
    invoke-static {v1, v4}, Lcom/samsung/mms/ui/SavedMsgsList;->access$902(Lcom/samsung/mms/ui/SavedMsgsList;Z)Z

    return v4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1002(Lcom/samsung/mms/ui/SavedMsgsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2100(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2102(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mMultiMode:Z
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$902(Lcom/samsung/mms/ui/SavedMsgsList;Z)Z

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 5

    const-string v1, "Mms/SavedMsgsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemCheckedStateChanged position = "

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

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1100(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz p5, :cond_2

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1100(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I
    invoke-static {v1, v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2202(Lcom/samsung/mms/ui/SavedMsgsList;I)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->filesAdapter:Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1900(Lcom/samsung/mms/ui/SavedMsgsList;)Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    const v7, 0x7f0b0326

    const v6, 0x7f0b0324

    const v5, 0x7f0b0325

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1800(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f04

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0009

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2702(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    const v0, 0x7f0b0323

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->selectionHasFolder()Z
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2800(Lcom/samsung/mms/ui/SavedMsgsList;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0b0323

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    const v0, 0x7f0b0323

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ModeCallback;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->selectionHasFolder()Z
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2800(Lcom/samsung/mms/ui/SavedMsgsList;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_5
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method
