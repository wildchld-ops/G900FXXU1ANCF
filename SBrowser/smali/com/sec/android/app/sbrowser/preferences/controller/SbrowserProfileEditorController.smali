.class public Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;
.super Ljava/lang/Object;
.source "SbrowserProfileEditorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$FieldChangedListener;
    }
.end annotation


# instance fields
.field private bar:Landroid/app/ActionBar;

.field private cancelActionView:Landroid/view/View;

.field isTextEdited:Z

.field private mFieldChangedListener:Landroid/text/TextWatcher;

.field private mGUID:Ljava/lang/String;

.field private mPreferenceFragment:Landroid/preference/PreferenceFragment;

.field private mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

.field private saveActionView:Landroid/view/View;

.field private txt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$FieldChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$FieldChangedListener;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mFieldChangedListener:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;)Landroid/preference/PreferenceFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->saveProfile()V

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

.method private saveProfile()V
    .locals 23

    new-instance v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getName()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v13}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->setFullName(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getCompany()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v15}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->setCompanyName(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getAddressLine1()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->setAddressLine1(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getAddressLine2()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->setAddressLine2(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getCity()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->setCity(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getState()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->setState(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getZip()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->setZip(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getCountry()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->setCountry(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getPhone()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->setPhoneNumber(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getEmail()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v14}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->setEmailAddress(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mGUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->setGUID(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->setProfile(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addProfileDataToEditFields()V
    .locals 14

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getProfile(Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getName()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getCompany()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getAddressLine1()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getAddressLine1()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getAddressLine2()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getAddressLine2()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCity()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getCity()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getState()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getState()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getZip()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getZip()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCountry()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getCountry()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getPhone()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getEmail()Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public deleteProfile()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mGUID:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mGUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->deleteProfile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuItemState()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getName()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getEmail()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getCompany()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getAddressLine1()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getAddressLine2()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getCity()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getState()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getZip()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getCountry()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getPhone()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getPhone()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferenceFragment()Landroid/preference/PreferenceFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    return-object v0
.end method

.method public getUI()Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    return-object v0
.end method

.method public isTextEdited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->isTextEdited:Z

    return v0
.end method

.method public lengthLimitToast(I)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const v8, 0x106000d

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v4}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v4, 0x7f040002

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/16 v5, 0x10

    const/16 v6, 0xf

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v9, v9, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a0062

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->cancelActionView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->cancelActionView:Landroid/view/View;

    new-instance v5, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a0064

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->saveActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0065

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->txt:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->txt:Landroid/widget/TextView;

    const v5, 0x7f0c026f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->saveActionView:Landroid/view/View;

    new-instance v5, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const v1, 0x7f0e0003

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    const v2, 0x7f0a02d3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->setSaveMenuItem(Landroid/view/MenuItem;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    const v2, 0x7f0a02d2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->setCancelMenuItem(Landroid/view/MenuItem;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->updateDeleteMenuItemState()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->updateSaveMenuState()V

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
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->saveProfile()V

    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->closeEditor(Landroid/app/Activity;Landroid/view/View;Landroid/app/FragmentManager;)V

    const/4 v3, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a02d2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFieldChangedListener(Landroid/widget/EditText;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setGUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mGUID:Ljava/lang/String;

    return-void
.end method

.method public setTextEdited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->isTextEdited:Z

    return-void
.end method

.method public updateDeleteMenuItemState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->getDeleteMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public updateSaveMenuState()V
    .locals 6

    const v5, 0x7f080033

    const v4, 0x7f08000f

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->saveActionView:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->saveActionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->getMenuItemState()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mGUID:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mGUID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->isTextEdited:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->saveActionView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->txt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->saveActionView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->txt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->saveActionView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->txt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->txt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method
