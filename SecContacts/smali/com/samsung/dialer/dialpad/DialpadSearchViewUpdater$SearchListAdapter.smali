.class Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DialpadSearchViewUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchListAdapter"
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
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/dialpad/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;


# direct methods
.method public constructor <init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Landroid/content/Context;ILjava/util/ArrayList;)V
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

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    move-object v7, p2

    if-nez v7, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$400(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const v0, 0x7f030083

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    :cond_0
    move-object v9, v7

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/dialer/dialpad/ContactItem;

    const v0, 0x7f0801bb

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v0, 0x7f0801bc

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;->this$0:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    const v2, 0x7f0801ba

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x7f0801bd

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0092

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->setItemView(Lcom/samsung/dialer/dialpad/ContactItem;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;

    invoke-direct {v2, p0, v3, v4, v9}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;-><init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v9
.end method
