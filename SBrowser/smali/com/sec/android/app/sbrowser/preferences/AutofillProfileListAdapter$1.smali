.class Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;
.super Ljava/lang/Object;
.source "AutofillProfileListAdapter.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 6

    const v5, 0x7f0a02d4

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->checkStates:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-boolean v1, v1, v2

    if-eq v1, p2, :cond_0

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget v2, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->checkStates:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-boolean p2, v1, v2

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->getMenu()Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->getIsLongPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020203

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mOkButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->getSelectAll()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v1, v4}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->setSelectAllChecked(Z)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_2
    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget v2, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->getMenu()Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->counterAutoFillForms:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->getIsLongPressed()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020201

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mOkButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->getSelectAll()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v1, v3}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->setSelectAllChecked(Z)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteUI;->setTitleCount()V

    goto :goto_2
.end method
