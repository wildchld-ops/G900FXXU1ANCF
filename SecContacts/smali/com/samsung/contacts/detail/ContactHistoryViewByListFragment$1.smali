.class Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$1;
.super Ljava/lang/Object;
.source "ContactHistoryViewByListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->access$000(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->access$000(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    if-nez v0, :cond_1

    :goto_1
    #calls: Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->setAllItemCheckState(Z)V
    invoke-static {v1, v2}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->access$100(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;Z)V

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    iget-object v1, v1, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListener:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    #calls: Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->checkOptionsChanged()Z
    invoke-static {v2}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->access$200(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;->onChangedOptionItems(Z)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
