.class public Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;
.super Ljava/lang/Object;
.source "SbrSelectionHandleController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/SbrSelectionHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionActionPopupMenu"
.end annotation


# static fields
.field public static final ACTION_SEC_TRANSLATE:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE"

.field public static final ACTION_SEC_TRANSLATE_GET_SUPPORTED_LANGUAGES:Ljava/lang/String; = "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES"

.field public static final ACTION_SEC_TRANSLATE_RESULT:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_RESULT"

.field public static final EXTRA_NAME_CALLER:Ljava/lang/String; = "caller"

.field public static final EXTRA_NAME_HTML_SOURCE_TEXT:Ljava/lang/String; = "html_source_text"

.field public static final EXTRA_NAME_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NAME_RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final EXTRA_NAME_SOURCE_LANGUAGE:Ljava/lang/String; = "source_language"

.field public static final EXTRA_NAME_SOURCE_TEXT:Ljava/lang/String; = "source_text"

.field public static final EXTRA_NAME_SUPPORTED_LANGUAGES:Ljava/lang/String; = "supported_languages"

.field public static final EXTRA_NAME_TARGET_LANGUAGE:Ljava/lang/String; = "target_language"

.field public static final EXTRA_NAME_TARGET_TEXT:Ljava/lang/String; = "target_text"

.field public static final EXTRA_NAME_USE_BROADCAST_RECEIVER:Ljava/lang/String; = "use_broadcast_receiver"

.field public static final EXTRA_VALUE_INPUT_MODE:Ljava/lang/String; = "input"

.field public static final EXTRA_VALUE_RESULT_CANCEL:I = 0x0

.field public static final EXTRA_VALUE_RESULT_OK:I = 0x1

.field public static final EXTRA_VALUE_VIEWER_MODE:Ljava/lang/String; = "viewer"

.field private static final ID_CLIPBOARDEX:I = 0x5

.field private static final ID_COPY:I = 0x2

.field private static final ID_CUT:I = 0x1

.field private static final ID_DICTIONARY:I = 0xa

.field private static final ID_FIND:I = 0x6

.field private static final ID_KIKIN:I = 0x9

.field private static final ID_PASTE:I = 0x3

.field private static final ID_SEARCH:I = 0x7

.field private static final ID_SELECTALL:I = 0x0

.field private static final ID_SHARE:I = 0x4

.field private static final ID_TRANSLATE:I = 0x8

.field private static final TW_NEW_POPUP_DIVIDER_LAYOUT:I = 0x7f0400ae

.field private static final TW_NEW_POPUP_TEXT_LAYOUT:I = 0x7f0400b0

.field private static final TW_POPUP_HORIZONTAL_SCROLL_LAYOUT:I = 0x7f0400af


# instance fields
.field final END_HEIGHT_OFFSET:I

.field public final FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

.field protected final ITEM_WIDTH:I

.field protected final ITEM_WIDTH_WEBSEARCH:I

.field final START_HEIGHT_OFFSET:I

.field final TOOLBAR_PADDING:I

.field private mClipboardTextView:Landroid/widget/TextView;

.field private mContainer:Landroid/widget/PopupWindow;

.field private mContentView:Landroid/view/ViewGroup;

.field public mContentViewWidth:I

.field private mContext:Landroid/content/Context;

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mDictionaryTextView:Landroid/widget/TextView;

.field private mDividerImageView0:Landroid/widget/ImageView;

.field private mDividerImageView1:Landroid/widget/ImageView;

.field private mDividerImageView10:Landroid/widget/ImageView;

.field private mDividerImageView2:Landroid/widget/ImageView;

.field private mDividerImageView3:Landroid/widget/ImageView;

.field private mDividerImageView4:Landroid/widget/ImageView;

.field private mDividerImageView5:Landroid/widget/ImageView;

.field private mDividerImageView6:Landroid/widget/ImageView;

.field private mDividerImageView7:Landroid/widget/ImageView;

.field private mDividerImageView8:Landroid/widget/ImageView;

.field private mDividerImageView9:Landroid/widget/ImageView;

.field public mDividerWidth:I

.field private mFindTextView:Landroid/widget/TextView;

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mIsUseTranslate:Z

.field public mItemWidth:I

