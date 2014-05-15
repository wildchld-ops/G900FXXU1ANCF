.class public Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;
.super Ljava/lang/Object;
.source "SbrowserCreditCardEditorController.java"


# instance fields
.field private bar:Landroid/app/ActionBar;

.field private mGUID:Ljava/lang/String;

.field private mPreferenceFragment:Landroid/preference/PreferenceFragment;

.field private mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    return-void
.end method

.method public static closeEditor(Landroid/app/Activity;Landroid/view/View;Landroid/app/FragmentManager;)V
    .locals 3

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private getMenuItemState()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getName()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getNumber()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDeleteMenuItemState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getDeleteMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCardDataToEditFields()V
    .locals 17

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mGUID:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getCreditCard(Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getName()Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getObfuscatedNumber()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getNumber()Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationMonth()Landroid/widget/Spinner;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v15

    invoke-interface {v15}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationMonth()Landroid/widget/Spinner;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v15

    invoke-interface {v15, v5}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v3, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationMonth()Landroid/widget/Spinner;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_2
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    :cond_3
    :goto_1
    return-void

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationYear()Landroid/widget/Spinner;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v15

    invoke-interface {v15}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    if-ge v5, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationYear()Landroid/widget/Spinner;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v15

    invoke-interface {v15, v5}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationYear()Landroid/widget/Spinner;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v8, 0x1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationYear()Landroid/widget/Spinner;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v15

    check-cast v15, Landroid/widget/ArrayAdapter;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationYear()Landroid/widget/Spinner;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1
.end method

.method public addSpinnerAdapters()V
    .locals 12

    const v11, 0x1090009

    const v10, 0x1090008

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v9}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-direct {v5, v3, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    :goto_0
    const/16 v9, 0xc

    if-gt v0, v9, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationMonth()Landroid/widget/Spinner;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v9}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-direct {v6, v4, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move v2, v1

    :goto_1
    add-int/lit8 v9, v1, 0xa

    if-ge v2, v9, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationYear()Landroid/widget/Spinner;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public deleteCreditCard()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mGUID:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->deleteCreditCard(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceFragment()Landroid/preference/PreferenceFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    return-object v0
.end method

.method public getUI()Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->bar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->bar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const v1, 0x7f0e0003

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    const v2, 0x7f0a02d3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->setSaveMenuItem(Landroid/view/MenuItem;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    const v2, 0x7f0a02d2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->setDeleteMenuItem(Landroid/view/MenuItem;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->updateDeleteMenuItemState()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->saveCreditCard()V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->closeEditor(Landroid/app/Activity;Landroid/view/View;Landroid/app/FragmentManager;)V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->deleteCreditCard()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a02d2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveCreditCard()V
    .locals 11

    const/4 v1, 0x0

    new-instance v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getName()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mGUID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getNumber()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mGUID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationMonth()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setMonth(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationYear()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setYear(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setGUID(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->setCreditCard(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0, v10}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setNumber(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationMonth()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setMonth(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationYear()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setYear(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setGUID(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->setCreditCard(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v9}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getNumber()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mGUID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationMonth()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setMonth(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationYear()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setYear(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setGUID(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->setCreditCard(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0, v10}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setNumber(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationMonth()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setMonth(Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->getExpirationYear()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setYear(Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->setGUID(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->setCreditCard(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setGUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->mGUID:Ljava/lang/String;

    return-void
.end method
