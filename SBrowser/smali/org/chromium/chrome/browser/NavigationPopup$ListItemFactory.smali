.class Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;
.super Ljava/lang/Object;
.source "NavigationPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/NavigationPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItemFactory"
.end annotation


# static fields
.field private static final FADE_LENGTH_DP:F = 25.0f

.field private static final FADE_STOP:F = 0.75f

.field private static final LIST_ITEM_HEIGHT_DP:I = 0x30

.field private static final PADDING_DP:I = 0x8

.field private static final TEXT_SIZE_SP:I = 0x12


# instance fields
.field mContext:Landroid/content/Context;

.field mFadeEdgeLength:I

.field mFadePadding:I

.field mIsLayoutDirectionRTL:Z

.field mListItemHeight:I

.field mPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->computeFadeDimensions()V

    return-void
.end method

.method private computeFadeDimensions()V
    .locals 3

    iget-object v2, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41c8

    mul-float v1, v2, v0

    const/high16 v2, 0x3f40

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mFadeEdgeLength:I

    const/high16 v2, 0x3e80

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mFadePadding:I

    const/high16 v2, 0x4240

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mListItemHeight:I

    const/high16 v2, 0x4100

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mPadding:I

    invoke-static {}, Lorg/chromium/ui/LocalizationUtils;->isSystemLayoutDirectionRtl()Z

    move-result v2

    iput-boolean v2, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mIsLayoutDirectionRTL:Z

    return-void
.end method


# virtual methods
.method public createListItem()Landroid/widget/TextView;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mFadeEdgeLength:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mListItemHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mPadding:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mIsLayoutDirectionRTL:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mPadding:I

    iget v2, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mPadding:I

    iget v3, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mFadePadding:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mPadding:I

    iget v2, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mFadePadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mPadding:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method
