.class public Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;
.super Ljava/lang/Object;
.source "HistoryBaseUi.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;,
        Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;
    }
.end annotation


# static fields
.field private static final SPINNER_BOTH:I = 0x3

.field private static final SPINNER_ONLY_SELECT_ALL:I = 0x1

.field private static final SPINNER_ONLY_UN_SELECT_ALL:I = 0x2

.field protected static mNotifications:[I


# instance fields
.field private dialogClearAllHistory:Landroid/app/Dialog;

.field private handleSelectedItemForActionMode:Z

.field private historyItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

.field mActionMode:Landroid/view/ActionMode;

.field mActionModeMenu:Landroid/view/Menu;

.field private mActionModeSpinner:Lcom/sec/android/app/sbrowser/history/ui/SpinnerTrigger;

.field private mActionModeStartedFromMenu:Z

.field protected mActionModeTextview:Landroid/widget/TextView;

.field protected mActionModeView:Landroid/widget/LinearLayout;

.field protected mCheckBoxModeType:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;

.field mDeleteActionMode:Landroid/view/ActionMode;

.field mDeleteActionModeMenu:Landroid/view/Menu;

.field protected mDeleteMode:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;

.field protected mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

.field protected mHistoryDataToDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation
.end field

.field mHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation
.end field

.field mHistoryListSize:I

.field protected mIsDeleteMode:Z

.field public mIsShowingActionMode:Z

.field protected mMenu:Landroid/view/Menu;

.field protected mNoHistoryLayout:Landroid/widget/RelativeLayout;

.field protected mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private mNotificcatioHistoryUpdateSent:Z

.field protected mResources:Landroid/content/res/Resources;

.field protected mSelectAllCheckBox:Landroid/widget/CheckBox;

.field protected mSelectAllCheckBoxLayout:Landroid/widget/LinearLayout;

.field protected mSelectAllChecked:Z

.field mSelectedHistoryItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

.field mSelectedItemCheckBox:Landroid/widget/CheckBox;

.field mSelectedPosition:I

.field public mSlectedItemCount:I

.field mSpinnerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinnerWithCondition:I

.field protected mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

.field protected updateRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotifications:[I

    sget-object v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotifications:[I

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotifications:[I

    const/4 v1, 0x1

    const/16 v2, 0x1b

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotifications:[I

    const/4 v1, 0x2

    const/16 v2, 0x22

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotifications:[I

    const/4 v1, 0x3

    const/16 v2, 0x23

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mResources:Landroid/content/res/Resources;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->updateRequired:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificcatioHistoryUpdateSent:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->dialogClearAllHistory:Landroid/app/Dialog;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->handleSelectedItemForActionMode:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSpinnerWithCondition:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mIsShowingActionMode:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeStartedFromMenu:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSpinnerItems:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryListSize:I

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedHistoryItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mIsDeleteMode:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllChecked:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mDeleteMode:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeTextview:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeView:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;->NO_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mCheckBoxModeType:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificcatioHistoryUpdateSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->prepareUrlsFromSelectedItemsforDelete()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prepareUrlsForNewWindow()[Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private prepareUrlsFromSelectedItemsforCopy()Ljava/lang/String;
    .locals 4

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private prepareUrlsFromSelectedItemsforDelete()Ljava/lang/String;
    .locals 4

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected dismissClearAllHistoryDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->dialogClearAllHistory:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->dialogClearAllHistory:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->dialogClearAllHistory:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExpListView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsDeleteMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mIsDeleteMode:Z

    return v0
.end method

.method public getIsShowingActionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mIsShowingActionMode:Z

    return v0
.end method

.method public getItemCheckBoxClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificcatioHistoryUpdateSent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificcatioHistoryUpdateSent:Z

    return v0
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mResources:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    instance-of v2, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v2, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    :goto_0
    return-object v2

    :cond_0
    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;

    iget-object v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    move-object v0, v2

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/LinearLayout;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method protected handleSelectedItemForActionMode()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->handleSelectedItemForActionMode:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryListSize:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->updateActionModeTextview()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->setListItems()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->sendAccessibilityEvent(I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-boolean v4, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected handleSelectedItemForDeleteMode()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryListSize:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    iput-boolean v4, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->updateActionModeTextview()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->setEnableOrDisableDoneButton()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    iget v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public initializeUI(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v3, v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v2, v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-wide v0, v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mVisitTime:J

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    return v9

    :sswitch_0
    iput-boolean v9, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificcatioHistoryUpdateSent:Z

    iget v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryListSize:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->promptToClearHistory()V

    :goto_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->prepareUrlsFromSelectedItemsforDelete()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0, v1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->deleteHistoryURL(Ljava/lang/String;J)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0330

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :sswitch_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v4, v3, v2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->shareUrl(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :sswitch_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->prepareUrlsForNewWindow()[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->createNewWindow([Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v4, v3, v2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->addToQuickAccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedHistoryItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    invoke-interface {v4, v5, v3, v2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->saveToBookmarks(Lcom/sec/android/app/sbrowser/history/HistoryItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->prepareUrlsFromSelectedItemsforCopy()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->copy(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0131

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v4, v3}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->setAsHomePage(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a02f3 -> :sswitch_0
        0x7f0a02f4 -> :sswitch_1
        0x7f0a02fa -> :sswitch_6
        0x7f0a0316 -> :sswitch_2
        0x7f0a0317 -> :sswitch_5
        0x7f0a0318 -> :sswitch_3
        0x7f0a0319 -> :sswitch_4
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v1, 0x2a

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->historyItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setIsBookmark(Z)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->historyItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setIsBookmark(Z)V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;

    move-result-object v1

    instance-of v9, v1, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    if-eqz v9, :cond_0

    check-cast v1, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->historyItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->historyItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    aput-object v5, v6, v7

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->historyItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->historyItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getTime()J

    move-result-wide v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v7, v6}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->createNewWindow([Ljava/lang/String;)V

    move v7, v8

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getGroupItFlag()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v9, v5}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getRelatedNodeForClusterByWebsite(Ljava/lang/String;)Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v9, v8}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->setGroupItMode(Z)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->buildMap()V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getGroupItFlag()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v9, v5}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getRelatedNodeForClusterByCategory(Ljava/lang/String;)Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v9, v8}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->setGroupItMode(Z)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->buildMap()V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->historyItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    invoke-interface {v7, v9, v5, v4}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->saveToBookmarks(Lcom/sec/android/app/sbrowser/history/HistoryItem;Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    goto :goto_0

    :pswitch_4
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v7, v5, v4}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->shareUrl(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    goto :goto_0

    :pswitch_5
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v7, v5}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->copy(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    const v9, 0x7f0c0131

    invoke-static {v7, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    move v7, v8

    goto/16 :goto_0

    :pswitch_6
    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificcatioHistoryUpdateSent:Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v2, v3}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->deleteHistoryURL(Ljava/lang/String;J)V

    move v7, v8

    goto/16 :goto_0

    :pswitch_7
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setHomePage(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    const v9, 0x7f0c0154

    invoke-static {v7, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    move v7, v8

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a031c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mIsDeleteMode:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040024

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeView:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeView:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$2;-><init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeView:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0103

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeTextview:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0e0013

    invoke-virtual {v2, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionMode:Landroid/view/ActionMode;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mIsShowingActionMode:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryListSize:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iput-boolean v6, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeStartedFromMenu:Z

    if-eqz v2, :cond_1

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeStartedFromMenu:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput v6, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->updateActionModeTextview()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->setListItems()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->notifyDataSetChanged()V

    :goto_1
    return v7

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->handleSelectedItemForActionMode()V

    goto :goto_1

    :cond_2
    iput v6, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryListSize:I

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v8, v7

    check-cast v8, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectedHistoryItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    if-eqz v8, :cond_0

    move-object v1, v7

    check-cast v1, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v8, 0x7f0e0015

    invoke-virtual {v2, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "text/plain"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0x1

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    const v8, 0x7f0a0321

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    if-eqz v5, :cond_6

    const/4 v8, 0x1

    :goto_1
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getGroupItFlag()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getRelatedNodeCountForClusterByCategory(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    if-lez v8, :cond_7

    const v8, 0x7f0a031e

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cluster by Category ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v8, 0x7f0a031e

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getRelatedNodeCountForClusterByWebsite(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    if-lez v8, :cond_8

    const v8, 0x7f0a031d

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cluster by Website ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v8, 0x7f0a031d

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getGroupItFlag()Z

    move-result v8

    if-nez v8, :cond_4

    const v8, 0x7f0a031d

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v8, 0x7f0a031e

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->isBookmark()Z

    move-result v8

    if-eqz v8, :cond_5

    const v8, 0x7f0a0322

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->isSavedPage()Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0x7f0a0322

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v8, 0x7f0a0321

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v8, 0x7f0a0320

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v8, 0x7f0a0323

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_7
    const v8, 0x7f0a031e

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const-string v9, "Cluster by Category (0)"

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v8, 0x7f0a031e

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_8
    const v8, 0x7f0a031d

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const-string v9, "Cluster by Website (0)"

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v8, 0x7f0a031d

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotifications:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBoxLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->notifyDataSetChanged()V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mIsShowingActionMode:Z

    iput v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeTextview:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryListSize:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iput-boolean v4, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->finish()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0314

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->promptToClearHistory()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0312

    if-ne v0, v1, :cond_3

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeStartedFromMenu:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;->SELECT_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mCheckBoxModeType:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0313

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;->DELETE_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mCheckBoxModeType:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->startDeleteMode()V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const v3, 0x7f0a0314

    const v5, 0x7f0a0313

    const v4, 0x7f0a0312

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v1

    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return v1

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public promptToClearHistory()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c00ca

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00b7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0041

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c003d

    new-instance v3, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$1;-><init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->dialogClearAllHistory:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->dialogClearAllHistory:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public refreshNoHistoryLayout()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a0143

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const v2, 0x7f0c01c4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a0144

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v2, 0x7f0c01db

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected setEnableOrDisableDoneButton()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->updateActionModeTextview()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mDeleteActionModeMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mDeleteActionModeMenu:Landroid/view/Menu;

    const v2, 0x7f0a031a

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setHistory(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    return-void
.end method

.method protected setListItems()V
    .locals 9

    const v8, 0x7f0a02f3

    const v7, 0x7f0a0319

    const v6, 0x7f0a0318

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a02f4

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a0316

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a0317

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a02fa

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v1, v2, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a02f4

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a0316

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a0317

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a02fa

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v2, v1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->isUrlPinned(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->isURLBookmarked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a02f4

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a0316

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a0317

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a02fa

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a02f4

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a0316

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a0317

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const v3, 0x7f0a02fa

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public setLocale()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->reInitializeDateSorter()V

    :cond_0
    return-void
.end method

.method public setNoHistoryLayoutIfNeeded()V
    .locals 0

    return-void
.end method

.method public setSelection(Z)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iput-boolean p1, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->setListItems()V

    goto :goto_0
.end method

.method public setViewPagerNonScrollable(Z)V
    .locals 0

    return-void
.end method

.method public settNotificcatioHistoryUpdateSent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificcatioHistoryUpdateSent:Z

    return-void
.end method

.method public showClearAllHistoryDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->dialogClearAllHistory:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->dialogClearAllHistory:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->dialogClearAllHistory:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->promptToClearHistory()V

    :cond_0
    return-void
.end method

.method public startDeleteMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mDeleteMode:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;-><init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mDeleteMode:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mDeleteMode:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public unRegisterNotifications()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotifications:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-void
.end method

.method protected updateActionModeTextview()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeTextview:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c032f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeTextview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0
.end method

.method public updateHistoryUi()V
    .locals 0

    return-void
.end method
