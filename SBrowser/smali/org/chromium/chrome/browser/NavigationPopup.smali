.class public Lorg/chromium/chrome/browser/NavigationPopup;
.super Landroid/widget/ListPopupWindow;
.source "NavigationPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/NavigationPopup$1;,
        Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;,
        Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;
    }
.end annotation


# static fields
.field private static final FAVICON_SIZE_DP:I = 0x10

.field private static final MAXIMUM_HISTORY_ITEMS:I = 0x8


# instance fields
.field private final mAdapter:Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mFaviconSize:I

.field private final mHistory:Lorg/chromium/content/browser/NavigationHistory;

.field private final mListItemFactory:Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;

.field private mNativeNavigationPopup:I

.field private final mNavigationClient:Lorg/chromium/content/browser/NavigationClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/NavigationClient;Z)V
    .locals 4

    const/4 v3, 0x0

    const v1, 0x1010300

    invoke-direct {p0, p1, v3, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mNavigationClient:Lorg/chromium/content/browser/NavigationClient;

    iget-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mNavigationClient:Lorg/chromium/content/browser/NavigationClient;

    const/16 v2, 0x8

    invoke-interface {v1, p3, v2}, Lorg/chromium/content/browser/NavigationClient;->getDirectedNavigationHistory(ZI)Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content/browser/NavigationHistory;

    new-instance v1, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;

    invoke-direct {v1, p0, v3}, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;-><init>(Lorg/chromium/chrome/browser/NavigationPopup;Lorg/chromium/chrome/browser/NavigationPopup$1;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mAdapter:Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;

    iget-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4180

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mFaviconSize:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/NavigationPopup;->setModal(Z)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/NavigationPopup;->setInputMethodMode(I)V

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/NavigationPopup;->setHeight(I)V

    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/NavigationPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v1, "NavigationPopup"

    const-string v2, " NavigationPopup creating new HeaderViewListAdapter "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mAdapter:Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/NavigationPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;

    invoke-direct {v1, p1}, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mListItemFactory:Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/NavigationPopup;)Lorg/chromium/content/browser/NavigationHistory;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content/browser/NavigationHistory;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/NavigationPopup;)Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mListItemFactory:Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/NavigationPopup;Landroid/widget/TextView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/NavigationPopup;->updateBitmapForTextView(Landroid/widget/TextView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private initializeNative()V
    .locals 6

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-direct {p0}, Lorg/chromium/chrome/browser/NavigationPopup;->nativeInit()I

    move-result v4

    iput v4, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mNativeNavigationPopup:I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content/browser/NavigationHistory;

    invoke-virtual {v4}, Lorg/chromium/content/browser/NavigationHistory;->getEntryCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content/browser/NavigationHistory;

    invoke-virtual {v4, v1}, Lorg/chromium/content/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content/browser/NavigationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/NavigationEntry;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/content/browser/NavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mNativeNavigationPopup:I

    invoke-direct {p0, v4, v3}, Lorg/chromium/chrome/browser/NavigationPopup;->nativeFetchFaviconForUrl(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget v4, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mNativeNavigationPopup:I

    invoke-static {}, Lorg/chromium/chrome/browser/NavigationPopup;->nativeGetHistoryUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/chromium/chrome/browser/NavigationPopup;->nativeFetchFaviconForUrl(ILjava/lang/String;)V

    return-void
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeFetchFaviconForUrl(ILjava/lang/String;)V
.end method

.method private static native nativeGetHistoryUrl()Ljava/lang/String;
.end method

.method private native nativeInit()I
.end method

.method private onFaviconUpdated(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content/browser/NavigationHistory;

    invoke-virtual {v2}, Lorg/chromium/content/browser/NavigationHistory;->getEntryCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content/browser/NavigationHistory;

    invoke-virtual {v2, v1}, Lorg/chromium/content/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content/browser/NavigationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/NavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/NavigationEntry;->updateFavicon(Landroid/graphics/Bitmap;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mAdapter:Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateBitmapForTextView(Landroid/widget/TextView;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x77

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    :goto_0
    iget v1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mFaviconSize:I

    iget v2, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mFaviconSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mNativeNavigationPopup:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mNativeNavigationPopup:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/NavigationPopup;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mNativeNavigationPopup:I

    :cond_0
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/NavigationEntry;

    iget-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mNavigationClient:Lorg/chromium/content/browser/NavigationClient;

    invoke-virtual {v0}, Lorg/chromium/content/browser/NavigationEntry;->getIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/chromium/content/browser/NavigationClient;->goToNavigationIndex(I)V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/NavigationPopup;->dismiss()V

    return-void
.end method

.method public shouldBeShown()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content/browser/NavigationHistory;

    invoke-virtual {v0}, Lorg/chromium/content/browser/NavigationHistory;->getEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mNativeNavigationPopup:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/NavigationPopup;->initializeNative()V

    :cond_0
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
