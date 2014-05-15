.class Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;
.super Ljava/lang/Object;
.source "MySettnigsRemoveActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/favorite/MySettnigsRemoveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    invoke-virtual {v0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->finish()V

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    invoke-virtual {v0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->saveState()V

    iget-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    invoke-virtual {v0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const v3, 0x7f0201da

    const/4 v6, 0x0

    const/4 v5, 0x1

    const v1, 0x7f090ae9

    invoke-interface {p2, v6, v5, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    #setter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v1, v2}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$002(Lcom/android/settings/favorite/MySettnigsRemoveActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    #getter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$000(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    #getter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I
    invoke-static {v1}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$100(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    #getter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$000(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    #getter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$000(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    iget-object v2, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    invoke-virtual {v2}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040048

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    #setter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$202(Lcom/android/settings/favorite/MySettnigsRemoveActivity;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    invoke-virtual {v1}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    #getter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$200(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0b00cc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    #setter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mSelectionMenu:Landroid/widget/Button;
    invoke-static {v2, v1}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$302(Lcom/android/settings/favorite/MySettnigsRemoveActivity;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    #getter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mSelectionMenu:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$300(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)Landroid/widget/Button;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    #getter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I
    invoke-static {v3}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$100(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    #getter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mSelectionMenu:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$300(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1$1;-><init>(Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    invoke-virtual {v1}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->createPopup()V

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    #getter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$200(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    return v5

    :cond_1
    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    #getter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$000(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    #getter for: Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->access$000(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0201db

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    invoke-virtual {v0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->finish()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
