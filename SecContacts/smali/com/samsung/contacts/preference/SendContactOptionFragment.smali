.class public Lcom/samsung/contacts/preference/SendContactOptionFragment;
.super Landroid/app/Fragment;
.source "SendContactOptionFragment.java"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v2, 0x7f03010d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/preference/SendContactOptionFragment;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/contacts/preference/SendContactOptionFragment;->mView:Landroid/view/View;

    const v3, 0x7f0802af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/samsung/contacts/preference/SendContactOptionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/preference/SendContactOptionFragment;->mView:Landroid/view/View;

    const v3, 0x7f0802b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0e02b4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/samsung/contacts/preference/SendContactOptionFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/preference/SendContactOptionFragment$1;-><init>(Lcom/samsung/contacts/preference/SendContactOptionFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/contacts/preference/SendContactOptionFragment;->mView:Landroid/view/View;

    return-object v2
.end method
