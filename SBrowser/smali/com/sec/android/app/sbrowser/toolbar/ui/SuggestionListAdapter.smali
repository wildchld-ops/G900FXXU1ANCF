.class public Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$3;,
        Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;,
        Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;,
        Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSuggestionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionSelectionHandler:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->mSuggestionItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;)Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->mSuggestionSelectionHandler:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;

    return-object v0
.end method

.method private bindView(Landroid/view/View;Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;)V
    .locals 11

    const/4 v5, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v9, 0x1020014

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x1020015

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a0254

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v9, 0x7f0a0255

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v9, 0x7f0a01a4

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->getSuggestion()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getType()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->SEARCH_WHAT_YOU_TYPED:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    if-ne v9, v10, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getsuggestionUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getsuggestionUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->isStarred()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v4, -0x1

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->getSuggestionIconType(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    move-result-object v3

    sget-object v9, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$3;->$SwitchMap$com$sec$android$app$sbrowser$toolbar$ui$SuggestionListAdapter$SuggestionIconType:[I

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    const v4, 0x7f02005b

    :goto_1
    sget-object v9, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->TAG:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    if-eq v3, v9, :cond_1

    sget-object v9, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->BOOKMARK:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    if-eq v3, v9, :cond_1

    sget-object v9, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->OPERATOR:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    if-eq v3, v9, :cond_1

    sget-object v9, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->SAVEPAGE:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    if-eq v3, v9, :cond_1

    sget-object v9, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->HISTORY:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    if-eq v3, v9, :cond_1

    sget-object v9, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->SMARTSUGGEST:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    if-ne v3, v9, :cond_2

    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getsuggestionUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setFingerHoveredInAppWidget(Z)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setFingerHoveredInAppWidget(Z)V

    const/4 v9, -0x1

    if-eq v4, v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz v5, :cond_5

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v9, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$1;

    invoke-direct {v9, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f0a0253

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$2;

    invoke-direct {v10, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_0

    :pswitch_0
    const v4, 0x7f020059

    const/4 v5, 0x1

    goto :goto_1

    :pswitch_1
    const v4, 0x7f020057

    goto :goto_1

    :pswitch_2
    const v4, 0x7f020058

    goto :goto_1

    :pswitch_3
    const v4, 0x7f020059

    const/4 v5, 0x1

    goto :goto_1

    :pswitch_4
    const v4, 0x7f02005a

    goto/16 :goto_1

    :pswitch_5
    const v4, 0x7f020057

    goto/16 :goto_1

    :pswitch_6
    const v4, 0x7f02005b

    goto/16 :goto_1

    :cond_5
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getSuggestionIconType(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getType()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->nativeType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->DEFAULT:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "enable-samsung-bookmark-tag"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->TAG:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->isStarred()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->BOOKMARK:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getType()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->HISTORY_URL:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->HISTORY:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->GLOBE:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getType()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->VOICE_SUGGEST:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->MAGNIFIER:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->VOICE:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->SAVEPAGE:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->OPERATOR:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;->SMARTSUGGEST:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionIconType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSuggestionSelectionHandler()Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->mSuggestionSelectionHandler:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez p2, :cond_0

    const v2, 0x7f040092

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->bindView(Landroid/view/View;Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;)V

    return-object p2
.end method

.method public notifySuggestionsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSuggestionSelectionHandler(Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->mSuggestionSelectionHandler:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;

    return-void
.end method
