.class public Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;
.super Ljava/lang/Object;
.source "SbrowserProfileEditorUI.java"


# instance fields
.field private final MAX_INPUT_LENGTH:I

.field private mAddr1Text:Landroid/widget/EditText;

.field private mAddr2Text:Landroid/widget/EditText;

.field private mCancelMenuItem:Landroid/view/MenuItem;

.field private mCityText:Landroid/widget/EditText;

.field private mCompanyText:Landroid/widget/EditText;

.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

.field private mCountryText:Landroid/widget/EditText;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mEmailText:Landroid/widget/EditText;

.field private mLengthFilter:Landroid/text/InputFilter$LengthFilter;

.field private mNameText:Landroid/widget/EditText;

.field private mPhoneText:Landroid/widget/EditText;

.field private mSaveMenuItem:Landroid/view/MenuItem;

.field private mStateText:Landroid/widget/EditText;

.field private mZipText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;)V
    .locals 2

    const/16 v1, 0x100

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->MAX_INPUT_LENGTH:I

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI$1;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;)Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    return-object v0
.end method


# virtual methods
.method public getAddressLine1()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mAddr1Text:Landroid/widget/EditText;

    return-object v0
.end method

.method public getAddressLine2()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mAddr2Text:Landroid/widget/EditText;

    return-object v0
.end method

.method public getCancelMenuItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mCancelMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public getCity()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mCityText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getCompany()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mCompanyText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getCountry()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mCountryText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getDeleteMenuItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public getEmail()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mEmailText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getName()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mNameText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getPhone()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mPhoneText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getSaveMenuItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mSaveMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public getState()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mStateText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getZip()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mZipText:Landroid/widget/EditText;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22

    const v18, 0x7f040014

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    const v18, 0x7f0c0092

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v18, 0x7f0a002d

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mNameText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mNameText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v18, 0x7f0a002e

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mCompanyText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mCompanyText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v18, 0x7f0a002f

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mAddr1Text:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mAddr1Text:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v18, 0x7f0a0030

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mAddr2Text:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mAddr2Text:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v18, 0x7f0a0031

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mCityText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mCityText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v18, 0x7f0a0032

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mStateText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mStateText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v18, 0x7f0a0033

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mZipText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mZipText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v18, 0x7f0a0034

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mCountryText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mCountryText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v18, 0x7f0a0035

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mPhoneText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mPhoneText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v18, 0x7f0a0036

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mEmailText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->getPreferenceFragment()Landroid/preference/PreferenceFragment;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v18, "guid"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->setGUID(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->getGUID()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->setGUID(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->setTextEdited(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->addProfileDataToEditFields()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->setFieldChangedListener(Landroid/widget/EditText;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->setFieldChangedListener(Landroid/widget/EditText;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->setFieldChangedListener(Landroid/widget/EditText;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->setFieldChangedListener(Landroid/widget/EditText;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->setFieldChangedListener(Landroid/widget/EditText;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->setFieldChangedListener(Landroid/widget/EditText;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->setFieldChangedListener(Landroid/widget/EditText;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->setFieldChangedListener(Landroid/widget/EditText;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->setFieldChangedListener(Landroid/widget/EditText;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->setFieldChangedListener(Landroid/widget/EditText;)V

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->updateSaveMenuState()V

    return-object v16
.end method

.method public setCancelMenuItem(Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mCancelMenuItem:Landroid/view/MenuItem;

    return-void
.end method

.method public setDeleteMenuItem(Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-void
.end method

.method public setSaveMenuItem(Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mSaveMenuItem:Landroid/view/MenuItem;

    return-void
.end method
