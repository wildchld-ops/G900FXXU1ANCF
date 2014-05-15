.class final Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectContactInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/detail/SelectContactInfoActivity;Landroid/app/ListActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private bindDetailView(ILandroid/view/View;Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;

    iget-object v1, p3, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;->type:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v1, p3, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    #getter for: Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->access$400(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    #getter for: Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->access$400(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    iget-object v2, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;->data:Landroid/widget/TextView;

    iget v3, p3, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    #calls: Lcom/samsung/contacts/detail/SelectContactInfoActivity;->setMaxLines(Landroid/widget/TextView;I)V
    invoke-static {v1, v2, v3}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->access$500(Lcom/samsung/contacts/detail/SelectContactInfoActivity;Landroid/widget/TextView;I)V

    iget v1, p3, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->textDirection:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;->data:Landroid/widget/TextView;

    iget v2, p3, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->textDirection:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;->type:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->getItem(I)Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;

    if-eqz p2, :cond_0

    move-object v1, p2

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->bindDetailView(ILandroid/view/View;Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030109

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;

    invoke-direct {v2, v1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->getItem(I)Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$KindTitleViewEntry;

    if-eqz p2, :cond_0

    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$KindTitleViewCache;

    :goto_0
    iget-object v3, v2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$KindTitleViewCache;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$KindTitleViewEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03010b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/contacts/detail/SelectContactInfoActivity$KindTitleViewCache;

    invoke-direct {v2, v1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$KindTitleViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getSeparatorEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03010a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    #getter for: Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->access$200(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    move-object v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SelectAllViewCache;

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    #getter for: Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mSelectAllChecked:Z
    invoke-static {v2}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->access$300(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SelectAllViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030107

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SelectAllViewCache;

    invoke-direct {v1, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SelectAllViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$SelectAllViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public getItem(I)Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    #getter for: Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->access$200(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->getItem(I)Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    #getter for: Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->access$200(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;->getId()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/samsung/contacts/detail/SelectContactInfoActivity;

    #getter for: Lcom/samsung/contacts/detail/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity;->access$200(Lcom/samsung/contacts/detail/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;->getViewType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->getSeparatorEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewAdapter;->getItem(I)Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;->isEnabled()Z

    move-result v0

    return v0
.end method
