.class public Lcom/kikin/content/sbrowser/KikinSelectionHandler;
.super Ljava/lang/Object;
.source "KikinSelectionHandler.java"

# interfaces
.implements Lcom/kikin/interfaces/KikinCallbackHandler;
.implements Lcom/kikin/interfaces/KikinContentViewHandler;
.implements Lcom/kikin/interfaces/KikinPopupWindowHandler;
.implements Lorg/samsung/chrome/browser/SbrChromeNativePreferences$KikinPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/content/sbrowser/KikinSelectionHandler$1;,
        Lcom/kikin/content/sbrowser/KikinSelectionHandler$ContentViewThemeDetector;,
        Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;,
        Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsInKikinSearchMode:Z

.field private mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

.field private mLastPreviousText:Ljava/lang/String;

.field private mLastSelection:Ljava/lang/String;

.field private mSaveResults:Z

.field private mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

.field private mSelectionChangingDueToLongPressElsewhere:Z

.field private mSelectionReason:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;


# direct methods
.method public constructor <init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v4, "KikinSelectionHandler"

    iput-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->TAG:Ljava/lang/String;

    iput-object v6, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    iput-object v6, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iput-object v6, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mContext:Landroid/content/Context;

    iput-object v6, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mLastSelection:Ljava/lang/String;

    iput-object v6, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mLastPreviousText:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSaveResults:Z

    sget-object v4, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->UNKNOWN:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    iput-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionReason:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    iput-boolean v7, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mIsInKikinSearchMode:Z

    iput-boolean v7, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionChangingDueToLongPressElsewhere:Z

    iput-object p1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinSearchAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v4

    const-string v5, "enable-kikin"

    invoke-virtual {v4, v5}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    iget-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kikin/KikinGlobal;->isForceDisabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/kikin/KikinGlobal;->setSystemDisabled(Landroid/content/Context;Z)V

    :goto_0
    iget-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kikin/KikinGlobal;->isSystemDisabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    new-instance v4, Lcom/kikin/KikinResultsViewController;

    invoke-direct {v4, p0}, Lcom/kikin/KikinResultsViewController;-><init>(Lcom/kikin/interfaces/KikinCallbackHandler;)V

    iput-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;
    :try_end_0
    .catch Lcom/kikin/exception/KikinCallbackHandlerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kikin/KikinGlobal;->isSystemDisabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setKikinEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/kikin/KikinGlobal;->setSystemDisabled(Landroid/content/Context;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v6, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/exception/KikinCallbackHandlerException;->printStackTrace()V

    iget-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/kikin/exception/KikinCallbackHandlerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/kikin/KikinGlobal;->setSystemDisabled(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method private analyzeModifiedSelection(Lcom/kikin/selection/Selection;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/kikin/selection/Selection;->getSelectionLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v2, v2, v1}, Lcom/kikin/KikinCore;->nativeGetTextEntity(Ljava/lang/String;IILjava/lang/String;)Lcom/kikin/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kikin/Range;->getStartOffset()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/kikin/Range;->getEndOffset()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/kikin/Range;->getSelectionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kikin/selection/Selection;->setSelectionType(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kikin/Range;->getSelectionLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kikin/selection/Selection;->setSelectionLanguage(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/kikin/selection/Selection;->setHl(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lcom/kikin/selection/SelectionType;->UNKNOWN:Lcom/kikin/selection/SelectionType;

    invoke-virtual {p1, v1}, Lcom/kikin/selection/Selection;->setSelectionType(Lcom/kikin/selection/SelectionType;)V

    goto :goto_0
.end method

.method private getApplicationContentView()Landroid/view/View;
    .locals 2

    invoke-direct {p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getRootView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static isKikinEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/kikin/KikinGlobal;->IS_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKikinSearchAvailable(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.kikin"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isLandscape(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPhone(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v3, v4

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v3, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x4420

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onTextSelected()V
    .locals 1

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/KikinResultsViewController;->trackSelectText()V

    :cond_0
    return-void
.end method

.method private viewRect(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 4

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    new-array v0, v2, [I

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    return-object v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dismissPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V
    .locals 5

    iget-object v2, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dismissPopupWindow("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v1

    sget-object v2, Lcom/kikin/content/sbrowser/KikinSelectionHandler$1;->$SwitchMap$com$kikin$interfaces$KikinPopupWindowHandler$PopupWindowType:[I

    invoke-virtual {p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v2, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_START:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    if-ne p1, v2, :cond_1

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->getStartHandle()Lorg/chromium/content/browser/input/HandleView;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/input/HandleView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->getEndHandle()Lorg/chromium/content/browser/input/HandleView;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    iget-object v2, v2, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->hideSelectionActionPopupWindow()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dismissSelection()V
    .locals 1

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->clearTextSelection()V

    return-void
.end method

.method public doKikinSearch(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/kikin/selection/Selection;

    const-string v3, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "textBeforeSelection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "textAfterSelection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "selectionType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "selectionLanguage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "touchedWord"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "keywords"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "h1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "h2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "tag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "alt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "href"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "value"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "referrer"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v2 .. v18}, Lcom/kikin/selection/Selection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v3, "textBeforeSelection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kikin search requested for \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->LONG_PRESS:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionReason:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mLastSelection:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mLastPreviousText:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mLastSelection:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mLastPreviousText:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kikin/KikinGlobal;->hasUserAgreedKikinTerms(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kikin search request \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is identical to previous search request. Not perfoming search..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mLastSelection:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mLastPreviousText:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kikin/selection/Selection;->setUrl(Landroid/net/Uri;)V

    sget-object v3, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->LONG_PRESS:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionReason:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    :goto_1
    invoke-virtual {v2, v3}, Lcom/kikin/selection/Selection;->setMode(Lcom/kikin/selection/Selection$Mode;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selection Mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/kikin/selection/Selection;->getMode()Lcom/kikin/selection/Selection$Mode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kikin/selection/Selection$Mode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->LONG_PRESS:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionReason:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    if-eq v3, v4, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->analyzeModifiedSelection(Lcom/kikin/selection/Selection;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/kikin/KikinResultsViewController;->doKikinSearch(Lcom/kikin/selection/Selection;)V

    sget-object v3, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->LONG_PRESS:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionReason:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    if-ne v3, v4, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/kikin/KikinBarState;->HALF_OPEN:Lcom/kikin/KikinBarState;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;)V

    invoke-virtual/range {v19 .. v19}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/kikin/KikinResultsViewController;->playKikinSound()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/kikin/KikinResultsViewController;->setSelectionRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_4
    sget-object v3, Lcom/kikin/selection/Selection$Mode;->SELECTION:Lcom/kikin/selection/Selection$Mode;

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->LONG_PRESS:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionReason:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    if-eq v3, v4, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/kikin/KikinBarState;->HALF_OPEN:Lcom/kikin/KikinBarState;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;)V

    goto/16 :goto_0
.end method

.method public doesViewUsesCABForSelectionActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ensureSelectionActionPopupDoesNotOverlapKikin()V
    .locals 2

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    sget-object v1, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_ACTION_ITEMS_VIEW:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    invoke-virtual {v0, v1}, Lcom/kikin/KikinResultsViewController;->updatePopupWindowVisibility(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    :cond_0
    return-void
.end method

.method public ensureSelectionHandlesDoNotOverlapKikin()V
    .locals 2

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    sget-object v1, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_START:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    invoke-virtual {v0, v1}, Lcom/kikin/KikinResultsViewController;->updatePopupWindowVisibility(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    sget-object v1, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_END:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    invoke-virtual {v0, v1}, Lcom/kikin/KikinResultsViewController;->updatePopupWindowVisibility(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    :cond_0
    return-void
.end method

.method public ensureZoomerDoesNotOverlapKikin()V
    .locals 2

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    sget-object v1, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->ZOOM_MAGNIFIER:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    invoke-virtual {v0, v1}, Lcom/kikin/KikinResultsViewController;->updatePopupWindowVisibility(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V

    :cond_0
    return-void
.end method

.method public getContentViewHandler()Lcom/kikin/interfaces/KikinContentViewHandler;
    .locals 0

    return-object p0
.end method

.method public getMaxKikinResultsContainerRect()Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isPhone(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->getView()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->viewRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->getApplicationContentView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPopupWindowHandler()Lcom/kikin/interfaces/KikinPopupWindowHandler;
    .locals 0

    return-object p0
.end method

.method public getPopupWindowPosition(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)Landroid/graphics/Rect;
    .locals 7

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v3

    sget-object v4, Lcom/kikin/content/sbrowser/KikinSelectionHandler$1;->$SwitchMap$com$kikin$interfaces$KikinPopupWindowHandler$PopupWindowType:[I

    invoke-virtual {p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPopupWindowPosition("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") = {x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_0
    sget-object v4, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_START:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->getStartHandle()Lorg/chromium/content/browser/input/HandleView;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->getPositionX()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->getPositionY()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->getEndHandle()Lorg/chromium/content/browser/input/HandleView;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v4

    iget-object v2, v4, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->getPositionX()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->getPositionY()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSelectionReason()Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;
    .locals 1

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionReason:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    return-object v0
.end method

.method public getThemeDetector()Lcom/kikin/theme/ThemeDetector;
    .locals 1

    new-instance v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$ContentViewThemeDetector;

    invoke-direct {v0, p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler$ContentViewThemeDetector;-><init>(Lcom/kikin/content/sbrowser/KikinSelectionHandler;)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getViewRectWithoutOffset()Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->viewRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public isInKikinSearchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mIsInKikinSearchMode:Z

    return v0
.end method

.method public isKikinVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupWindowShowing(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v2

    sget-object v3, Lcom/kikin/content/sbrowser/KikinSelectionHandler$1;->$SwitchMap$com$kikin$interfaces$KikinPopupWindowHandler$PopupWindowType:[I

    invoke-virtual {p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPopupWindowShowing("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_0
    sget-object v3, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_START:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    if-ne v3, p1, :cond_1

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getStartHandle()Lorg/chromium/content/browser/input/HandleView;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :goto_2
    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getEndHandle()Lorg/chromium/content/browser/input/HandleView;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v3

    iget-object v3, v3, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v3

    iget-object v3, v3, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;->isShowing()Z

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isInKikinSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->saveResults()V

    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSaveResults:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->restoreKikinResults()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setKikinPreferenceListener(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$KikinPreferenceListener;)V

    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSaveResults:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->restoreKikinResults()V

    :cond_0
    return-void
.end method

.method public onForceDisabled()V
    .locals 2

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kikin/KikinGlobal;->setSystemDisabled(Landroid/content/Context;Z)V

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setKikinEnabled(Z)V

    return-void
.end method

.method public onKikinPreferenceChange(Z)V
    .locals 0

    return-void
.end method

.method public onSelectionDismissed()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mLastSelection:Ljava/lang/String;

    iput-object v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mLastPreviousText:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionChangingDueToLongPressElsewhere:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionChangingDueToLongPressElsewhere:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSaveResults:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->clearKikinSelection()V

    sget-object v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->UNKNOWN:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    iput-object v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionReason:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    iput-boolean v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mIsInKikinSearchMode:Z

    :cond_2
    iget-object v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    iget-boolean v2, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSaveResults:Z

    if-nez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v1, v0}, Lcom/kikin/KikinResultsViewController;->hide(Z)Z

    goto :goto_0
.end method

.method public onSelectionStarted()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->TAG:Ljava/lang/String;

    const-string v1, "onSelectionStarted() invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$1;->$SwitchMap$com$kikin$content$sbrowser$KikinSelectionHandler$SelectionReason:[I

    iget-object v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionReason:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    invoke-virtual {v1}, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mLastSelection:Ljava/lang/String;

    iput-object v3, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mLastPreviousText:Ljava/lang/String;

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->onTextSelected()V

    invoke-virtual {p0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    sget-object v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->LONG_PRESS_ELSEWHERE:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionContext(Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    const/4 v1, 0x1

    sget-object v2, Lcom/kikin/KikinBarState;->HALF_OPEN:Lcom/kikin/KikinBarState;

    invoke-virtual {v0, v3, v1, v2}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTextCopied()V
    .locals 1

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/KikinResultsViewController;->trackCopyText()V

    :cond_0
    return-void
.end method

.method public onTextTranslated()V
    .locals 1

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/KikinResultsViewController;->trackTranslateText()V

    :cond_0
    return-void
.end method

.method public onTextWebSearched()V
    .locals 1

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/KikinResultsViewController;->trackWebSearch()V

    :cond_0
    return-void
.end method

.method public pageFinishLoading(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->TAG:Ljava/lang/String;

    const-string v2, "pageFinishLoading invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v1, v0}, Lcom/kikin/KikinResultsViewController;->trackPageLoad(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public pushContentView(II)V
    .locals 0

    return-void
.end method

.method public restoreKikinResults()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSaveResults:Z

    sget-object v0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->RESTORE_SELECTION:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    iput-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionReason:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->restoreSelection()V

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/kikin/KikinBarState;->HALF_OPEN:Lcom/kikin/KikinBarState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZLcom/kikin/KikinBarState;)V

    :cond_0
    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->showHandlesIfNeeded()V

    return-void
.end method

.method public saveResults()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSaveResults:Z

    return-void
.end method

.method public selectionChangingDueToLongPressElsewhere()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionChangingDueToLongPressElsewhere:Z

    return-void
.end method

.method public setSelectionReason(Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;)V
    .locals 0

    iput-object p1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSelectionReason:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    return-void
.end method

.method public setUserIsInKikinSearchMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mIsInKikinSearchMode:Z

    return-void
.end method

.method public shouldSaveResults()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSaveResults:Z

    return v0
.end method

.method public showPopupWindow(Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showPopupWindow("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v1

    sget-object v2, Lcom/kikin/content/sbrowser/KikinSelectionHandler$1;->$SwitchMap$com$kikin$interfaces$KikinPopupWindowHandler$PopupWindowType:[I

    invoke-virtual {p1}, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v2, Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;->SELECTION_HANDLE_START:Lcom/kikin/interfaces/KikinPopupWindowHandler$PopupWindowType;

    if-ne v2, p1, :cond_1

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->getStartHandle()Lorg/chromium/content/browser/input/HandleView;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Lorg/chromium/content/browser/input/HandleView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/content/browser/input/SelectionHandleController;->getEndHandle()Lorg/chromium/content/browser/input/HandleView;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    iget-object v2, v2, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionPopUpWindow:Lorg/samsung/content/sbrowser/SbrSelectionHandleController$SelectionActionPopupMenu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->showSelectionActionPopupWindow(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->updateSelection(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateSelectionInCAB(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
