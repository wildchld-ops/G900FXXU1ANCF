.class public Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;
.super Ljava/lang/Object;
.source "GridSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/grid/GridSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridAdapter"
.end annotation


# instance fields
.field mAirplaneModeSwitchEnabler:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/AirplaneModeSwitchEnabler;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExpandableGridViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/grid/ExpandableGridView;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mLastExpandableGridView:Lcom/android/settings/grid/ExpandableGridView;

.field private mMaxOfCol:I

.field private mParentLayout:Landroid/widget/LinearLayout;

.field mTouchSensitivityEnabler:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TouchSensitivityEnabler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/grid/GridSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/grid/GridSettingsFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mMaxOfCol:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mTouchSensitivityEnabler:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mAirplaneModeSwitchEnabler:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaders:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaderViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mExpandableGridViews:Ljava/util/ArrayList;

    return-void
.end method

.method private makeGridView(Landroid/view/LayoutInflater;Landroid/preference/PreferenceActivity$Header;)Lcom/android/settings/grid/ExpandableGridView;
    .locals 4

    new-instance v0, Lcom/android/settings/grid/ExpandableGridView;

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mMaxOfCol:I

    invoke-direct {v0, v2, p1, v3}, Lcom/android/settings/grid/ExpandableGridView;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;I)V

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mContext:Landroid/content/Context;

    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/grid/ExpandableGridView;->setCategoryText(Ljava/lang/String;)V

    iget v2, p2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v0, v2}, Lcom/android/settings/grid/ExpandableGridView;->loadExpandState(I)V

    return-object v0
.end method

