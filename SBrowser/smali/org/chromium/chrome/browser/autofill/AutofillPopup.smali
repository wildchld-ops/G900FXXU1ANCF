.class public Lorg/chromium/chrome/browser/autofill/AutofillPopup;
.super Landroid/widget/ListPopupWindow;
.source "AutofillPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/autofill/AutofillPopup$AutofillPopupDelegate;
    }
.end annotation


# static fields
.field private static final ITEM_ID_AUTOCOMPLETE_ENTRY:I = 0x0

.field private static final ITEM_ID_DATA_LIST_ENTRY:I = -0x6

.field private static final ITEM_ID_PASSWORD_ENTRY:I = -0x2

.field private static final TEXT_PADDING_DP:I = 0x28


# instance fields
.field private mAnchorHeight:F

.field private mAnchorView:Landroid/view/View;

.field private mAnchorWidth:F

.field private mAnchorX:F

.field private mAnchorY:F

.field private final mAutofillCallback:Lorg/chromium/chrome/browser/autofill/AutofillPopup$AutofillPopupDelegate;

.field private final mContext:Landroid/content/Context;

.field private mLabelViewPaint:Landroid/graphics/Paint;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mNameViewPaint:Landroid/graphics/Paint;

.field private final mViewAndroidDelegate:Lorg/chromium/ui/ViewAndroidDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/ViewAndroidDelegate;Lorg/chromium/chrome/browser/autofill/AutofillPopup$AutofillPopupDelegate;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mViewAndroidDelegate:Lorg/chromium/ui/ViewAndroidDelegate;

    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAutofillCallback:Lorg/chromium/chrome/browser/autofill/AutofillPopup$AutofillPopupDelegate;

    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mViewAndroidDelegate:Lorg/chromium/ui/ViewAndroidDelegate;

    invoke-interface {v0}, Lorg/chromium/ui/ViewAndroidDelegate;->acquireAnchorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorView:Landroid/view/View;

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mViewAndroidDelegate:Lorg/chromium/ui/ViewAndroidDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorView:Landroid/view/View;

    iget v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorX:F

    iget v3, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorY:F

    iget v4, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorWidth:F

    iget v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorHeight:F

    invoke-interface/range {v0 .. v5}, Lorg/chromium/ui/ViewAndroidDelegate;->setAnchorViewPosition(Landroid/view/View;FFFF)V

    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillPopup$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/autofill/AutofillPopup$1;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillPopup;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->setAnchorView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/autofill/AutofillPopup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method private getDesiredWidth([Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;)F
    .locals 13

    const/4 v12, 0x0

    iget-object v10, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mNameViewPaint:Landroid/graphics/Paint;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mLabelViewPaint:Landroid/graphics/Paint;

    if-nez v10, :cond_1

    :cond_0
    iget-object v10, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v10, 0x7f040016

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v10, 0x7f0a0013

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    iput-object v10, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mNameViewPaint:Landroid/graphics/Paint;

    const v10, 0x7f0a0014

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    iput-object v10, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mLabelViewPaint:Landroid/graphics/Paint;

    :cond_1
    const/4 v6, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v10, p1

    if-ge v1, v10, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    aget-object v10, p1, v1

    iget-object v7, v10, Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;->mName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    iget-object v10, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mNameViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v7, v12, v11, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    aget-object v10, p1, v1

    iget-object v3, v10, Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;->mLabel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    iget-object v10, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mLabelViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v3, v12, v11, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v10

    const/high16 v10, 0x4220

    add-float/2addr v10, v6

    return v10
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAutofillCallback:Lorg/chromium/chrome/browser/autofill/AutofillPopup$AutofillPopupDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/autofill/AutofillPopup$AutofillPopupDelegate;->requestHide()V

    return-void
.end method

.method public hide()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mViewAndroidDelegate:Lorg/chromium/ui/ViewAndroidDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorView:Landroid/view/View;

    invoke-interface {v0, v1}, Lorg/chromium/ui/ViewAndroidDelegate;->releaseAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAutofillCallback:Lorg/chromium/chrome/browser/autofill/AutofillPopup$AutofillPopupDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/autofill/AutofillPopup$AutofillPopupDelegate;->Destroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAutofillCallback:Lorg/chromium/chrome/browser/autofill/AutofillPopup$AutofillPopupDelegate;

    invoke-interface {v0, p3}, Lorg/chromium/chrome/browser/autofill/AutofillPopup$AutofillPopupDelegate;->suggestionSelected(I)V

    return-void
.end method

.method public setAnchorRect(FFFF)V
    .locals 6

    iput p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorWidth:F

    iput p4, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorHeight:F

    iput p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorX:F

    iput p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorY:F

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mViewAndroidDelegate:Lorg/chromium/ui/ViewAndroidDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorView:Landroid/view/View;

    iget v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorX:F

    iget v3, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorY:F

    iget v4, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorWidth:F

    iget v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorHeight:F

    invoke-interface/range {v0 .. v5}, Lorg/chromium/ui/ViewAndroidDelegate;->setAnchorViewPosition(Landroid/view/View;FFFF)V

    :cond_0
    return-void
.end method

.method public show([Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;)V
    .locals 9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_0
    array-length v0, p1

    if-ge v7, v0, :cond_2

    aget-object v0, p1, v7

    iget v8, v0, Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;->mUniqueId:I

    if-gtz v8, :cond_0

    if-eqz v8, :cond_0

    const/4 v0, -0x2

    if-eq v8, v0, :cond_0

    const/4 v0, -0x6

    if-ne v8, v0, :cond_1

    :cond_0
    aget-object v0, p1, v7

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillListAdapter;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/autofill/AutofillListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->getDesiredWidth([Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;)F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorWidth:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorWidth:F

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mViewAndroidDelegate:Lorg/chromium/ui/ViewAndroidDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorView:Landroid/view/View;

    iget v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorX:F

    iget v3, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorY:F

    iget v4, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorWidth:F

    iget v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopup;->mAnchorHeight:F

    invoke-interface/range {v0 .. v5}, Lorg/chromium/ui/ViewAndroidDelegate;->setAnchorViewPosition(Landroid/view/View;FFFF)V

    return-void
.end method