.field private mKikinTextView:Landroid/widget/TextView;

.field private mMenuItemCount:I

.field private mMenuItemDiff:I

.field private mParent:Landroid/view/View;

.field private mPasteTextView:Landroid/widget/TextView;

.field public mPopupBgPaddingHeight:I

.field public mPopupBgPaddingWidth:I

.field public mPopupWidthLandscape:I

.field public mPopupWidthPortrait:I

.field private mPositionX:I

.field private mPositionY:I

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mShareTextView:Landroid/widget/TextView;

.field private mTranslateTextView:Landroid/widget/TextView;

.field private mWebSearchTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;


# direct methods
.method public constructor <init>(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;Landroid/view/View;)V
    .locals 6

    const/4 v5, -0x2

    const/4 v4, 0x0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mIsUseTranslate:Z

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.sbrowser"

    const-string v3, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    const/16 v1, 0x47

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->ITEM_WIDTH:I

    iput v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->ITEM_WIDTH_WEBSEARCH:I

    iput v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mItemWidth:I

    iput v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupWidthPortrait:I

    iput v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupWidthLandscape:I

    iput v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupBgPaddingWidth:I

    iput v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupBgPaddingHeight:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerWidth:I

    iput v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentViewWidth:I

    const/16 v1, 0x28

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->END_HEIGHT_OFFSET:I

    const/16 v1, 0xa

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->START_HEIGHT_OFFSET:I

    const/16 v1, 0x64

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->TOOLBAR_PADDING:I

    iput-object p2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020231

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->initContentView()V

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->computeLocalPosition()V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;)I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mMenuItemDiff:I

    return v0
.end method

