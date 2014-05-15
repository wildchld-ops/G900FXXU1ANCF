.class public Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;
.super Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;
.source "AutofillFormDeleteXlargeUI.java"


# instance fields
.field private mCancelButton:Landroid/view/View;

.field private mOkButton:Landroid/view/View;


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
    .locals 21

    invoke-super/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->Initialise()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v17, v0

    const v18, 0x7f04000b

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->setContentView(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v17, v0

    const v18, 0x7f0a007f

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->setDeleteAll(Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v17, v0

    const v18, 0x7f0a0083

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->setProfileListView(Landroid/widget/ListView;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->selectAllChecked:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v17, v0

    const v18, 0x7f0a0081

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->selectAll:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->selectAll:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;)V

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getDeleteAll()Landroid/widget/LinearLayout;

    move-result-object v17

    new-instance v18, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " profiles."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_2

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-nez v17, :cond_0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c008b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getAddressLine1()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getAddressLine2()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getCity()Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x28

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    const/16 v17, 0x0

    const/16 v18, 0x28

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "..."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->profilelist:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->profilelistID:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v17, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->profilelist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->profilelistID:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v20, v0

    invoke-direct/range {v17 .. v21}, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->profilelist:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getDeleteAll()Landroid/widget/LinearLayout;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v17, v0

    const v18, 0x7f0a0084

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->mOkButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->mOkButton:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->mOkButton:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$3;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    move-object/from16 v17, v0

    const v18, 0x7f0a0047

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->mCancelButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->mCancelButton:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$4;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
