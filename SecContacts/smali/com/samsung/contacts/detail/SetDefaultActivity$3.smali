.class Lcom/samsung/contacts/detail/SetDefaultActivity$3;
.super Ljava/lang/Object;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/SetDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/SetDefaultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    invoke-virtual {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    invoke-virtual {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$100(Lcom/samsung/contacts/detail/SetDefaultActivity;)Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;

    move-result-object v5

    check-cast v5, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$200(Lcom/samsung/contacts/detail/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;

    instance-of v6, v0, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    if-eqz v6, :cond_2

    move-object v6, v0

    check-cast v6, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    iget v6, v6, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->which:I

    iget v7, v5, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->which:I

    if-ne v6, v7, :cond_2

    check-cast v0, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    iput-boolean v8, v0, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    goto :goto_1

    :cond_3
    iget v6, v5, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->which:I

    packed-switch v6, :pswitch_data_0

    :goto_2
    if-eqz v3, :cond_f

    iput-boolean v8, v3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    iput-boolean v9, v5, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$100(Lcom/samsung/contacts/detail/SetDefaultActivity;)Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mMenuDone:Landroid/widget/Button;
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1900(Lcom/samsung/contacts/detail/SetDefaultActivity;)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$500(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$900(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1300(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1700(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_5
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mMenuDone:Landroid/widget/Button;
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1900(Lcom/samsung/contacts/detail/SetDefaultActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    :goto_4
    const v6, 0x7f0802bd

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/RadioButton;->performClick()Z

    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$300(Lcom/samsung/contacts/detail/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v10, :cond_7

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$100(Lcom/samsung/contacts/detail/SetDefaultActivity;)Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v7}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$300(Lcom/samsung/contacts/detail/SetDefaultActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    :cond_7
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedPhotoIndex:I
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$400(Lcom/samsung/contacts/detail/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v2, :cond_8

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v6, v9}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$502(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z

    :goto_5
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v6, v2}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$302(Lcom/samsung/contacts/detail/SetDefaultActivity;I)I

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstPhoto:Z
    invoke-static {v6, v8}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$602(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z

    goto/16 :goto_2

    :cond_8
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v6, v8}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$502(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z

    goto :goto_5

    :pswitch_1
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$700(Lcom/samsung/contacts/detail/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v10, :cond_9

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$100(Lcom/samsung/contacts/detail/SetDefaultActivity;)Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v7}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$700(Lcom/samsung/contacts/detail/SetDefaultActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    :cond_9
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedNameIndex:I
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$800(Lcom/samsung/contacts/detail/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v2, :cond_a

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v6, v9}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$902(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z

    :goto_6
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v6, v2}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$702(Lcom/samsung/contacts/detail/SetDefaultActivity;I)I

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstName:Z
    invoke-static {v6, v8}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1002(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z

    goto/16 :goto_2

    :cond_a
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v6, v8}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$902(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z

    goto :goto_6

    :pswitch_2
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1100(Lcom/samsung/contacts/detail/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v10, :cond_b

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$100(Lcom/samsung/contacts/detail/SetDefaultActivity;)Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v7}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1100(Lcom/samsung/contacts/detail/SetDefaultActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    :cond_b
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedNumberIndex:I
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1200(Lcom/samsung/contacts/detail/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v2, :cond_c

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v6, v9}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1302(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z

    :goto_7
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v6, v2}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1102(Lcom/samsung/contacts/detail/SetDefaultActivity;I)I

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstNumber:Z
    invoke-static {v6, v8}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1402(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z

    goto/16 :goto_2

    :cond_c
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v6, v8}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1302(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z

    goto :goto_7

    :pswitch_3
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1500(Lcom/samsung/contacts/detail/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v10, :cond_d

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$100(Lcom/samsung/contacts/detail/SetDefaultActivity;)Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v7}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1500(Lcom/samsung/contacts/detail/SetDefaultActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    :cond_d
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedEmailIndex:I
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1600(Lcom/samsung/contacts/detail/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v2, :cond_e

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v6, v9}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1702(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z

    :goto_8
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v6, v2}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1502(Lcom/samsung/contacts/detail/SetDefaultActivity;I)I

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstEmail:Z
    invoke-static {v6, v8}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1802(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z

    goto/16 :goto_2

    :cond_e
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #setter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v6, v8}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1702(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z

    goto :goto_8

    :cond_f
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$500(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$900(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1300(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1700(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_10
    iput-boolean v9, v5, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$100(Lcom/samsung/contacts/detail/SetDefaultActivity;)Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    :cond_11
    iget-object v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #getter for: Lcom/samsung/contacts/detail/SetDefaultActivity;->mMenuDone:Landroid/widget/Button;
    invoke-static {v6}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$1900(Lcom/samsung/contacts/detail/SetDefaultActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
