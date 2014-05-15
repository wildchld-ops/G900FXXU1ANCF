.class public Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;
.super Ljava/lang/Object;
.source "SbrSelectPopupDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;
    }
.end annotation


# static fields
.field private static mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private static mPrevNextOptions:I

.field private static mSelectFocusMoved:Z

.field public static mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

.field private static sShownDialog:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;


# instance fields
.field private bWebSelectDialogIsUp:Z

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mSelectFocusMoved:Z

    return-void
.end method

.method private constructor <init>(Lorg/chromium/content/browser/ContentViewCore;[Ljava/lang/String;[IZ[I)V
    .locals 7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->bWebSelectDialogIsUp:Z

    sput-object p1, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400bf

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    const/4 v3, 0x1

    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    if-nez v4, :cond_0

    new-instance v4, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    sget-object v5, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;-><init>(Landroid/content/Context;)V

    sput-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    const/4 v3, 0x0

    :cond_0
    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    invoke-virtual {v4, v2}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->setListView(Landroid/widget/ListView;)V

    sget v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mPrevNextOptions:I

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_1

    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->setButtonEnabled(IZ)V

    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    const/4 v5, 0x2

    new-instance v6, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$1;

    invoke-direct {v6, p0, v2}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$1;-><init>(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;Landroid/widget/ListView;)V

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    :goto_0
    sget v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mPrevNextOptions:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_2

    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->setButtonEnabled(IZ)V

    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    const/4 v5, 0x1

    new-instance v6, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$2;

    invoke-direct {v6, p0, v2}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$2;-><init>(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;Landroid/widget/ListView;)V

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    :goto_1
    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->setButtonEnabled(IZ)V

    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    const/4 v5, 0x3

    new-instance v6, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$3;

    invoke-direct {v6, p0, v2}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$3;-><init>(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;Landroid/widget/ListView;)V

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;

    invoke-direct {v0, p2, p3, p4}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$SelectPopupArrayAdapter;-><init>([Ljava/lang/String;[IZ)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    if-eqz p4, :cond_3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    const/4 v1, 0x0

    :goto_2
    array-length v4, p5

    if-ge v1, v4, :cond_4

    aget v4, p5, v1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->setButtonEnabled(IZ)V

    goto :goto_0

    :cond_2
    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->setButtonEnabled(IZ)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$4;

    invoke-direct {v4, p0, v2}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$4;-><init>(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;Landroid/widget/ListView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    array-length v4, p5

    if-lez v4, :cond_4

    const/4 v4, 0x0

    aget v4, p5, v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelection(I)V

    const/4 v4, 0x0

    aget v4, p5, v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_4
    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    new-instance v5, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$5;

    invoke-direct {v5, p0}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$5;-><init>(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;)V

    invoke-virtual {v4, v5}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    new-instance v5, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$6;

    invoke-direct {v5, p0}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$6;-><init>(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;)V

    invoke-virtual {v4, v5}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz v3, :cond_5

    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->rebuildView()V

    sget-object v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->onChromeViewSizeChanged()V

    :cond_5
    const/4 v4, 0x0

    sput-boolean v4, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mSelectFocusMoved:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->bWebSelectDialogIsUp:Z

    return-void
.end method

.method static synthetic access$000()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mSelectFocusMoved:Z

    return p0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mPrevNextOptions:I

    return v0
.end method

.method static synthetic access$302(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->bWebSelectDialogIsUp:Z

    return p1
.end method

.method static synthetic access$400(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;Landroid/widget/ListView;)[I
    .locals 1

    invoke-direct {p0, p1}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->getSelectedIndices(Landroid/widget/ListView;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->notifyContentViewCorePopupCanceled()V

    return-void
.end method

.method static synthetic access$602(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;)Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;
    .locals 0

    sput-object p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->sShownDialog:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    return-object p0
.end method

.method public static checkWebSelectIsUp()Z
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->sShownDialog:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->sShownDialog:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    iget-boolean v0, v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->bWebSelectDialogIsUp:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->sShownDialog:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSelectedIndices(Landroid/widget/ListView;)[I
    .locals 7

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v4, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    aput v6, v1, v2

    move v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public static hide(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->sShownDialog:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->sShownDialog:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-ne v0, p0, :cond_1

    :cond_0
    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->sShownDialog:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    :cond_1
    return-void
.end method

.method public static hideEmpty(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->mWebselectdialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mSelectFocusMoved:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->mWebselectdialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/content/browser/ContentViewCore;->mWebselectdialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    :cond_0
    return-void
.end method

.method public static hideIfRequired(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->sShownDialog:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->sShownDialog:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mSelectFocusMoved:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->hide(Lorg/chromium/content/browser/ContentViewCore;)V

    :cond_0
    return-void
.end method

.method private isDialogShowing()Z
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyContentViewCorePopupCanceled()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->notifyContentViewItemsSelected([I)V

    return-void
.end method

.method private notifyContentViewItemsSelected([I)V
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->selectPopupMenuItems([I)V

    return-void
.end method

.method public static resizeWebSelectDialog()V
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->onChromeViewSizeChanged()V

    return-void
.end method

.method public static show(Lorg/chromium/content/browser/ContentViewCore;[Ljava/lang/String;[IZ[II)V
    .locals 6

    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->mWebselectdialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    sput-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->hideKeypadIfShowing()V

    :cond_0
    sput p5, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mPrevNextOptions:I

    new-instance v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;-><init>(Lorg/chromium/content/browser/ContentViewCore;[Ljava/lang/String;[IZ[I)V

    sput-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->sShownDialog:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->show()V

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->setWebDialog(Lorg/samsung/content/sbrowser/SbrWebSelectDialog;)V

    return-void
.end method
