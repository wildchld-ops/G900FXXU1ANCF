.class public abstract Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;
.super Ljava/lang/Object;
.source "AutofillFormDeleteBaseUI.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;


# static fields
.field protected static isDoneSelected:Ljava/lang/Boolean;


# instance fields
.field protected adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

.field protected delPos:I

.field public isLongPress:Z

.field protected mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

.field private mDeleteAll:Landroid/widget/LinearLayout;

.field private mMenu:Landroid/view/Menu;

.field protected mProfileListView:Landroid/widget/ListView;

.field public mSelectAllButton:Landroid/widget/TextView;

.field protected profilelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected profilelistID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public selectAll:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field public selectAllChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->isDoneSelected:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->selectAllChecked:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->profilelist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->profilelistID:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->delPos:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->isLongPress:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->selectAllChecked:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->profilelist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->profilelistID:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->delPos:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->isLongPress:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    return-void
.end method


# virtual methods
.method public Initialise()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getDelPos()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->delPos:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/chromium/content/browser/AndroidBrowserProcess;->init(Landroid/content/Context;I)Z
    :try_end_0
    .catch Lorg/chromium/content/common/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/chromium/content/common/ProcessInitException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAutofillFormDeleteActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    return-object v0
.end method

.method public getDeleteAll()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mDeleteAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getIsLongPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->isLongPress:Z

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public getProfileListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mProfileListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectAll()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->selectAll:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public getSelectAllButton()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mSelectAllButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->isLongPress:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->setMenu(Landroid/view/Menu;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->isLongPress:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v8, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    return v8

    :sswitch_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->checkStates:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-ne v2, v8, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c022a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c008f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c007c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    if-le v2, v8, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c022b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :sswitch_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->finish()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0a02d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f0a02d4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->profilelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget v0, v0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    if-nez v0, :cond_0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->isLongPress:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020201

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setAutofillFormDeleteActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;

    return-void
.end method

.method public setDeleteAll(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mDeleteAll:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mMenu:Landroid/view/Menu;

    return-void
.end method

.method public setProfileListView(Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mProfileListView:Landroid/widget/ListView;

    return-void
.end method

.method public setSelectAllChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->selectAllChecked:Z

    return-void
.end method

.method public setTitleCount()V
    .locals 0

    return-void
.end method
