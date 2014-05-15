.class public Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InteractionActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ActionSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    const v0, 0x7f030055

    const v1, 0x1020014

    iget-object v2, p1, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected getDisplayValue(I)Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getTabStateByPosition(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0279

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e01ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e01ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const v3, 0x1020014

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;->getDisplayValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100095

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter$ActionSpinnerAdapter;->getDisplayValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method
