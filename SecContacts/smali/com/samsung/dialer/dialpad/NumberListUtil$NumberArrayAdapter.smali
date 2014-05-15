.class public Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NumberListUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/dialpad/NumberListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/dialer/dialpad/ContactItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/dialpad/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/dialpad/ContactItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;->mItems:Ljava/util/ArrayList;

    iput p2, p0, Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;->mResourceID:I

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    move-object v3, p2

    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;->mResourceID:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_0
    iget-object v5, p0, Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dialer/dialpad/ContactItem;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/ContactItem;->getPhoneType()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0801aa

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0801ab

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v3
.end method
