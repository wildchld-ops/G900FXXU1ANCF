.class public Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/DialogFragmentController;
.source "ClearBrowsingDataDialogFragmentController.java"

# interfaces
.implements Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;


# static fields
.field private static final CLEAR_CACHE:I = 0x1

.field private static final CLEAR_COOKIES_AND_SITE_DATA:I = 0x2

.field private static final CLEAR_FORM_DATA:I = 0x4

.field private static final CLEAR_HISTORY:I = 0x0

.field private static final CLEAR_LOCATION_ACCESS:I = 0x5

.field private static final CLEAR_PASSWORDS:I = 0x3

.field public static final MAX_COUNT:I = 0x6


# instance fields
.field private adapter:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

.field countselectall:I

.field private mItems:[Ljava/lang/String;

.field private mItemsChecked:[Z

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/ClearBrowsingDataDialogFragmentModel;

.field private mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;


# direct methods
.method public constructor <init>(Landroid/app/DialogFragment;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/DialogFragmentController;-><init>(Landroid/app/DialogFragment;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->countselectall:I

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/ClearBrowsingDataDialogFragmentModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/model/ClearBrowsingDataDialogFragmentModel;-><init>(Landroid/app/DialogFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/ClearBrowsingDataDialogFragmentModel;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)[Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->adapter:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    return-object v0
.end method


# virtual methods
.method protected clearBrowsingData()V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v3}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0122

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v7, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->setProgressDialog(Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/ClearBrowsingDataDialogFragmentModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    aget-boolean v2, v1, v5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    aget-boolean v3, v1, v7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    const/4 v4, 0x2

    aget-boolean v4, v1, v4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    const/4 v5, 0x3

    aget-boolean v5, v1, v5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    const/4 v6, 0x4

    aget-boolean v6, v1, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/preferences/model/ClearBrowsingDataDialogFragmentModel;->clearBrowsingData(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;ZZZZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-ne v0, v7, :cond_0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->clearAllGeolocationAccess()Z

    :cond_0
    return-void
.end method

.method public enableDisableButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getUI()Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    return-object v0
.end method

.method public getitems()[Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    return-object v0
.end method

.method public onBrowsingDataCleared()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->setClearAllHistory(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->clearBrowsingData()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4

    const v3, 0x7f0a0108

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    aput-boolean p3, v0, p2

    if-ne p3, v2, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->countselectall:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->countselectall:I

    :goto_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->countselectall:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->countselectall:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->countselectall:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 22

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItems:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItems:[Ljava/lang/String;

    const/4 v8, 0x0

    const v9, 0x7f0c011f

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItems:[Ljava/lang/String;

    const/4 v8, 0x1

    const v9, 0x7f0c0073

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItems:[Ljava/lang/String;

    const/4 v8, 0x2

    const v9, 0x7f0c0120

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItems:[Ljava/lang/String;

    const/4 v8, 0x3

    const v9, 0x7f0c0077

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItems:[Ljava/lang/String;

    const/4 v8, 0x4

    const v9, 0x7f0c0121

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItems:[Ljava/lang/String;

    const/4 v8, 0x5

    const v9, 0x7f0c00bb

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    const-string v1, "privacy_clear_history"

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v1, "privacy_clear_cache"

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v1, "privacy_clear_cookies"

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v1, "privacy_clear_passwords"

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v1, "privacy_clear_form_data"

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "privacy_clear_geolocation_access"

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->setItemsToBeChecked(ZZZZZZ)V

    new-instance v8, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItems:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mDialogFragment:Landroid/app/DialogFragment;

    check-cast v12, Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;

    move-object/from16 v13, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;[ZLcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->adapter:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v8}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c011e

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v8, 0x7f0c01d2

    move-object/from16 v0, p0

    invoke-virtual {v1, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v8, 0x7f0c0123

    move-object/from16 v0, p0

    invoke-virtual {v1, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v8, "layout_inflater"

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    const v1, 0x7f04000a

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    const v1, 0x7f0a0083

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ListView;

    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->adapter:Lcom/sec/android/app/sbrowser/preferences/ui/BrowsingAdapter;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f0a007f

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    const v1, 0x7f0a0081

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v8, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->setSelectAll(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getSelectAll()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    new-instance v8, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)V

    invoke-virtual {v1, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    const/4 v8, -0x1

    invoke-virtual {v14, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->setButton(Landroid/widget/Button;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController$3;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;)V

    invoke-virtual {v14, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v14
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/DialogFragmentController;->onDestroy()V

    return-void
.end method

.method public setItemsToBeChecked(ZZZZZZ)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    const/4 v2, 0x1

    aput-boolean p2, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    const/4 v2, 0x2

    aput-boolean p3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    const/4 v2, 0x3

    aput-boolean p4, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    const/4 v2, 0x4

    aput-boolean p5, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mItemsChecked:[Z

    const/4 v2, 0x5

    aput-boolean p6, v1, v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "privacy_clear_history"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "privacy_clear_cache"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "privacy_clear_cookies"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "privacy_clear_passwords"

    invoke-interface {v1, v2, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "privacy_clear_form_data"

    invoke-interface {v1, v2, p5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "privacy_clear_geolocation_access"

    invoke-interface {v1, v2, p6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setselectall(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ClearBrowsingDataDialogFragmentController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/ClearBrowsingDataDialogFragmentUI;->getSelectAll()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void
.end method
