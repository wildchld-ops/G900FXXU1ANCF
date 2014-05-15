.class public Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;
.super Ljava/lang/Object;
.source "ClearBrowsingDataDialogFragmentUI.java"


# instance fields
.field private button:Landroid/widget/Button;

.field private child:Landroid/view/View;

.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private selectAll:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->child:Landroid/view/View;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;

    return-void
.end method


# virtual methods
.method public getButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->button:Landroid/widget/Button;

    return-object v0
.end method

.method public getChild()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->child:Landroid/view/View;

    return-object v0
.end method

.method public getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public getSelectAll()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->selectAll:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public setButton(Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->button:Landroid/widget/Button;

    return-void
.end method

.method public setProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public setSelectAll(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->selectAll:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-void
.end method
