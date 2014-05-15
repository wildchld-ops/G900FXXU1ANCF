.class Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ToolbarSwipeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabViewPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;
    }
.end annotation


# static fields
.field private static final URLBAR_LEFT_PADDING:I = 0xf


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$600(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->setTopToolbarLayout(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Lcom/sec/android/app/sbrowser/common/Tab;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->setBottomToolbarLayout(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)V

    return-void
.end method

.method private setBottomToolbarLayout(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a027e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a027d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mHomeScreenMode:I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$300(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)I

    move-result v2

    if-nez v2, :cond_2

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a027f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0280

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mCanGoBack:Z
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1800(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0271

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f02018b

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mCanGoForward:Z
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z

    move-result v2

    if-eqz v2, :cond_1

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0272

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f02018f

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mCanGoBack:Z
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1800(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z

    move-result v2

    if-eqz v2, :cond_3

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a026f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f020187

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_3
    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mCanGoForward:Z
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z

    move-result v2

    if-eqz v2, :cond_1

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0270

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private setTopToolbarLayout(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 11

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a027b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a027c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0277

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapterTabCount:I
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$700(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0274

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a01f9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsQuickLaunch:Z
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1200(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a01fb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    :goto_0
    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsReaderModeEnabled:Z
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1600(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z

    move-result v7

    if-eqz v7, :cond_1

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0026

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsIncognito:Z
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1700(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z

    move-result v7

    if-eqz v7, :cond_2

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0278

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f020180

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0026

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f020184

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0276

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v7, 0x7f020155

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v7, 0x7f0201e5

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0279

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v7, 0x7f020136

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const v7, 0x7f0201e5

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a027b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v8, 0x7f020184

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$600(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080057

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1300(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v7

    if-nez v7, :cond_6

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1300(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "about:blank"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a01fc

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsBookmarked:Z
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1500(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x7f020101

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsSecurePage:Z
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$1100(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z

    move-result v7

    if-eqz v7, :cond_0

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a01fa

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a01fd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0xe

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapterTabCount:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$700(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    const-string v4, "ToolbarSwipeHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAB_SWIPE start of instantiateItem position ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;

    invoke-direct {v1, p0, v7}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;-><init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$1;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400a3

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$902(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Landroid/view/View;)Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabInformation:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$500(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;->getTabAtPosition(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;I)V

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    check-cast p1, Landroid/support/v4/view/ViewPager;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;

    move-result-object v4

    return-object v4

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mTabInformation:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$500(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabWrapperBridge;->getTabCount()I

    move-result v1

    #setter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapterTabCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$702(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;I)I

    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapterTabCount:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$700(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)I

    move-result v1

    #calls: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->setCurrentPage(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$2400(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mAdapterTabCount:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$700(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;->this$0:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    #getter for: Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->mModel:Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->access$200(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;->evictBitmapFromCache()V

    :cond_0
    return-void
.end method
