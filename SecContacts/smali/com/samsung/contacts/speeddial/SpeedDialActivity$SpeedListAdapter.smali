.class final Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;
.super Landroid/widget/SimpleAdapter;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/speeddial/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpeedListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mSpdlAddButtonListener:Landroid/view/View$OnClickListener;

.field private mSpdlButtonListener:Landroid/view/View$OnClickListener;

.field private mSpdlCallListener:Landroid/view/View$OnClickListener;

.field private mSpdlQuickContactListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$1;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlQuickContactListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$2;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$3;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$3;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlAddButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlCallListener:Landroid/view/View$OnClickListener;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mResource:I

    return-void
.end method


# virtual methods
.method public binDelButtonView(ILandroid/view/View;Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;IZZ)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p4}, Landroid/widget/RelativeLayout;->setId(I)V

    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #calls: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isMatchedAppPLSpl(I)Z
    invoke-static {v0, p4}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$200(Lcom/samsung/contacts/speeddial/SpeedDialActivity;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    if-eqz p6, :cond_2

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindAddContactView(ILandroid/view/View;Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;IZZ)V
    .locals 7

    const v6, 0x7f02015e

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setId(I)V

    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #calls: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isMatchedAppPLSpl(I)Z
    invoke-static {v0, p4}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$200(Lcom/samsung/contacts/speeddial/SpeedDialActivity;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    if-eqz p6, :cond_2

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v2}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0219

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlAddButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public bindNumberView(ILandroid/view/View;Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;IZZ)V
    .locals 6

    const v5, 0x7f0a007d

    if-nez p4, :cond_1

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->spdlNum:Landroid/widget/TextView;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #calls: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isMatchedAppPLSpl(I)Z
    invoke-static {v0, p4}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$200(Lcom/samsung/contacts/speeddial/SpeedDialActivity;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->spdlNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->spdlNum:Landroid/widget/TextView;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_3

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->spdlNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->spdlNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public bindPhotoView(ILandroid/view/View;Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;IZ)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Ljava/util/ArrayList;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    const-string v12, "raw_contact_id"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Ljava/util/ArrayList;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    const-string v12, "contact_id"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p5, :cond_0

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v12}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0201d7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlCallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlCallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    const v12, 0x7f02015e

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setId(I)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    const v13, 0x7f0e01f4

    invoke-virtual {v12, v13}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    move/from16 v0, p4

    #calls: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isMatchedAppPLSpl(I)Z
    invoke-static {v11, v0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$200(Lcom/samsung/contacts/speeddial/SpeedDialActivity;I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Ljava/util/ArrayList;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    const v13, 0x7f0e03f0

    invoke-virtual {v12, v13}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const v10, 0x7f0201d5

    :goto_1
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v12}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlCallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlCallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    const v12, 0x7f02015e

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setId(I)V

    goto :goto_0

    :cond_1
    const v10, 0x7f0201d4

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Ljava/util/ArrayList;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    const-string v12, "photo_id"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v5, 0x0

    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    if-nez v8, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v11}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v3}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Ljava/lang/ref/SoftReference;

    invoke-direct {v12, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    if-nez v5, :cond_5

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/contacts/util/ContactPhotoUtils;->getDefaultPhotoBackgroundColor(J)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlQuickContactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setId(I)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    const v13, 0x7f0e0112

    invoke-virtual {v12, v13}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v11}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v3}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :goto_5
    if-eqz v5, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Ljava/lang/ref/SoftReference;

    invoke-direct {v12, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_6
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public bindView(ILandroid/view/View;)V
    .locals 7

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    const v2, 0x7f0e03ec

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    const v2, 0x7f0e0221

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget v0, v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    add-int v4, v0, p1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->bindNumberView(ILandroid/view/View;Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;IZZ)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->binDelButtonView(ILandroid/view/View;Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;IZZ)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->bindPhotoView(ILandroid/view/View;Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;IZ)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->bindAddContactView(ILandroid/view/View;Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;IZZ)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->bindViewHelpMode(ILandroid/view/View;Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;IZZ)V

    return-void
.end method

.method public bindViewHelpMode(ILandroid/view/View;Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsHelpMode:Z
    invoke-static {v0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$300(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #calls: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isMatchedAppPLSpl(I)Z
    invoke-static {v0, p4}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$200(Lcom/samsung/contacts/speeddial/SpeedDialActivity;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlExistDataInHelpModeListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$400(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-nez p6, :cond_1

    if-nez p5, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #calls: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isMatchedAppPLSpl(I)Z
    invoke-static {v0, p4}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$200(Lcom/samsung/contacts/speeddial/SpeedDialActivity;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlExistDataInHelpModeListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$400(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_0

    new-instance v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;

    invoke-direct {v2, p0, v6}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;)V

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mResource:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0802c9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->spdlNum:Landroid/widget/TextView;

    const v3, 0x7f080052

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v3, 0x7f0802cd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    const v3, 0x7f0802cf

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    iget-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v4}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e030c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0802ce

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    iget-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0802ca

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlQuickContactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0802cb

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    const v3, 0x7f0802cc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    iget-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->mSpdlAddButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0802c8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->bindView(ILandroid/view/View;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