.method static synthetic access$500(Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private canPaste()Z
    .locals 4

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v2}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    const-string v3, "clipboardEx"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/sec/clipboard/ClipboardExManager;->hasDataOf(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkWhereToDraw()V
    .locals 37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v32, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;
    invoke-static/range {v32 .. v32}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$100(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    move-object/from16 v32, v0

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v32, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;
    invoke-static/range {v32 .. v32}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$100(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    move-object/from16 v32, v0

    if-nez v32, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v32, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipStartX:I
    invoke-static/range {v32 .. v32}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$700(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v33, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipStartY:I
    invoke-static/range {v33 .. v33}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$800(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v34, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipEndX:I
    invoke-static/range {v34 .. v34}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$900(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v35, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mTooltipEndY:I
    invoke-static/range {v35 .. v35}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$1000(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)I

    move-result v35

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string v33, "window"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/WindowManager;

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    invoke-interface/range {v25 .. v25}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v10, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    const/16 v33, 0x0

    aget v33, v10, v33

    add-int v26, v32, v33

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    const/16 v33, 0x1

    aget v33, v10, v33

    add-int v28, v32, v33

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    const/16 v33, 0x0

    aget v33, v10, v33

    add-int v27, v32, v33

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    const/16 v33, 0x1

    aget v33, v10, v33

    add-int v29, v32, v33

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    const/16 v33, 0x1

    aget v33, v24, v33

    add-int v30, v32, v33

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    const/16 v33, 0x1

    aget v33, v24, v33

    add-int v31, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    move-object/from16 v32, v0

    check-cast v32, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v32 .. v32}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isHideURLFeatureEnabled(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    move-object/from16 v32, v0

    check-cast v32, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v32 .. v32}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v28, v28, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    move-object/from16 v32, v0

    check-cast v32, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v32 .. v32}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v29, v29, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    move-object/from16 v32, v0

    check-cast v32, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v32 .. v32}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v30, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    move-object/from16 v32, v0

    check-cast v32, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v32 .. v32}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v31, v31, v32

    :cond_2
    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    move/from16 v17, v28

    move/from16 v28, v29

    move/from16 v29, v17

    :cond_3
    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_4

    move/from16 v17, v30

    move/from16 v30, v31

    move/from16 v31, v17

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v32, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$1100(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Landroid/graphics/Rect;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v33, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mStartRect:Landroid/graphics/Rect;
    invoke-static/range {v33 .. v33}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$1100(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    sub-int v18, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    const/high16 v32, 0x41c8

    mul-float v32, v32, v16

    move/from16 v0, v32

    float-to-int v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleId:I

    move/from16 v32, v0

    if-nez v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v32, v0

    const-string v33, "R.drawable.tw_text_select_handle_left"

    invoke-static/range {v33 .. v33}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleId:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleId:I

    move/from16 v32, v0

    if-nez v32, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v32, v0

    const-string v33, "R.drawable.tw_text_select_handle_right"

    invoke-static/range {v33 .. v33}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getResourceId(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleId:I

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v32, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;
    invoke-static/range {v32 .. v32}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$100(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/chromium/content/browser/input/HandleView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mLeftHandleId:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v32, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;
    invoke-static/range {v32 .. v32}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$100(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/chromium/content/browser/input/HandleView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mRightHandleId:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v32

    const/16 v33, 0x0

    sget-object v34, Landroid/R$styleable;->ActionBar:[I

    const v35, 0x10102ce

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v21

    const/16 v32, 0x4

    const/16 v33, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->getSelectPopupHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->getSelectPopupWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectAllEnable()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v32, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static/range {v32 .. v32}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isSelectionEditable()Z

    move-result v32

    if-eqz v32, :cond_7

    const/4 v12, 0x0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09011a

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09011b

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isToolBarVisible(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_b

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v33, v33, v8

    const/16 v34, 0x1

    aget v34, v24, v34

    move/from16 v0, v34

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v33, v33, v34

    int-to-float v0, v14

    move/from16 v34, v0

    add-float v33, v33, v34

    const/high16 v34, 0x42c8

    add-float v33, v33, v34

    cmpl-float v32, v32, v33

    if-lez v32, :cond_9

    if-nez v12, :cond_9

    sub-int v32, v28, v19

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v8

    mul-int/lit8 v33, v18, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v32, v32, v33

    int-to-float v0, v14

    move/from16 v33, v0

    sub-float v32, v32, v33

    const/16 v33, 0x1

    aget v33, v10, v33

    const/16 v34, 0x1

    aget v34, v24, v34

    sub-int v33, v33, v34

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionY:I

    :goto_1
    sub-int v32, v27, v26

    div-int/lit8 v32, v32, 0x2

    add-int v32, v32, v26

    div-int/lit8 v33, v20, 0x2

    sub-int v32, v32, v33

    const/16 v33, 0x0

    aget v33, v10, v33

    const/16 v34, 0x0

    aget v34, v24, v34

    sub-int v33, v33, v34

    sub-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionX:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionX:I

    move/from16 v32, v0

    if-gez v32, :cond_8

    const/16 v32, 0xa

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionX:I

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionX:I

    move/from16 v32, v0

    add-int v32, v32, v20

    const/16 v33, 0x0

    aget v33, v10, v33

    const/16 v34, 0x0

    aget v34, v24, v34

    sub-int v33, v33, v34

    add-int v32, v32, v33

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_0

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v32, v0

    sub-int v32, v32, v20

    const/16 v33, 0x0

    aget v33, v10, v33

    const/16 v34, 0x0

    aget v34, v24, v34

    sub-int v33, v33, v34

    sub-int v32, v32, v33

    add-int/lit8 v32, v32, -0xa

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionX:I

    goto/16 :goto_0

    :cond_9
    add-int v32, v29, v19

    add-int v32, v32, v14

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v32, v32, v9

    int-to-float v0, v7

    move/from16 v33, v0

    add-float v32, v32, v33

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    cmpg-float v32, v32, v33

    if-gez v32, :cond_a

    if-nez v12, :cond_a

    add-int v32, v29, v14

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v32, v32, v9

    const/16 v33, 0x1

    aget v33, v10, v33

    const/16 v34, 0x1

    aget v34, v24, v34

    sub-int v33, v33, v34

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionY:I

    goto/16 :goto_1

    :cond_a
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    div-int/lit8 v33, v19, 0x2

    sub-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionY:I

    goto/16 :goto_1

    :cond_b
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v33, v33, v8

    const/16 v34, 0x1

    aget v34, v24, v34

    move/from16 v0, v34

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v33, v33, v34

    int-to-float v0, v14

    move/from16 v34, v0

    add-float v33, v33, v34

    const/high16 v34, 0x42c8

    add-float v33, v33, v34

    cmpl-float v32, v32, v33

    if-lez v32, :cond_c

    if-nez v12, :cond_c

    sub-int v32, v30, v19

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v8

    mul-int/lit8 v33, v18, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v32, v32, v33

    int-to-float v0, v14

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionY:I

    goto/16 :goto_1

    :cond_c
    add-int v32, v31, v19

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v32, v32, v9

    int-to-float v0, v7

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v33, v0

    cmpg-float v32, v32, v33

    if-gez v32, :cond_d

    if-nez v12, :cond_d

    add-int v32, v31, v14

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v32, v32, v9

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionY:I

    goto/16 :goto_1

    :cond_d
    div-int/lit8 v32, v19, 0x2

    sub-int v32, v22, v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionY:I

    goto/16 :goto_1
.end method

.method private final computeLocalPosition()V
    .locals 0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->measureContent()V

    return-void
.end method

.method private final initContentView()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "layout_inflater"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    invoke-direct/range {v23 .. v25}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v6, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090119

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mItemWidth:I

    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mItemWidth:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mItemWidth:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x0

    const/16 v25, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const v24, 0x7f0400af

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v24, 0x7f0400b0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mKikinTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mKikinTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mKikinTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mKikinTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0c004a

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mKikinTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080022

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mKikinTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mKikinTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f020234

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mKikinTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v24, 0x7f0400ae

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView9:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView9:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView9:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v24, 0x7f0400b0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0c021e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080022

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f020236

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v24, 0x7f0400ae

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v24, 0x7f0400b0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0c021f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080022

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f02022d

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v24, 0x7f0400ae

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v24, 0x7f0400b0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0c0220

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080022

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f02022c

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v24, 0x7f0400ae

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v24, 0x7f0400b0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0c0221

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080022

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f020235

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v24, 0x7f0400ae

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v24, 0x7f0400b0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0c0222

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080022

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f02022b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v24, 0x7f0400ae

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v24, 0x7f0400b0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0c0056

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080022

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f020237

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v24, 0x7f0400ae

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView10:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView10:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView10:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v24, 0x7f0400b0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0c0227

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080022

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f02022e

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v24, 0x7f0400ae

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v24, 0x7f0400b0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0c0224

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080022

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f020230

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v24, 0x7f0400ae

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v24, 0x7f0400b0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0c0225

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080022

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f020238

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v24, 0x7f0400ae

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v24, 0x7f0400b0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const v25, 0x7f0c0226

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f080022

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f020239

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.sec.android.app.translator.TRANSLATE"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v24

    if-eqz v24, :cond_0

    const-string v24, "sec_container_"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_1

    :cond_0
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mIsUseTranslate:Z

    :goto_0
    return-void

    :cond_1
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mIsUseTranslate:Z

    goto :goto_0
.end method

.method private isDictionaryAvailable()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isShareHandlerAvailable()Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTranslateAvailable()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.translator.TRANSLATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "sec_container_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iput-boolean v5, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mIsUseTranslate:Z

    :goto_0
    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mIsUseTranslate:Z

    return v3

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mIsUseTranslate:Z

    goto :goto_0
.end method

.method private isWebSearchAvailable()Z
    .locals 4

    const/4 v1, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "new_search"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setXPositionCoOrdinates(IIII)V
    .locals 4

    const/16 v0, 0xa

    const/16 v1, 0x1e

    sub-int v2, p2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    div-int/lit8 v3, p3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1e

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionX:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionX:I

    add-int/2addr v2, p3

    if-le v2, p4, :cond_0

    sub-int v2, p4, p3

    add-int/lit8 v2, v2, -0x1e

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionX:I

    :cond_0
    iget v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionX:I

    if-gez v2, :cond_1

    const/16 v2, 0xa

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionX:I

    :cond_1
    return-void
.end method

.method private updateTooltipMenu()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v19, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static/range {v19 .. v19}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isSelectionEditable()Z

    move-result v14

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v19, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static/range {v19 .. v19}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isPasswordType()Z

    move-result v16

    :cond_0
    if-eqz v14, :cond_e

    if-nez v16, :cond_e

    const/4 v6, 0x1

    :goto_0
    if-eqz v14, :cond_1

    if-eqz v16, :cond_2

    :cond_1
    if-nez v14, :cond_f

    :cond_2
    const/4 v5, 0x1

    :goto_1
    if-eqz v14, :cond_10

    invoke-direct/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->canPaste()Z

    move-result v19

    if-eqz v19, :cond_10

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Lorg/chromium/content/browser/ContentView;

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/content/browser/ContentViewCore;->isIncognito()Z

    move-result v15

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v19, v0

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static/range {v19 .. v19}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isSBrowserActivity()Z

    move-result v8

    invoke-direct/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->isTranslateAvailable()Z

    move-result v11

    invoke-direct/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->isShareHandlerAvailable()Z

    move-result v13

    if-nez v15, :cond_11

    invoke-direct/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->isWebSearchAvailable()Z

    move-result v19

    if-eqz v19, :cond_11

    const/4 v12, 0x1

    :goto_3
    invoke-direct/range {p0 .. p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->isDictionaryAvailable()Z

    move-result v7

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v19

    if-eqz v19, :cond_3

    const/4 v12, 0x0

    const/4 v9, 0x1

    const-string v19, "SelectionHandleConroller"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "kikin feature is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v17, 0x1

    if-eqz v6, :cond_4

    add-int/lit8 v17, v17, 0x1

    :cond_4
    if-eqz v5, :cond_5

    add-int/lit8 v17, v17, 0x1

    :cond_5
    if-eqz v10, :cond_6

    add-int/lit8 v17, v17, 0x2

    :cond_6
    if-eqz v13, :cond_7

    add-int/lit8 v17, v17, 0x1

    :cond_7
    if-eqz v8, :cond_8

    add-int/lit8 v17, v17, 0x1

    :cond_8
    if-eqz v12, :cond_9

    add-int/lit8 v17, v17, 0x1

    :cond_9
    if-eqz v11, :cond_a

    add-int/lit8 v17, v17, 0x1

    :cond_a
    if-eqz v7, :cond_b

    add-int/lit8 v17, v17, 0x1

    :cond_b
    if-eqz v9, :cond_c

    add-int/lit8 v17, v17, 0x1

    :cond_c
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mMenuItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v6, :cond_12

    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v6, :cond_13

    const/16 v19, 0x0

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v5, :cond_14

    const/16 v19, 0x0

    :goto_6
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v5, :cond_15

    const/16 v19, 0x0

    :goto_7
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v10, :cond_16

    const/16 v19, 0x0

    :goto_8
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v10, :cond_17

    const/16 v19, 0x0

    :goto_9
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v10, :cond_18

    const/16 v19, 0x0

    :goto_a
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v10, :cond_19

    const/16 v19, 0x0

    :goto_b
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v13, :cond_1a

    const/16 v19, 0x0

    :goto_c
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v13, :cond_1b

    const/16 v19, 0x0

    :goto_d
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v8, :cond_1c

    const/16 v19, 0x0

    :goto_e
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v8, :cond_1d

    const/16 v19, 0x0

    :goto_f
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v11, :cond_1e

    const/16 v19, 0x0

    :goto_10
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v11, :cond_1f

    const/16 v19, 0x0

    :goto_11
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v12, :cond_20

    const/16 v19, 0x0

    :goto_12
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v12, :cond_21

    const/16 v19, 0x0

    :goto_13
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView10:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v7, :cond_22

    const/16 v19, 0x0

    :goto_14
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v7, :cond_23

    const/16 v19, 0x0

    :goto_15
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerImageView9:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v9, :cond_24

    const/16 v19, 0x0

    :goto_16
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mKikinTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v9, :cond_25

    const/16 v19, 0x0

    :goto_17
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0xa

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_26

    const/16 v18, 0x4

    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f090119

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mItemWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020231

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    if-eqz v4, :cond_27

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupBgPaddingWidth:I

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupBgPaddingHeight:I

    const/4 v4, 0x0

    :goto_19
    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mItemWidth:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerWidth:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupBgPaddingWidth:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupWidthPortrait:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mItemWidth:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerWidth:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x5

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupBgPaddingWidth:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupWidthLandscape:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_29

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerWidth:I

    move/from16 v19, v0

    add-int/lit8 v20, v17, -0x1

    mul-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mItemWidth:I

    move/from16 v20, v0

    mul-int v20, v20, v17

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupBgPaddingWidth:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentViewWidth:I

    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentViewWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setWidth(I)V

    :goto_1b
    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    sub-int v19, v17, v18

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mMenuItemDiff:I

    :cond_d
    return-void

    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_12
    const/16 v19, 0x8

    goto/16 :goto_4

    :cond_13
    const/16 v19, 0x8

    goto/16 :goto_5

    :cond_14
    const/16 v19, 0x8

    goto/16 :goto_6

    :cond_15
    const/16 v19, 0x8

    goto/16 :goto_7

    :cond_16
    const/16 v19, 0x8

    goto/16 :goto_8

    :cond_17
    const/16 v19, 0x8

    goto/16 :goto_9

    :cond_18
    const/16 v19, 0x8

    goto/16 :goto_a

    :cond_19
    const/16 v19, 0x8

    goto/16 :goto_b

    :cond_1a
    const/16 v19, 0x8

    goto/16 :goto_c

    :cond_1b
    const/16 v19, 0x8

    goto/16 :goto_d

    :cond_1c
    const/16 v19, 0x8

    goto/16 :goto_e

    :cond_1d
    const/16 v19, 0x8

    goto/16 :goto_f

    :cond_1e
    const/16 v19, 0x8

    goto/16 :goto_10

    :cond_1f
    const/16 v19, 0x8

    goto/16 :goto_11

    :cond_20
    const/16 v19, 0x8

    goto/16 :goto_12

    :cond_21
    const/16 v19, 0x8

    goto/16 :goto_13

    :cond_22
    const/16 v19, 0x8

    goto/16 :goto_14

    :cond_23
    const/16 v19, 0x8

    goto/16 :goto_15

    :cond_24
    const/16 v19, 0x8

    goto/16 :goto_16

    :cond_25
    const/16 v19, 0x8

    goto/16 :goto_17

    :cond_26
    const/16 v18, 0x6

    goto/16 :goto_18

    :cond_27
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupBgPaddingWidth:I

    goto/16 :goto_19

    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupWidthPortrait:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentViewWidth:I

    goto/16 :goto_1a

    :cond_29
    const/16 v19, 0x6

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDividerWidth:I

    move/from16 v19, v0

    add-int/lit8 v20, v17, -0x1

    mul-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mItemWidth:I

    move/from16 v20, v0

    mul-int v20, v20, v17

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupBgPaddingWidth:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentViewWidth:I

    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentViewWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto/16 :goto_1b

    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPopupWidthLandscape:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentViewWidth:I

    goto :goto_1c
.end method


# virtual methods
.method public getLocationOnScreen([I)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    return-void
.end method

.method public getPositionX()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionX:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionY:I

    return v0
.end method

.method public getSelectPopupHeight()I
    .locals 2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x428e

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public getSelectPopupWidth()I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContentViewWidth:I

    return v0
.end method

.method public hide()V
    .locals 1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public isKikinSearch()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.kikin"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v2, "SelectionHandleConroller"

    const-string v3, "No kikin"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    const/high16 v4, -0x8000

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->measure(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mKikinTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    const/16 v0, 0x9

    :goto_0
    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->onSelectionActionItemClicked(I)Z

    return-void

    :cond_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mSelectAllTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mShareTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mFindTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mWebSearchTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mTranslateTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mDictionaryTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_a

    const/16 v0, 0xa

    goto :goto_0

    :cond_a
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onSelectionActionItemClicked(I)Z
    .locals 15

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v12

    invoke-interface {v12}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->getSelectedText()Ljava/lang/String;

    move-result-object v7

    packed-switch p1, :pswitch_data_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :pswitch_0
    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v12

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onKikinActionItemPressed()V

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->hideSelectionActionPopupWindow()V

    :cond_0
    :goto_1
    const/4 v12, 0x1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v12

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v12

    sget-object v13, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->SELECT_ALL:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    invoke-virtual {v12, v13}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->setSelectionReason(Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;)V

    :cond_1
    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setSelectAllEnable(Z)V

    :cond_2
    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v12

    invoke-interface {v12}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->selectAll()Z

    goto :goto_1

    :pswitch_2
    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v12

    invoke-interface {v12}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->cut()Z

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v12

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v12

    invoke-virtual {v12}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->onTextCopied()V

    :cond_3
    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v12

    invoke-interface {v12}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->copy()Z

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v12

    invoke-interface {v12}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->onDestroyActionMode()V

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->hideSelectionActionPopupWindow()V

    goto :goto_1

    :pswitch_4
    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v12

    invoke-interface {v12}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->paste()Z

    goto/16 :goto_1

    :pswitch_5
    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v12

    invoke-interface {v12}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->pasteByClipboardEx()V

    goto/16 :goto_1

    :pswitch_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.intent.action.SEND"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "text/plain"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x7530

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    const/16 v13, 0x7530

    if-le v12, v13, :cond_4

    const/16 v12, 0x7530

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_4
    const-string v12, "android.intent.extra.TEXT"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "theme"

    const/4 v13, 0x2

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    const v13, 0x7f0c0056

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_5
    :goto_2
    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v12

    invoke-interface {v12}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->onDestroyActionMode()V

    goto/16 :goto_1

    :pswitch_7
    const/16 v1, 0xbb8

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    const/16 v13, 0xbb8

    if-le v12, v13, :cond_6

    const/16 v12, 0xbb8

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_6
    const-string v12, "SelectionHandleConroller"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mActionHandler.findOnpage called selectionLenFinal= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->findOnPage(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v12

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v12

    invoke-virtual {v12}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->onTextWebSearched()V

    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, "CscFeature_Web_DisableGoogleInBrowserSearchEngine"

    invoke-static {v12}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.intent.action.WEB_SEARCH"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "new_search"

    const/4 v13, 0x1

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x7d0

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    const/16 v13, 0x7d0

    if-le v12, v13, :cond_8

    const/16 v12, 0x7d0

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_8
    const-string v12, "query"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.android.browser.application_id"

    iget-object v13, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_9
    :goto_3
    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v12

    invoke-interface {v12}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->onDestroyActionMode()V

    goto/16 :goto_1

    :cond_a
    new-instance v2, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v0, 0x7d0

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    const/16 v13, 0x7d0

    if-le v12, v13, :cond_b

    const/16 v12, 0x7d0

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "https://www.google.com/search?ie=UTF-8&client=ms-android-samsung&source=android-browser&q="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_2
    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->setWebsearchMode(Z)V

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    const/16 v13, 0x80

    invoke-virtual {v6, v12, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    const/high16 v12, 0x1000

    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v12, "isWebSearch"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v12

    goto :goto_3

    :pswitch_9
    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v12

    if-eqz v12, :cond_c

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v12

    if-eqz v12, :cond_c

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v12

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v12

    invoke-virtual {v12}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->onTextTranslated()V

    :cond_c
    :try_start_3
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.sec.android.app.translator.TRANSLATE"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "mode"

    const-string v13, "viewer"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "source_text"

    invoke-virtual {v5, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    invoke-static {v12}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$200(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    move-result-object v12

    invoke-interface {v12}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->onDestroyActionMode()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_a
    :try_start_4
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.sec.android.app.dictionary.SEARCH"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "keyword"

    invoke-virtual {v5, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v12, 0x1000

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v12, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v12

    goto/16 :goto_3

    :catch_4
    move-exception v12

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v0, v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mActionPopupShower:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$600(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method positionAtCursor()V
    .locals 5

    const/4 v3, -0x1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionX:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    const/4 v2, 0x0

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionX:I

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mParent:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectedTextVisible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectAllEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v1, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    #getter for: Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;
    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->access$100(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v1

    iget-object v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v1, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    :cond_1
    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->updateTooltipMenu()V

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->checkWhereToDraw()V

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mPositionY:I

    if-gez v1, :cond_3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isMultiwindowMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->hide()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    const-string v1, "SelectionHandleConroller"

    const-string v2, "tooltip not showing, trigger show animation this time..!!"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->positionAtCursor()V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->showAnimation()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->hide()V

    goto :goto_0
.end method

.method public showAnimation()V
    .locals 4

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mMenuItemCount:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-int v2, v2

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->mMenuItemDiff:I

    mul-int/lit8 v3, v3, 0x64

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu$1;

    invoke-direct {v1, p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu$1;-><init>(Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
