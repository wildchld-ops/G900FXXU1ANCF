.class public Lorg/chromium/content/browser/input/SelectPopupDialog;
.super Ljava/lang/Object;
.source "SelectPopupDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/SelectPopupDialog$SelectPopupArrayAdapter;
    }
.end annotation


# static fields
.field private static sShownDialog:Lorg/chromium/content/browser/input/SelectPopupDialog;


# instance fields
.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mListBoxPopup:Landroid/app/AlertDialog;


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/ContentViewCore;[Ljava/lang/String;[IZ[I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    new-instance v3, Landroid/widget/ListView;

    iget-object v4, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz p4, :cond_0

    const v4, 0x104000a

    new-instance v5, Lorg/chromium/content/browser/input/SelectPopupDialog$1;

    invoke-direct {v5, p0, v3}, Lorg/chromium/content/browser/input/SelectPopupDialog$1;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;Landroid/widget/ListView;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x104

    new-instance v5, Lorg/chromium/content/browser/input/SelectPopupDialog$2;

    invoke-direct {v5, p0}, Lorg/chromium/content/browser/input/SelectPopupDialog$2;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    new-instance v0, Lorg/chromium/content/browser/input/SelectPopupDialog$SelectPopupArrayAdapter;

    invoke-direct {v0, p0, p2, p3, p4}, Lorg/chromium/content/browser/input/SelectPopupDialog$SelectPopupArrayAdapter;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;[Ljava/lang/String;[IZ)V

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    if-eqz p4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v4, p5

    if-ge v2, v4, :cond_2

    aget v4, p5, v2

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v4, Lorg/chromium/content/browser/input/SelectPopupDialog$3;

    invoke-direct {v4, p0, v3}, Lorg/chromium/content/browser/input/SelectPopupDialog$3;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;Landroid/widget/ListView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    array-length v4, p5

    if-lez v4, :cond_2

    aget v4, p5, v7

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    aget v4, p5, v7

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_2
    iget-object v4, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    new-instance v5, Lorg/chromium/content/browser/input/SelectPopupDialog$4;

    invoke-direct {v5, p0}, Lorg/chromium/content/browser/input/SelectPopupDialog$4;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v4, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    new-instance v5, Lorg/chromium/content/browser/input/SelectPopupDialog$5;

    invoke-direct {v5, p0}, Lorg/chromium/content/browser/input/SelectPopupDialog$5;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/SelectPopupDialog;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/SelectPopupDialog;Landroid/widget/ListView;)[I
    .locals 1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/SelectPopupDialog;->getSelectedIndices(Landroid/widget/ListView;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/SelectPopupDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lorg/chromium/content/browser/input/SelectPopupDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$302(Lorg/chromium/content/browser/input/SelectPopupDialog;)Lorg/chromium/content/browser/input/SelectPopupDialog;
    .locals 0

    sput-object p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->sShownDialog:Lorg/chromium/content/browser/input/SelectPopupDialog;

    return-object p0
.end method

.method public static getCurrent()Lorg/chromium/content/browser/input/SelectPopupDialog;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/input/SelectPopupDialog;->sShownDialog:Lorg/chromium/content/browser/input/SelectPopupDialog;

    return-object v0
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

    sget-object v0, Lorg/chromium/content/browser/input/SelectPopupDialog;->sShownDialog:Lorg/chromium/content/browser/input/SelectPopupDialog;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/input/SelectPopupDialog;->sShownDialog:Lorg/chromium/content/browser/input/SelectPopupDialog;

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-ne v0, p0, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->selectPopupMenuItems([I)V

    :cond_1
    sget-object v0, Lorg/chromium/content/browser/input/SelectPopupDialog;->sShownDialog:Lorg/chromium/content/browser/input/SelectPopupDialog;

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public static show(Lorg/chromium/content/browser/ContentViewCore;[Ljava/lang/String;[IZ[I)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/content/browser/input/SelectPopupDialog;->hide(Lorg/chromium/content/browser/ContentViewCore;)V

    new-instance v0, Lorg/chromium/content/browser/input/SelectPopupDialog;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/SelectPopupDialog;-><init>(Lorg/chromium/content/browser/ContentViewCore;[Ljava/lang/String;[IZ[I)V

    sput-object v0, Lorg/chromium/content/browser/input/SelectPopupDialog;->sShownDialog:Lorg/chromium/content/browser/input/SelectPopupDialog;

    sget-object v0, Lorg/chromium/content/browser/input/SelectPopupDialog;->sShownDialog:Lorg/chromium/content/browser/input/SelectPopupDialog;

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
