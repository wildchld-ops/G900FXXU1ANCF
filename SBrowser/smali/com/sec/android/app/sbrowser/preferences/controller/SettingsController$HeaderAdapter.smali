.class Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;Landroid/content/Context;Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->access$102(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    return-void
.end method

.method private getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0a004d

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const/4 v0, 0x7

    :cond_2
    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    return v0
.end method

.method public getSelectedId()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mSelectedId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v11

    const/4 v10, 0x0

    if-eqz p2, :cond_0

    move-object/from16 v10, p2

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;

    :goto_0
    packed-switch v11, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-object v10

    :cond_0
    new-instance v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v13, v0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$1;)V

    packed-switch v11, :pswitch_data_1

    :goto_2
    :pswitch_1
    invoke-virtual {v10, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->access$100()Landroid/view/LayoutInflater;

    move-result-object v24

    const v25, 0x1090102

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p3

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    :goto_3
    move-object/from16 v24, v10

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    goto :goto_2

    :cond_1
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x0

    const v26, 0x1010208

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_3

    :pswitch_3
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x5

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v24, v10

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v10, v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->changeViewStyle(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_2

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->access$100()Landroid/view/LayoutInflater;

    move-result-object v24

    const v25, 0x7f060018

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p3

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    :goto_4
    const v24, 0x7f0a001a

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    const v24, 0x7f0a001b

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mSummary:Landroid/widget/TextView;

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->access$100()Landroid/view/LayoutInflater;

    move-result-object v24

    const v25, 0x7f060017

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p3

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    goto :goto_4

    :pswitch_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->access$100()Landroid/view/LayoutInflater;

    move-result-object v24

    const v25, 0x7f06001e

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p3

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    :goto_5
    const v24, 0x7f0a001a

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    const v24, 0x7f0a001b

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mSummary:Landroid/widget/TextView;

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->access$100()Landroid/view/LayoutInflater;

    move-result-object v24

    const v25, 0x7f06001d

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p3

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    goto :goto_5

    :pswitch_6
    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f0c010c

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "home_page"

    const-string v26, ""

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    const-string v7, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    const-string v4, "about:blank"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    check-cast v24, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePageIndex()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v24, 0x7f070094

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v24, 0x7f070095

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    :goto_6
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v15, v0, :cond_7

    aget-object v24, v17, v15

    const-string v25, "pinned_page"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    aget-object v20, v16, v15

    :cond_4
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_5
    aget-object v24, v17, v15

    const-string v25, "most_visited"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    aget-object v18, v16, v15

    goto :goto_7

    :cond_6
    aget-object v24, v17, v15

    const-string v25, "default"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    aget-object v9, v16, v15

    goto :goto_7

    :cond_7
    if-eqz v23, :cond_8

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v23, v20

    :cond_8
    :goto_8
    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mSummary:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mSummary:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v23, v18

    goto :goto_8

    :cond_a
    if-nez v14, :cond_8

    if-eqz v5, :cond_8

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    move-object/from16 v23, v9

    goto :goto_8

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f0c0062

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_c

    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mSummary:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f0c0063

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mSummary:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f0c0251

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_e

    sget-boolean v24, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccountSignedUp:Z

    if-eqz v24, :cond_d

    sget-object v24, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->samsungAccount:Ljava/lang/String;

    if-eqz v24, :cond_d

    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mSummary:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f0c0034

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mSummary:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mSummary:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f0c0033

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_e
    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mSummary:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f0c00dc

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mSummary:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f0c00dd

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v24, 0x7f0a02c0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/CheckBox;

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v24, v0

    new-instance v25, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v13}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;Landroid/content/SharedPreferences;Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v13, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v24, v0

    const-string v25, "webpagemagnifier"

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSelectedId(I)V
    .locals 0

    sput p1, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mSelectedId:I

    return-void
.end method