.method private makeToggleView(Landroid/view/LayoutInflater;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;
    .locals 7

    const v3, 0x7f0400c4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b009b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ToggleImageView;

    const v3, 0x7f0b009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    if-lez v3, :cond_0

    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v3}, Lcom/android/settings/ToggleImageView;->setImageResource(I)V

    :cond_0
    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-lez v3, :cond_1

    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v3, v3, Lcom/android/settings/grid/GridSettingsFragment;->mToggleHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v3, v3, Lcom/android/settings/grid/GridSettingsFragment;->mViewLongClickListner:Landroid/view/View$OnLongClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v3, v3, Lcom/android/settings/grid/GridSettingsFragment;->mViewLongClickListner:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    iget-wide v3, p2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b0714

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mTouchSensitivityEnabler:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/settings/TouchSensitivityEnabler;

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/android/settings/TouchSensitivityEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/ToggleImageView;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-object v2

    :cond_4
    iget-wide v3, p2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b068d

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mAirplaneModeSwitchEnabler:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/settings/AirplaneModeSwitchEnabler;

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/ToggleImageView;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCountOfHeaderViews()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCountOfHeaders()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderByPosition(I)Landroid/preference/PreferenceActivity$Header;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method public getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 1

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHeaderViewByPosition(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getPositionByView(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getViewByHeaderId(J)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iget-wide v1, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public initView(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V
    .locals 9

    const/16 v8, 0x8

    iput-object p2, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mParentLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x2

    if-ne p3, v5, :cond_0

    const/4 v5, 0x5

    iput v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mMaxOfCol:I

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v0}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mMaxOfCol:I

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mLastExpandableGridView:Lcom/android/settings/grid/ExpandableGridView;

    if-eqz v5, :cond_1

    const-string v5, "GridSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "header count in table :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mLastExpandableGridView:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v7}, Lcom/android/settings/grid/ExpandableGridView;->getHeaderViewCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mLastExpandableGridView:Lcom/android/settings/grid/ExpandableGridView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mLastExpandableGridView:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v5}, Lcom/android/settings/grid/ExpandableGridView;->getHeaderViewCount()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mLastExpandableGridView:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v5, v8}, Lcom/android/settings/grid/ExpandableGridView;->setVisibility(I)V

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->makeGridView(Landroid/view/LayoutInflater;Landroid/preference/PreferenceActivity$Header;)Lcom/android/settings/grid/ExpandableGridView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mLastExpandableGridView:Lcom/android/settings/grid/ExpandableGridView;

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mExpandableGridViews:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mLastExpandableGridView:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaderViews:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->makeHeaderView(Landroid/view/LayoutInflater;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mLastExpandableGridView:Lcom/android/settings/grid/ExpandableGridView;

    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1, v6}, Lcom/android/settings/grid/ExpandableGridView;->addView(Landroid/view/View;Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_3
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v5, v5, Lcom/android/settings/grid/GridSettingsFragment;->mToggleHeaderClickListener:Landroid/view/View$OnClickListener;

    if-nez v5, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->makeHeaderView(Landroid/view/LayoutInflater;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;

    move-result-object v3

    :goto_3
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mLastExpandableGridView:Lcom/android/settings/grid/ExpandableGridView;

    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v6}, Lcom/android/settings/grid/ExpandableGridView;->addView(Landroid/view/View;Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->makeToggleView(Landroid/view/LayoutInflater;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mLastExpandableGridView:Lcom/android/settings/grid/ExpandableGridView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mLastExpandableGridView:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v5}, Lcom/android/settings/grid/ExpandableGridView;->getHeaderViewCount()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mLastExpandableGridView:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v5, v8}, Lcom/android/settings/grid/ExpandableGridView;->setVisibility(I)V

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mExpandableGridViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mExpandableGridViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/grid/ExpandableGridView;

    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/settings/grid/ExpandableGridView;->attachView(Landroid/widget/LinearLayout;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public makeHeaderView(Landroid/view/LayoutInflater;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;
    .locals 7

    const v3, 0x7f0400c4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b009b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ToggleImageView;

    const v3, 0x7f0b009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    if-lez v3, :cond_0

    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v3}, Lcom/android/settings/ToggleImageView;->setImageResource(I)V

    :cond_0
    iget-wide v3, p2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b068c

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getTetheringTitle(Landroid/content/Context;)I

    move-result v3

    iput v3, p2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    :cond_1
    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-lez v3, :cond_2

    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v3, v3, Lcom/android/settings/grid/GridSettingsFragment;->mHeaderViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v3, v3, Lcom/android/settings/grid/GridSettingsFragment;->mViewLongClickListner:Landroid/view/View$OnLongClickListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v3, v3, Lcom/android/settings/grid/GridSettingsFragment;->mViewLongClickListner:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    return-object v2
.end method

.method public onOrientationChanged(I)V
    .locals 4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mMaxOfCol:I

    const-string v1, "GridSettings"

    const-string v2, "onOrientationChanged - land"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mExpandableGridViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mExpandableGridViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/grid/ExpandableGridView;

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mMaxOfCol:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/grid/ExpandableGridView;->changeMaxOfColumn(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mMaxOfCol:I

    const-string v1, "GridSettings"

    const-string v2, "onOrientationChanged - land"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mAirplaneModeSwitchEnabler:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mAirplaneModeSwitchEnabler:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v5}, Lcom/android/settings/grid/GridSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "development"

    invoke-virtual {v5, v6, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "show"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v7, "eng"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-wide/32 v5, 0x7f0b06d9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getViewByHeaderId(J)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v3, :cond_3

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    const-wide/32 v5, 0x7f0b070b

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getViewByHeaderId(J)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v5}, Lcom/android/settings/grid/GridSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "easy_mode_switch"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v5}, Lcom/android/settings/grid/GridSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "easy_mode_splanner"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    const-wide/32 v5, 0x7f0b0704

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getViewByHeaderId(J)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v5}, Lcom/android/settings/grid/GridSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "easy_mode_switch"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v5}, Lcom/android/settings/grid/GridSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "easy_mode_splanner"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->resumeEnabler()V

    return-void

    :cond_3
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public resumeEnabler()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mTouchSensitivityEnabler:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mTouchSensitivityEnabler:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TouchSensitivityEnabler;

    invoke-virtual {v0}, Lcom/android/settings/TouchSensitivityEnabler;->resume()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mAirplaneModeSwitchEnabler:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->mAirplaneModeSwitchEnabler:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    goto :goto_1

    :cond_1
    return-void
.end method
