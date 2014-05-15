.class public Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutofillProfileListAdapter.java"


# instance fields
.field autofillProfileIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field autofillProfileItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public checkStates:[Z

.field private configChanged:Z

.field context:Landroid/content/Context;

.field public counterAutoFillForms:I

.field mAutoDeleteRow:Landroid/widget/LinearLayout;

.field mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field mOkButton:Landroid/view/View;

.field mTextView:Landroid/widget/TextView;

.field mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->configChanged:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->autofillProfileItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->autofillProfileIds:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->checkStates:[Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->autofillProfileItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->autofillProfileItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getProfileId(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->autofillProfileIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->context:Landroid/content/Context;

    const v1, 0x7f040015

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0a00bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->autofillProfileItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->getAutofillFormDeleteActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mOkButton:Landroid/view/View;

    :cond_1
    const v0, 0x7f0a00bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a00bb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mAutoDeleteRow:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->configChanged:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mAutoDeleteRow:Landroid/widget/LinearLayout;

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mAutoDeleteRow:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->checkStates:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-object p2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->configChanged:Z

    return-void
.end method
