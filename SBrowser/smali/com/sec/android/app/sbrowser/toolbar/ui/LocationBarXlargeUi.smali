.class public Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;
.super Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
.source "LocationBarXlargeUi.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi$TabletUrlBar;
    }
.end annotation


# instance fields
.field private currentState:I

.field private mFavicon:Landroid/widget/ImageView;

.field private mTb_toolbar_bookmark:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0a0200

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlTextWatcher:Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    return-object v0
.end method

.method private updateBookmarkIconVisibility()V
    .locals 5

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->currentState:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->setNavigationButtonVisiblity(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected changeState(I)V
    .locals 2

    const/16 v1, 0x8

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->changeState(I)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->currentState:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->updateBookmarkIconVisibility()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarBookmarkIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hasCurFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sUrlHasFocus:Z

    return v0
.end method

.method public modelPropertyChanged(ILjava/lang/Object;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->url()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    :pswitch_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v3, p2

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    if-eqz v1, :cond_4

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->url()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$BookmarkNode;->url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->updateBookmarkIcon()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->onFinishInflate()V

    const v0, 0x7f0a00ec

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mFavicon:Landroid/widget/ImageView;

    return-void
.end method

.method public onPageLoadStarted(Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->updateBookmarkIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->updateBookmarkIconVisibility()V

    return-void
.end method

.method public setBookMarkImage()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getBookmarkId()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0
.end method

.method public setDeleteButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setFavicon(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mFavicon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mFavicon:Landroid/widget/ImageView;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setFaviconVisibility(Z)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mFavicon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mFavicon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setLoadProgress(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setLoadProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getToolbarView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->setLoadProgress(I)V

    return-void
.end method

.method public tabSelected()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->updateBookmarkIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->updateBookmarkIconVisibility()V

    return-void
.end method

.method public updateBookmarkIcon()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    return-void
.end method
