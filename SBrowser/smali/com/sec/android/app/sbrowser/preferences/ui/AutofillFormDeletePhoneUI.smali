.class public Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;
.super Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;
.source "AutofillFormDeletePhoneUI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/AutofillFormDeleteController;)V

    return-void
.end method


# virtual methods
.method public Initialise()V
    .locals 23

    invoke-super/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->Initialise()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v19, v0

    const v20, 0x7f04000a

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->setContentView(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v19, v0

    const v20, 0x7f0a007f

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->setDeleteAll(Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v19, v0

    const v20, 0x7f0a0083

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ListView;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->setProfileListView(Landroid/widget/ListView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v19, v0

    const v20, 0x7f0a0083

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    new-instance v20, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x106000d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    new-instance v20, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x106000d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020268

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->setTitleCount()V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->selectAllChecked:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v19, v0

    const v20, 0x7f0a0081

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->selectAll:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->selectAll:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v19, v0

    new-instance v20, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;)V

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->getDeleteAll()Landroid/widget/LinearLayout;

    move-result-object v19

    new-instance v20, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " profiles."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v4, v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v6, :cond_2

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v12}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-nez v19, :cond_0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c008b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v11, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getAddressLine1()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v12}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getAddressLine2()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCity()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x28

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    const/16 v19, 0x0

    const/16 v20, 0x28

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "..."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->profilelist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->profilelistID:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v19, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->profilelist:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->profilelistID:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v22, v0

    invoke-direct/range {v19 .. v23}, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->profilelist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->getDeleteAll()Landroid/widget/LinearLayout;

    move-result-object v19

    if-eqz v19, :cond_3

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->delPos:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->checkStates:[Z

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->delPos:I

    move/from16 v20, v0

    const/16 v21, 0x1

    aput-boolean v21, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->isLongPress:Z

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->delPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->getCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->selectAll:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->setTitleCount()V

    return-void
.end method

.method public setTitleCount()V
    .locals 7

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->setTitleCount()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->checkStates:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeletePhoneUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    const v4, 0x7f0c032f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
