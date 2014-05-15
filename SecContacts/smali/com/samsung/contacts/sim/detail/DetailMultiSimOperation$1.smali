.class Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$1;
.super Landroid/widget/ArrayAdapter;
.source "DetailMultiSimOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;->createSelectSimDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;

.field final synthetic val$phoneBookManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;Landroid/content/Context;I[Ljava/lang/Integer;Landroid/view/LayoutInflater;Lcom/samsung/contacts/sim/PhoneBookManageSim;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$1;->this$0:Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation;

    iput-object p5, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    iput-object p6, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$1;->val$phoneBookManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030003

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v4, 0x1020006

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x1020014

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x1020015

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$1;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$1;->val$phoneBookManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/contacts/sim/detail/DetailMultiSimOperation$1;->val$phoneBookManageSim:Lcom/samsung/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p2
.end method
