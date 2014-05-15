.class public Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;
.super Ljava/lang/Object;
.source "SbrowserCreditCardEditorUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$CardNumberKeyListener;
    }
.end annotation


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mExpirationMonth:Landroid/widget/Spinner;

.field private mExpirationYear:Landroid/widget/Spinner;

.field private mNameText:Landroid/widget/EditText;

.field private mNumberText:Landroid/widget/EditText;

.field private mSaveMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mNumberText:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public getDeleteMenuItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public getExpirationMonth()Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mExpirationMonth:Landroid/widget/Spinner;

    return-object v0
.end method

.method public getExpirationYear()Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mExpirationYear:Landroid/widget/Spinner;

    return-object v0
.end method

.method public getName()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mNameText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getNumber()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mNumberText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getSaveMenuItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mSaveMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    const v14, 0x7f040008

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    const v14, 0x7f0c0093

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v14, 0x7f0a0029

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mNameText:Landroid/widget/EditText;

    const v14, 0x7f0a002a

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mNumberText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mNumberText:Landroid/widget/EditText;

    new-instance v4, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$CardNumberKeyListener;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$CardNumberKeyListener;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;)V

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mNumberText:Landroid/widget/EditText;

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;)V

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v14, 0x7f0a002b

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mExpirationMonth:Landroid/widget/Spinner;

    const v14, 0x7f0a002c

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mExpirationYear:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->getPreferenceFragment()Landroid/preference/PreferenceFragment;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v14, "guid"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;

    invoke-virtual {v14, v13}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->setGUID(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->getGUID()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;

    const-string v15, ""

    invoke-virtual {v14, v15}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->setGUID(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->addSpinnerAdapters()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserCreditCardEditorController;->addCardDataToEditFields()V

    return-object v12
.end method

.method public setDeleteMenuItem(Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-void
.end method

.method public setSaveMenuItem(Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;->mSaveMenuItem:Landroid/view/MenuItem;

    return-void
.end method
