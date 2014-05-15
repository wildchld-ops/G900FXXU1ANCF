.class public Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;
.super Ljava/lang/Object;
.source "HomePagePreferenceUI.java"


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;)Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public getAlertDialog()Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public promptForHomepage(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x1

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x1200

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    new-array v1, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x800

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/HomePagePreferenceController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$2;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;Landroid/preference/ListPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;Landroid/preference/ListPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c006e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI$3;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/HomePagePreferenceUI;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
