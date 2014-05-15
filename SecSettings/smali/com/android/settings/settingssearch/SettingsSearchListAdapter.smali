.class public Lcom/android/settings/settingssearch/SettingsSearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/settingssearch/SettingsSearchItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final MENU_TYPE_DIABLE_FLAG:I

.field private final MENU_TYPE_MASK_FLAG:I

.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mKeyWord:Ljava/lang/String;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mResourceId:I

.field private mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/android/settings/settingssearch/SettingsSearchItem;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    const/16 v0, 0x100

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->MENU_TYPE_DIABLE_FLAG:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->MENU_TYPE_MASK_FLAG:I

    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    iput p2, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mResourceId:I

    iput-object p4, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v0, p2, v3}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v1, -0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    const/4 v1, -0x1

    :cond_1
    return v1

    :cond_2
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_1

    :cond_0
    const/16 v18, 0x0

    :goto_0
    return-object v18

    :cond_1
    move-object/from16 v18, p2

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "layout_inflater"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mResourceId:I

    move/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    new-instance v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;

    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;)V

    const v27, 0x7f0b04af

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    const v27, 0x7f0b04b0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v27, v0

    aget-object v11, v27, p1

    if-eqz v11, :cond_12

    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    const v27, 0x7f0b04b2

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    const v27, 0x7f0b04ae

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    :goto_3
    const/16 v23, 0x0

    iget-object v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    iget-wide v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_4
    new-instance v20, Landroid/text/SpannableString;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v27, " "

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v9, -0x1

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_5
    array-length v0, v6

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_9

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v27, v0

    aget-object v28, v6, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_7

    aget-object v27, v6, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    aget-object v27, v6, v8

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v9, v0, :cond_2

    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xff0001

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v28, v15, v9

    const/16 v29, 0x12

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-interface {v0, v1, v9, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;

    goto/16 :goto_1

    :cond_4
    const v27, 0x7f0b04b2

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    const-string v13, ""

    goto/16 :goto_3

    :cond_6
    iget-object v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    goto/16 :goto_4

    :cond_7
    const/16 v21, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v25, v23

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v27

    add-int v7, v21, v27

    :goto_7
    if-ltz v21, :cond_2

    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xff0001

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v28, v21, v5

    add-int v29, v7, v5

    const/16 v30, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    add-int/2addr v5, v7

    goto :goto_6

    :cond_8
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v27

    add-int v7, v21, v27

    goto :goto_7

    :cond_9
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v22, 0x0

    const/4 v5, 0x0

    iget-object v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_c

    iget-wide v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    move-wide/from16 v27, v0

    const-wide/16 v29, -0x1

    cmp-long v27, v27, v29

    if-eqz v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    iget-wide v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    :cond_a
    :goto_8
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    :goto_9
    array-length v0, v6

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_f

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v27, v0

    aget-object v28, v6, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_d

    aget-object v27, v6, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    aget-object v27, v6, v8

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v9, v0, :cond_b

    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xff0001

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v28, v15, v9

    const/16 v29, 0x12

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-interface {v0, v1, v9, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_c
    iget-object v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    move-object/from16 v22, v0

    goto :goto_8

    :cond_d
    const/16 v21, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v25, v22

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v27

    add-int v7, v21, v27

    :goto_b
    if-ltz v21, :cond_b

    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const v28, -0xff0001

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v28, v21, v5

    add-int v29, v7, v5

    const/16 v30, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    add-int/2addr v5, v7

    goto :goto_a

    :cond_e
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v27

    add-int v7, v21, v27

    goto :goto_b

    :cond_f
    const-string v27, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_10

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_10
    const v27, 0x7f0b04b1

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x3

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    new-instance v27, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setId(I)V

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    move/from16 v27, v0

    if-eqz v27, :cond_13

    const/16 v27, 0x1

    :goto_c
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    const/16 v28, 0x100

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_11
    :goto_d
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_13
    const/16 v27, 0x0

    goto :goto_c

    :cond_14
    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x3

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    new-instance v27, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    iput-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setId(I)V

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v28, v0

    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    move/from16 v27, v0

    if-eqz v27, :cond_15

    const/16 v27, 0x1

    :goto_e
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    const/16 v28, 0x100

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_d

    :cond_15
    const/16 v27, 0x0

    goto :goto_e

    :cond_16
    iget v0, v11, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x3

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "layout_inflater"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    const v27, 0x7f0401b6

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d
.end method
