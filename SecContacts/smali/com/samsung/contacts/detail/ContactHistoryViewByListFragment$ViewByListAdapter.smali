.class Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContactHistoryViewByListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewByListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I

.field final synthetic this$0:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$Item;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->this$0:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->items:Ljava/util/ArrayList;

    iput p3, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->mLayout:I

    invoke-virtual {p1}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    move-object v3, p2

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->mLayout:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_0
    const v4, 0x7f08013f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$Item;

    iget v4, v4, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$Item;->itemNameResId:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f080139

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->this$0:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->access$400(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    add-int v2, p1, v4

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->this$0:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->access$400(Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-object v3
.end method
