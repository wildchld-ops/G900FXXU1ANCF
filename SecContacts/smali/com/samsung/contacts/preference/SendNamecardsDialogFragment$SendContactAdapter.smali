.class Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;
.super Landroid/widget/BaseAdapter;
.source "SendNamecardsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendContactAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;->this$0:Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03010e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;->this$0:Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;

    const v0, 0x7f0802b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mSendContactType:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->access$102(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;->this$0:Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;

    const v0, 0x7f080186

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    #setter for: Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mRadioButton:Landroid/widget/RadioButton;
    invoke-static {v1, v0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->access$202(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;->this$0:Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;

    #getter for: Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mSendType:I
    invoke-static {v0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->access$300(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;->this$0:Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;

    #getter for: Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mRadioButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->access$200(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;->this$0:Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;

    #getter for: Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mSendContactType:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->access$100(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e02ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;->this$0:Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;

    #getter for: Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mRadioButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->access$200(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$SendContactAdapter;->this$0:Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;

    #getter for: Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->mSendContactType:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->access$100(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e02ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
