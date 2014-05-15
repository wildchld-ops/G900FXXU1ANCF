.class public Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi;
.super Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
.source "LocationBarPhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi$PhUrlTextWatcher;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi;->initializeUiElements()V

    return-void
.end method

.method private initializeUiElements()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi$PhUrlTextWatcher;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi$PhUrlTextWatcher;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi;Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlTextWatcher:Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;

    return-void
.end method


# virtual methods
.method public hasCurFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sUrlHasFocus:Z

    return v0
.end method

.method protected setLoadProgress(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setLoadProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getToolbarView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->setLoadProgress(I)V

    return-void
.end method

.method public setSelectorState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mReloadButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method

.method public setUiElementsVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mUrlEditTextBaseUi:Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setVisibility(I)V

    return-void
.end method
