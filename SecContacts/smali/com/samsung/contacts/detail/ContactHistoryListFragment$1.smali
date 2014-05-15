.class Lcom/samsung/contacts/detail/ContactHistoryListFragment$1;
.super Ljava/lang/Object;
.source "ContactHistoryListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/detail/ContactHistoryListFragment;->makeDeleteAllHeaderView(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/detail/ContactHistoryListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->access$100(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$1;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->access$100(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    #calls: Lcom/samsung/contacts/detail/ContactHistoryListFragment;->setAllItemChecked(Z)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->access$200(Lcom/samsung/contacts/detail/ContactHistoryListFragment;Z)V

    return-void
.end method
