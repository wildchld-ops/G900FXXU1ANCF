.class public Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;
.super Landroid/widget/LinearLayout;
.source "XlargeTabButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton$ManageControlData;
    }
.end annotation


# static fields
.field private static final PROGRESS_MAX:I = 0x64


# instance fields
.field private final browserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field private isFaviconSet:Z

.field private final mActiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mActiveMatrix:Landroid/graphics/Matrix;

.field private mActiveShader:Landroid/graphics/BitmapShader;

.field private final mActiveShaderPaint:Landroid/graphics/Paint;

.field private final mActiveTabWidth:I

.field private final mAddTabOverlap:I

.field private final mBoderInactive:Landroid/graphics/Paint;

.field private final mButtonWidth:I

.field private final mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field mClose:Landroid/widget/ImageView;

.field private mCurrentTextureHeight:I

.field private mCurrentTextureWidth:I

.field private mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

.field mFaviconIconView:Landroid/widget/ImageView;

.field private final mFocusPaint:Landroid/graphics/Paint;

.field mFocusPath:Landroid/graphics/Path;

.field mInLoad:Z

.field private final mInactiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mInactiveMatrix:Landroid/graphics/Matrix;

.field private mInactiveShader:Landroid/graphics/BitmapShader;

.field private final mInactiveShaderPaint:Landroid/graphics/Paint;

.field mIncognito:Landroid/view/View;

.field private final mIncognitoActiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mIncognitoActiveMatrix:Landroid/graphics/Matrix;

.field private mIncognitoActiveShader:Landroid/graphics/BitmapShader;

.field private final mIncognitoActiveShaderPaint:Landroid/graphics/Paint;

.field private final mIncognitoInactiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mIncognitoInactiveMatrix:Landroid/graphics/Matrix;

.field private mIncognitoInactiveShader:Landroid/graphics/BitmapShader;

.field private final mIncognitoInactiveShaderPaint:Landroid/graphics/Paint;

.field mLock:Landroid/widget/ImageView;

.field private mMaxX:I

.field private mMinX:I

.field mPath:Landroid/graphics/Path;

.field mPressed:Z

.field private final mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressedShader:Landroid/graphics/BitmapShader;

.field private final mPressedShaderPaint:Landroid/graphics/Paint;

.field mSelected:Z

.field mSnapshot:Landroid/view/View;

.field mTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field mTabContent:Landroid/view/View;

.field private final mTabOverlap:I

.field private final mTabSliceWidth:I

.field private final mTabWidth:I

.field mTitle:Landroid/widget/TextView;

