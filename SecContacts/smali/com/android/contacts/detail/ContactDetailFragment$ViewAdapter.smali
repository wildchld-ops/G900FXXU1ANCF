.class final Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewAdapter"
.end annotation


# instance fields
.field private final mFaceTaggedPhotoClickListener:Landroid/view/View$OnClickListener;

.field private final mHorizontalButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mHorizontalButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mHorizontalRcsButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

.field private final mVappActionClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$5;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mVappActionClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$7;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mHorizontalButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mHorizontalRcsButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$9;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$9;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mHorizontalButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$10;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mFaceTaggedPhotoClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getPhoneNumberListDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private bindConnectionEntriesView(Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;)V
    .locals 7

    const/16 v1, 0x8

    iget-object v0, p2, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->accountIcon:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->typeString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;->type:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;->type:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v6, p1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;->connectionIcon:Lcom/samsung/contacts/detail/ExpandableHeightGridView;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p2, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->accountIcon:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->accountNames:Ljava/util/ArrayList;

    iget-object v5, p2, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->accountIntents:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lcom/samsung/contacts/detail/ExpandableHeightGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->bindSecondaryActionButton(Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;Landroid/content/res/Resources;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;->connectionIcon:Lcom/samsung/contacts/detail/ExpandableHeightGridView;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/detail/ExpandableHeightGridView;->setVisibility(I)V

    goto :goto_1
.end method

.method private bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 8

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v1, p3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    iget-object v5, p3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v1, p3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    const v5, 0x7f02019d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v7, v7, v5, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v5, p3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mIsHugeFontEnabled:Z
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2100(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f10002b

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_1
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    iget v5, p3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    invoke-direct {p0, v1, v5}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    iget-object v1, p3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->dataDescription:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v5, p3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->dataDescription:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mIsUserProfile:Z
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryIndicator:Landroid/view/View;

    iget-boolean v1, p3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->blackListIndicator:Landroid/view/View;

    iget-boolean v1, p3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlackList:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_4
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    iget v5, p3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-static {v1, v5}, Lcom/android/contacts/common/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->presenceIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    check-cast v1, Lcom/android/contacts/detail/ActionsViewContainer;

    invoke-virtual {v1, p3}, Lcom/android/contacts/detail/ActionsViewContainer;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/android/contacts/detail/ActionsViewContainer;->setPosition(I)V

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->registerForContextMenu(Landroid/view/View;)V

    invoke-direct {p0, v0, p3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->bindPrimaryActionButton(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->bindGroupEntriesView(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    iget v1, p3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->textDirection:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    iget v1, p3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->textDirection:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f10002d

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_5
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v3

    goto :goto_4

    :cond_8
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method private bindGroupEntriesView(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 2

    const-string v0, "mimetype"

    iget-object v1, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private bindPrimaryActionButton(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/res/Resources;)V
    .locals 6

    const/4 v5, -0x1

    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryActionButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v3, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->primaryActionIcon:I

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/contacts/sim/detail/DetailSimManager;->getOperation(Landroid/content/Context;)Lcom/samsung/contacts/sim/detail/DetailSimOperation;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2, p2, p3}, Lcom/samsung/contacts/sim/detail/DetailSimOperation;->setSimIconIfNeeded(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/res/Resources;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->primaryActionIcon:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->primaryActionDescription:I

    if-eq v3, v5, :cond_1

    iget v3, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->primaryActionDescription:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private bindSecondaryActionButton(Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;Landroid/content/res/Resources;)V
    .locals 6

    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->secondaryActionIcon:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->secondaryActionIcon:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->secondaryActionDescription:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, p1, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;->secondaryActionViewContainer:Landroid/view/View;

    iget-object v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->secondaryIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private getConnectionEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;

    if-eqz p2, :cond_0

    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->bindConnectionEntriesView(Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;)V

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030031

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v1, v3}, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewCache;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "getDetailEntryView"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getCustomStart(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    :goto_0
    const-string v2, "mimetype"

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vnd.android.cursor.item/ringtone"

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vnd.android.cursor.item/vibration"

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vnd.android.cursor.item/alerttone"

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vnd.android.cursor.item/nickname"

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vnd.android.cursor.item/note"

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v1, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "getDetailEntryView"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getCustomEnd(Ljava/lang/String;)V

    return-object p2

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030032

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, p2, v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->primaryIntent:Landroid/content/Intent;

    if-nez v2, :cond_3

    iget-object v1, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private getFaceTaggedEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    sget-object v7, Lcom/android/contacts/ContactsApplication;->contactsDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v8, "getFaceTaggedEntryView"

    invoke-virtual {v7, v8}, Lcom/samsung/contacts/ContactsPerformance;->getCustomStart(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$FaceTaggedPhotoViewEntry;

    if-eqz p2, :cond_0

    move-object v5, p2

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/detail/ContactDetailFragment$FaceTaggedPhotoViewCache;

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment$FaceTaggedPhotoViewEntry;->mediaPhotoInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment$FaceTaggedPhotoViewEntry;->mediaPhotoInfos:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    iget-object v7, v6, Lcom/android/contacts/detail/ContactDetailFragment$FaceTaggedPhotoViewCache;->faceTaggedPhotosContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-le v7, v2, :cond_1

    iget-object v7, v6, Lcom/android/contacts/detail/ContactDetailFragment$FaceTaggedPhotoViewCache;->faceTaggedPhotosContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mFaceTaggedPhotoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    const v7, 0x7f080105

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v7, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mFaceTaggedPhotoCache:Ljava/util/WeakHashMap;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1900(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/WeakHashMap;

    move-result-object v9

    invoke-direct {v7, v8, v3, v4, v9}, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;Ljava/util/WeakHashMap;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/samsung/contacts/detail/FaceTaggedPhotoLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030033

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/contacts/detail/ContactDetailFragment$FaceTaggedPhotoViewCache;

    invoke-direct {v6, v5}, Lcom/android/contacts/detail/ContactDetailFragment$FaceTaggedPhotoViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030034

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v7, v6, Lcom/android/contacts/detail/ContactDetailFragment$FaceTaggedPhotoViewCache;->faceTaggedPhotosContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment$FaceTaggedPhotoViewEntry;->mediaPhotoInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    iget-object v7, v6, Lcom/android/contacts/detail/ContactDetailFragment$FaceTaggedPhotoViewCache;->faceTaggedPhotosContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_3

    iget-object v7, v6, Lcom/android/contacts/detail/ContactDetailFragment$FaceTaggedPhotoViewCache;->faceTaggedPhotosContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setClickable(Z)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    const v7, 0x7f080105

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    sget-object v7, Lcom/android/contacts/ContactsApplication;->contactsDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v8, "getFaceTaggedEntryView"

    invoke-virtual {v7, v8}, Lcom/samsung/contacts/ContactsPerformance;->getCustomEnd(Ljava/lang/String;)V

    return-object v5
.end method

.method private getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    const/16 v8, 0x8

    const v10, 0x7f030072

    const/4 v7, 0x0

    sget-object v6, Lcom/android/contacts/ContactsApplication;->contactsDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v9, "getDetailHeaderView"

    invoke-virtual {v6, v9}, Lcom/samsung/contacts/ContactsPerformance;->getCustomStart(Ljava/lang/String;)V

    const v0, 0x7f030072

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    iget v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->layoutResourceId:I

    if-ne v6, v10, :cond_0

    move-object v4, p1

    :cond_0
    if-nez v4, :cond_1

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v10, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    invoke-direct {v5, v4, v10}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;-><init>(Landroid/view/View;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->displayNameView:Lcom/samsung/contacts/widget/StrokeTextView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v6

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v9

    iget-object v10, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->displayNameView:Lcom/samsung/contacts/widget/StrokeTextView;

    invoke-static {v6, v9, v10}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDisplayName(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;)V

    :cond_2
    iget-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->companyView:Lcom/samsung/contacts/widget/StrokeTextView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v6

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v9

    iget-object v10, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->companyView:Lcom/samsung/contacts/widget/StrokeTextView;

    iget-object v11, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->emptyView:Landroid/view/View;

    invoke-static {v6, v9, v10, v11}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setCompanyName(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;Landroid/view/View;)Z

    :cond_3
    iget-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Lcom/samsung/contacts/widget/ContactPhotoView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    move-result-object v6

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v10}, Lcom/android/contacts/detail/ContactDetailFragment;->access$800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v10

    iget-object v11, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Lcom/samsung/contacts/widget/ContactPhotoView;

    iget-object v12, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;
    invoke-static {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->access$900(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v12

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;

    iget-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoOverlayView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoContentDescription:Ljava/lang/StringBuilder;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mIsDefaultImage:Z
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->defaultPhotoView:Landroid/view/ViewStub;

    invoke-virtual {v6, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Lcom/samsung/contacts/widget/ContactPhotoView;

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/widget/ContactPhotoView;->setImageAlpha(I)V

    iget-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Lcom/samsung/contacts/widget/ContactPhotoView;

    invoke-virtual {v6}, Lcom/samsung/contacts/widget/ContactPhotoView;->recycle()V

    :cond_4
    :goto_0
    iget-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->starredView:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v6

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mIsUserProfile:Z
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v9

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v10}, Lcom/android/contacts/detail/ContactDetailFragment;->access$800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/contacts/model/Contact;->getStarred()Z

    move-result v10

    invoke-static {v1, v6, v9, v10}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->configureStarredImageView(Landroid/widget/ImageView;ZZZ)V

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    new-instance v6, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;

    invoke-direct {v6, p0, v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Landroid/net/Uri;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v3, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->noSyncView:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    iget-object v9, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->noSyncView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableNoSyncIcon()Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    sget-object v6, Lcom/android/contacts/ContactsApplication;->contactsDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v7, "getDetailHeaderView"

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/ContactsPerformance;->getCustomEnd(Ljava/lang/String;)V

    return-object v4

    :cond_7
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mIsBusinesscard:Z
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Lcom/samsung/contacts/widget/ContactPhotoView;

    invoke-virtual {v6}, Lcom/samsung/contacts/widget/ContactPhotoView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0231

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Lcom/samsung/contacts/widget/ContactPhotoView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v9}, Lcom/samsung/contacts/widget/ContactPhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_8
    iget-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->defaultPhotoView:Landroid/view/ViewStub;

    invoke-virtual {v6, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Lcom/samsung/contacts/widget/ContactPhotoView;

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/samsung/contacts/widget/ContactPhotoView;->setImageAlpha(I)V

    goto/16 :goto_0

    :cond_9
    move v6, v8

    goto :goto_1
.end method

.method private getHorizontalButtonEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v5, 0x1

    const/16 v10, 0x8

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsCapsData:Lcom/samsung/contacts/model/rcs/RcsCaps;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/samsung/contacts/model/rcs/RcsCaps;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsCapsData:Lcom/samsung/contacts/model/rcs/RcsCaps;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/samsung/contacts/model/rcs/RcsCaps;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/contacts/model/rcs/RcsCaps;->getRcsCapsItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    move v2, v5

    :goto_0
    if-eqz p1, :cond_1

    move-object v3, p1

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;

    :goto_1
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mHasVideoCall:Z
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->leftButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v8, v8, Lcom/android/contacts/detail/ContactDetailFragment;->mIconManager:Lcom/samsung/contacts/detail/ContactDetailIconManager;

    invoke-virtual {v8}, Lcom/samsung/contacts/detail/ContactDetailIconManager;->getVideoCallIcon()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->leftButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mHorizontalButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->leftButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mHorizontalButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->leftButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e0306

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mHasIpCall:Z
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1700(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->middleButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v8, v8, Lcom/android/contacts/detail/ContactDetailFragment;->mIconManager:Lcom/samsung/contacts/detail/ContactDetailIconManager;

    invoke-virtual {v8}, Lcom/samsung/contacts/detail/ContactDetailIconManager;->getIpCallIcon()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->middleButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mHorizontalButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->middleButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->secondDivider:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1800(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->rightButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v8, v8, Lcom/android/contacts/detail/ContactDetailFragment;->mIconManager:Lcom/samsung/contacts/detail/ContactDetailIconManager;

    invoke-virtual {v8}, Lcom/samsung/contacts/detail/ContactDetailIconManager;->getMessageIcon()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->rightButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mHorizontalButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->rightButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e0308

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    const-string v7, "ContactDetailFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getHorizontalButtonEntryView, isRCSeEnabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsCapsData:Lcom/samsung/contacts/model/rcs/RcsCaps;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/samsung/contacts/model/rcs/RcsCaps;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/contacts/model/rcs/RcsCaps;->getIMList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    move v1, v5

    :goto_5
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsCapsData:Lcom/samsung/contacts/model/rcs/RcsCaps;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/samsung/contacts/model/rcs/RcsCaps;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/contacts/model/rcs/RcsCaps;->getFTList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    move v0, v5

    :goto_6
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsIMDivider:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsIMButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsIMButton:Landroid/widget/ImageView;

    const v7, 0x7f0201c2

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsIMButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mHorizontalRcsButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsIMButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsFTDivider:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsFTButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsFTButton:Landroid/widget/ImageView;

    const v6, 0x7f0201c1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsFTButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mHorizontalRcsButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsFTButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_7
    return-object v3

    :cond_0
    move v2, v6

    goto/16 :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03002e

    invoke-virtual {v7, v8, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;

    invoke-direct {v4, v3}, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->leftButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->divider:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_3
    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->middleButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->secondDivider:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_4
    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->rightButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_5
    move v1, v6

    goto/16 :goto_5

    :cond_6
    move v0, v6

    goto :goto_6

    :cond_7
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsIMDivider:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsIMButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsFTDivider:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsFTButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7
.end method

.method private getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    if-eqz p2, :cond_0

    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;

    :goto_0
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300db

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;

    invoke-direct {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getLineEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method private getNetworkTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    if-eqz p2, :cond_0

    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;

    :goto_0
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030039

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;

    invoke-direct {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getPhoneNumberListDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 6

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumberList:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2900(Lcom/android/contacts/detail/ContactDetailFragment;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$11;

    invoke-direct {v5, p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$11;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$12;

    invoke-direct {v3, p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$12;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object v2
.end method

.method private getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorEntry;

    if-eqz p2, :cond_0

    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewCache;

    :goto_0
    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorEntry;->mIsPrimary:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewCache;->primaryView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewCache;->secondaryView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03003a

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewCache;

    invoke-direct {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewCache;->primaryView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewCache;->secondaryView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private getSnsEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x0

    sget-object v5, Lcom/android/contacts/ContactsApplication;->contactsDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v6, "getSnsEntryView"

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/ContactsPerformance;->getCustomStart(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;

    if-eqz p2, :cond_2

    move-object v3, p2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;

    :goto_0
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->accountIcon:Landroid/widget/ImageView;

    iget-object v6, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->accountIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->message:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->place:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->placeContainer:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->photoUrls:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->photoUrls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->pagerContainer:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->like:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->reply:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->timeStamp:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->optionalInfoContainer:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->intent:Landroid/content/Intent;

    if-nez v5, :cond_9

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->container:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->container:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    :goto_4
    iget-boolean v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->applayViEffect:Z

    if-eqz v5, :cond_1

    new-instance v1, Lcom/samsung/contacts/detail/CardListViewFlickAnimator;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v3, v5}, Lcom/samsung/contacts/detail/CardListViewFlickAnimator;-><init>(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-boolean v5, v5, Lcom/android/contacts/detail/ContactDetailFragment;->mIsScrollingUp:Z

    invoke-virtual {v1, v5}, Lcom/samsung/contacts/detail/CardListViewFlickAnimator;->onFlick(Z)V

    :cond_1
    sget-object v5, Lcom/android/contacts/ContactsApplication;->contactsDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v6, "getSnsEntryView"

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/ContactsPerformance;->getCustomEnd(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03003b

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;

    invoke-direct {v4, v3}, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->placeContainer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->place:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->place:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->pagerContainer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/samsung/contacts/detail/SnsFeedPhotoAdapter;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/samsung/contacts/detail/SnsFeedPhotoAdapter;-><init>(Landroid/content/Context;)V

    iget-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->photoUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lcom/samsung/contacts/detail/SnsFeedPhotoAdapter;->setPhotoUrls(Ljava/util/ArrayList;)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->container:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/samsung/contacts/detail/SnsFeedPhotoAdapter;->setClickTargetView(Landroid/view/View;)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->setOverScrollMode(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setClipChildren(Z)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v10}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->pager:Landroid/support/v4/view/ViewPager;

    iget v6, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->currentPage:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;

    invoke-direct {v6, p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto/16 :goto_2

    :cond_5
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->optionalInfoContainer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->like:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->likeIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->like:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->like:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->reply:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->replyIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->reply:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    iget-object v5, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->timeStamp:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->timeStamp:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->likeIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->like:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->like:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->like:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->replyIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->reply:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->reply:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->reply:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_8
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->timeStamp:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->timeStamp:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->timeStamp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewCache;->container:Landroid/view/View;

    new-instance v6, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$3;

    invoke-direct {v6, p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4
.end method

.method private getSnsLoadingEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method private getVappEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$VappViewEntry;

    if-eqz p2, :cond_0

    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$VappViewCache;

    :goto_0
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$VappViewCache;->data:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$VappViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$VappViewCache;->voiceCallButton:Landroid/widget/ImageView;

    iget v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$VappViewEntry;->voiceCallIcon:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$VappViewCache;->voiceCallButton:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$VappViewEntry;->voiceCallDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$VappViewCache;->videoCallButton:Landroid/widget/ImageView;

    iget v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$VappViewEntry;->videoCallIcon:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$VappViewCache;->videoCallButton:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$VappViewEntry;->videoCallDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$VappViewCache;->voiceCallContainer:Landroid/view/View;

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$VappViewEntry;->voiceCallIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$VappViewCache;->videoCallContainer:Landroid/view/View;

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$VappViewEntry;->videoCallIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030037

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$VappViewCache;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mVappActionClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v1, v3}, Lcom/android/contacts/detail/ContactDetailFragment$VappViewCache;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

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

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getId()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getViewType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getNetworkTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getFaceTaggedEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getSnsEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getSnsLoadingEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getConnectionEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getHorizontalButtonEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getLineEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getVappEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled()Z

    move-result v0

    return v0
.end method
