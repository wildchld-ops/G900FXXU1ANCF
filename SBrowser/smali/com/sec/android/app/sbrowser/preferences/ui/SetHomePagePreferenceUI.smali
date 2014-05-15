.class public Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;
.super Ljava/lang/Object;
.source "SetHomePagePreferenceUI.java"


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

.field mDialog:Landroid/app/AlertDialog;

.field mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;)Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    return-object v0
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public promptForHomepage(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/16 v10, 0x800

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    const/high16 v1, 0x1200

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    new-array v1, v8, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v7, 0x6

    invoke-virtual {v0, v1, v7}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v7, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$2;

    invoke-direct {v7, p0, p1}, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v7, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$1;

    invoke-direct {v7, p0, p1}, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mDialog:Landroid/app/AlertDialog;

    new-array v6, v8, [Landroid/text/InputFilter;

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, v6, v9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$3;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI$4;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SetHomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