.field mWindowPos:[I

.field private final mlargeTabButtonContainer:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;)V
    .locals 8

    const v7, 0x7f020034

    const v6, 0x7f020030

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureWidth:I

    iput v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureHeight:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveShaderPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInactiveShaderPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPressedShaderPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoActiveShaderPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoInactiveShaderPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFocusPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInactiveMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoActiveMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoInactiveMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mBoderInactive:Landroid/graphics/Paint;

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->isFaviconSet:Z

    check-cast p1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->browserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mlargeTabButtonContainer:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setWillNotDraw(Z)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFocusPath:Landroid/graphics/Path;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mWindowPos:[I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->browserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mButtonWidth:I

    const v2, 0x7f090073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabOverlap:I

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mAddTabOverlap:I

    const v2, 0x7f090075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabSliceWidth:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveShaderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInactiveShaderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInactiveShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoActiveShaderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoActiveShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoInactiveShaderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoInactiveShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFocusPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFocusPaint:Landroid/graphics/Paint;

    const v3, 0x7f090076

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFocusPaint:Landroid/graphics/Paint;

    const v3, 0x7f080010

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mBoderInactive:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mBoderInactive:Landroid/graphics/Paint;

    const v3, 0x7f09028d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mBoderInactive:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mBoderInactive:Landroid/graphics/Paint;

    const v3, 0x7f08001f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v2, 0x7f090071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabWidth:I

    const v2, 0x7f09028c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveTabWidth:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoActiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoInactiveDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setGravity(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setOrientation(I)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabOverlap:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabSliceWidth:I

    invoke-virtual {p0, v2, v4, v3, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040084

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabContent:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabContent:Landroid/view/View;

    const v3, 0x7f0a017d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabContent:Landroid/view/View;

    const v3, 0x7f0a00ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabContent:Landroid/view/View;

    const v3, 0x7f0a021b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mLock:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabContent:Landroid/view/View;

    const v3, 0x7f0a021c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mClose:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabContent:Landroid/view/View;

    const v3, 0x7f0a021a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognito:Landroid/view/View;

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mSelected:Z

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInLoad:Z

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPressed:Z

    invoke-static {}, Lorg/samsung/chrome/browser/SbrFaviconController;->getInstance()Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->updateFromTab()V

    iput v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mMinX:I

    iput v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mMaxX:I

    return-void
.end method

.method private closeTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    goto :goto_0
.end method

.method private drawClipped(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mSelected:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoActiveMatrix:Landroid/graphics/Matrix;

    :goto_0
    neg-int v1, p4

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mSelected:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoActiveShader:Landroid/graphics/BitmapShader;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :goto_2
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mBoderInactive:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFocusPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoInactiveMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mSelected:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveMatrix:Landroid/graphics/Matrix;

    :goto_3
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInactiveMatrix:Landroid/graphics/Matrix;

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoInactiveShader:Landroid/graphics/BitmapShader;

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mSelected:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveShader:Landroid/graphics/BitmapShader;

    :goto_4
    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInactiveShader:Landroid/graphics/BitmapShader;

    goto :goto_4
.end method

.method private static getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0
.end method

.method private setFocusPath(Landroid/graphics/Path;IIII)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    int-to-float v0, p2

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabSliceWidth:I

    sub-int v0, p4, v0

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v0, p4

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private setTabPath(Landroid/graphics/Path;IIII)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    int-to-float v0, p2

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabSliceWidth:I

    sub-int v0, p4, v0

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v0, p4

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private updateTabIcons()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognito:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x1

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureWidth:I

    if-ne v7, v9, :cond_0

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureHeight:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureHeight:I

    iput v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureWidth:I

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureWidth:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureHeight:I

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureWidth:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureHeight:I

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureWidth:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureHeight:I

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoActiveDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureWidth:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureHeight:I

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoInactiveDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureWidth:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureHeight:I

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureWidth:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mCurrentTextureHeight:I

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v1, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveShader:Landroid/graphics/BitmapShader;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveShaderPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v3, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInactiveShader:Landroid/graphics/BitmapShader;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInactiveShaderPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInactiveShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v5, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPressedShader:Landroid/graphics/BitmapShader;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPressedShaderPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPressedShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v0, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoActiveShader:Landroid/graphics/BitmapShader;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoActiveShaderPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoActiveShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v2, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoInactiveShader:Landroid/graphics/BitmapShader;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoInactiveShaderPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoInactiveShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveShader:Landroid/graphics/BitmapShader;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInactiveShader:Landroid/graphics/BitmapShader;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoActiveShader:Landroid/graphics/BitmapShader;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoInactiveShader:Landroid/graphics/BitmapShader;

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mWindowPos:[I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getLocationInWindow([I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mSelected:Z

    if-eqz v7, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoActiveShaderPaint:Landroid/graphics/Paint;

    :goto_0
    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPressed:Z

    if-eqz v7, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPressedShaderPaint:Landroid/graphics/Paint;

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mWindowPos:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-direct {p0, p1, v4, v7, v8}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->drawClipped(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;I)V

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mIncognitoInactiveShaderPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_5
    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mSelected:Z

    if-eqz v7, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mActiveShaderPaint:Landroid/graphics/Paint;

    :goto_1
    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInactiveShaderPaint:Landroid/graphics/Paint;

    goto :goto_1
.end method

.method public getMaxX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mMaxX:I

    return v0
.end method

.method public getMinX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mMinX:I

    return v0
.end method

.method public getTab()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method public getTabID()I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    :cond_0
    return v0
.end method

.method public ismPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPressed:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mClose:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->browserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCompositorHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPath:Landroid/graphics/Path;

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setTabPath(Landroid/graphics/Path;IIII)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFocusPath:Landroid/graphics/Path;

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setFocusPath(Landroid/graphics/Path;IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPressed:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->invalidate()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mPressed:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->invalidate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setActivated(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mSelected:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->browserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v4, 0x7f0d003d

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mSelected:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->updateLayoutParams()V

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->postInvalidate()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->browserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mSelected:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0d003b

    :goto_3
    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0d003c

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setFavicon()V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0218

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    invoke-virtual {v5, v4}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    invoke-virtual {v5, v4}, Lorg/samsung/chrome/browser/SbrFaviconController;->RequestFavicon(Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    invoke-virtual {v5, v4}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02004e

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    invoke-virtual {v5, v4}, Lorg/samsung/chrome/browser/SbrFaviconController;->GetFaviconData(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->isFaviconSet:Z

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method setLock(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mLock:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mLock:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mLock:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMaxX(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mMaxX:I

    return-void
.end method

.method public setMinMaxX(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mMinX:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mMaxX:I

    return-void
.end method

.method public setMinX(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mMinX:I

    return-void
.end method

.method setProgress(I)V
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInLoad:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInLoad:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mInLoad:Z

    goto :goto_0
.end method

.method public updateFaviconIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mFaviconIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final updateFromTab()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v4, :cond_6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0219

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0218

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "Most Visited"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setDisplayTitle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getProgress()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setProgress(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setFavicon(Landroid/graphics/Bitmap;)V

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->updateTabIcons()V

    :cond_6
    return-void

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getTabFavicon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public updateLayoutParams()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTabWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
