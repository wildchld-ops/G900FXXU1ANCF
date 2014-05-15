.class public Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;
.super Landroid/widget/EditText;
.source "UrlEditTextBaseUi.java"


# static fields
.field private static final URL_MAXLENGTH:I = 0x800


# instance fields
.field private mColor:I

.field protected mLocationbar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

.field public mOriginalUrlLocation:Ljava/lang/String;

.field public mSimplifiedUrlLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "CscFeature_Web_EnablePopup4MaxLengthReachedDuringUrlInput"

    invoke-static {v0}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->onSetFilters(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static getUrlContentsPrePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v2, p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v3, 0x2f

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object v2, p0

    goto :goto_0
.end method

.method private scrollToTLD()V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setSelection(I)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method color_stuff()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "link_url"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_color"

    const v3, -0x1000000

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mColor:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "url_color"

    const v3, -0x1000000

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mColor:I

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mLocationbar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mLocationbar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->backKeyPressed()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSetFilters(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;

    const/16 v3, 0x800

    invoke-direct {v2, p1, v3}, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;-><init>(Landroid/content/Context;I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setLocationBar(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mLocationbar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    return-void
.end method

.method public setUrl(Ljava/lang/String;Z)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    if-eqz p2, :cond_3

    invoke-static {p1, v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->simplifyUrlForDisplay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getUrlContentsPrePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mSimplifiedUrlLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getUrlContentsPrePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mOriginalUrlLocation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->color_stuff()V

    iget v8, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mColor:I

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->isFocused()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->scrollToTLD()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->getEditableText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    :catch_0
    move-exception v1

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mOriginalUrlLocation:Ljava/lang/String;

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mSimplifiedUrlLocation:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mOriginalUrlLocation:Ljava/lang/String;

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mSimplifiedUrlLocation:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->color_stuff()V

    iget v8, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mColor:I

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
