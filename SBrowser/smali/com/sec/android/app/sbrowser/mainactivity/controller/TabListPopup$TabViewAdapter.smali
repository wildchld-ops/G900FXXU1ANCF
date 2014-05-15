.class Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "TabListPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mNumTabItems:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mTabItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;Ljava/util/List;Landroid/view/LayoutInflater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->mTabItems:Ljava/util/List;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->mNumTabItems:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->mNumTabItems:I

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->mTabItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->getItemId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/16 v7, 0x10

    move-object v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04009c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0267

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7f0a0266

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    const v3, 0x7f0a0268

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;->close:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->mTabItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->mTabItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Welcome to S Browser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v4, 0x7f0c002b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v3, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;->close:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->getTabIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;->close:Landroid/widget/ImageButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;->text:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->getTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getView() mTabItems size is 0"

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->mTabItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
