.class Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;
.super Landroid/widget/BaseAdapter;
.source "RingtoneRecommendationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mainMessage:[Ljava/lang/String;

.field subMessage:[Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;Landroid/view/LayoutInflater;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    iput-object p2, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-array v0, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0367

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0368

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;->mainMessage:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0369

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;->subMessage:[Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;->mainMessage:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    move-object v3, p2

    :goto_0
    const v5, 0x1020014

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x1020015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x1020019

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;->mainMessage:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;->subMessage:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v5, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    #getter for: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mSelectedPosition:I
    invoke-static {v5}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$000(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)I

    move-result v5

    if-ne p1, v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object v3

    :cond_1
    iget-object v5, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030118

    invoke-virtual {v5, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;->subMessage:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
