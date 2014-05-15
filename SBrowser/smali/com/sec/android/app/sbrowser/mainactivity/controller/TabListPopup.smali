.class public Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;
.super Ljava/lang/Object;
.source "TabListPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;,
        Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LAST_ITEM_HIDE_FRACTION:F = 0.15f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final defaultFavIcon:Landroid/graphics/Bitmap;

.field private mAdapter:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;

.field private final mAdditionalVerticalOffset:I

.field private final mBookmarkButton:Landroid/widget/ImageButton;

.field private final mContentViewAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mItemRowHeight:I

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private final mSBrowserMainActivityActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field private mShowIconRow:Z

.field private final mVerticalFadeDistance:I

.field private final sbrowserFavIcon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->$assertionsDisabled:Z

    const-class v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->TAG:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mBookmarkButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mShowIconRow:Z

    new-instance v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mSBrowserMainActivityActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mContentViewAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mSBrowserMainActivityActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x1010387

    aput v3, v0, v4

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mItemRowHeight:I

    sget-boolean v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mItemRowHeight:I

    if-gtz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const v3, 0x7f090057

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mAdditionalVerticalOffset:I

    const v3, 0x7f090058

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mVerticalFadeDistance:I

    const v3, 0x7f02007a

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->defaultFavIcon:Landroid/graphics/Bitmap;

    const v3, 0x7f020023

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->sbrowserFavIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Landroid/widget/ListPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mAdapter:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mContentViewAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mSBrowserMainActivityActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->sbrowserFavIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->defaultFavIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handleIconRowClickEvents(Landroid/view/View;Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
    .locals 3

    const v2, 0x7f0a0264

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$1;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0265

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$2;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private populateFooterViewInfo(Landroid/content/Context;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ListView$FixedViewInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    iput-object p2, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public createPopup(Landroid/content/Context;Landroid/view/View;I)V
    .locals 5

    new-instance v3, Landroid/widget/ListPopupWindow;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, p2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$3;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mSBrowserMainActivityActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    add-int/lit8 v4, v2, -0xa

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mShowIconRow:Z

    if-eqz v3, :cond_0

    add-int/lit8 v0, p3, -0x1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mAdapter:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->dismiss()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mContentViewAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->getItemId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    return-void

    :cond_0
    move v0, p3

    goto :goto_0
.end method

.method public show(ZZZ)V
    .locals 31

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    sget-object v28, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "show: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mContentViewAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mContentViewAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v27

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mContentViewAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    new-instance v26, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v28

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v30

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mShowIconRow:Z

    new-instance v28, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;Ljava/util/List;Landroid/view/LayoutInflater;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mAdapter:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mAdapter:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mShowIconRow:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v28, v0

    const v29, 0x7f04009b

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mSBrowserMainActivityActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->handleIconRowClickEvents(Landroid/view/View;Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    const-string v28, "TABListPopUP"

    const-string v29, " TabListPopUp creating new HeaderViewListAdapter "

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Landroid/widget/HeaderViewListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mSBrowserMainActivityActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->populateFooterViewInfo(Landroid/content/Context;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mAdapter:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListPopupWindow;->show()V

    const/16 v25, 0x0

    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mSBrowserMainActivityActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mShowIconRow:Z

    move/from16 v28, v0

    if-nez v28, :cond_1

    const/16 v25, 0x1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v9

    sub-int v28, v7, v9

    div-int/lit8 v10, v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    :cond_2
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v5, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationInWindow([I)V

    const/16 v28, 0x1

    aget v11, v5, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListPopupWindow;->getHeight()I

    move-result v12

    add-int v13, v11, v12

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-ge v13, v14, :cond_6

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v15, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mAdditionalVerticalOffset:I

    move/from16 v29, v0

    add-int v29, v29, v15

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mVerticalFadeDistance:I

    move/from16 v28, v0

    if-lez v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v20

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mVerticalFadeDistance:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v21

    new-instance v17, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$5;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/widget/ImageButton;

    move/from16 v28, v0

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageButton;

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_4
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->mAdapter:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabViewAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v15, v0

    goto/16 :goto_2
.end method
