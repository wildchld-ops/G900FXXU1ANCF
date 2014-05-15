.class public Lcom/samsung/dialer/interaction/InteractionRecentActivity;
.super Landroid/app/Activity;
.source "InteractionRecentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/interaction/InteractionRecentActivity$InteractionRecentListener;
    }
.end annotation


# instance fields
.field private fromCallSettings:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectedCount:I

.field private mSelectedTextView:Landroid/widget/TextView;

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->fromCallSettings:Z

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/dialer/interaction/InteractionRecentActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/dialer/interaction/InteractionRecentActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mTotalCount:I

    return p1
.end method


# virtual methods
.method public actionbarsetup()Landroid/app/ActionBar;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    return-object v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2

    const-string v0, "InteractionRecentActivity"

    const-string v1, "onAttachFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iput-object p1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    new-instance v1, Lcom/samsung/dialer/interaction/InteractionRecentActivity$InteractionRecentListener;

    invoke-direct {v1, p0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity$InteractionRecentListener;-><init>(Lcom/samsung/dialer/interaction/InteractionRecentActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->setOnRecentListListener(Lcom/samsung/dialer/interaction/OnRecentListListener;)V

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->setContactsRequest(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0300c7

    invoke-virtual {p0, v2}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "OPTION"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->fromCallSettings:Z

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->actionbarsetup()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f08016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/dialer/interaction/InteractionRecentActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity$1;-><init>(Lcom/samsung/dialer/interaction/InteractionRecentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mSelectedTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->updateSelectionMenu()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const-string v1, "InteractionRecentActivity"

    const-string v2, "onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->fromCallSettings:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f080172

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f080171

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mMenuCancel:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;

    const v2, 0x7f0e0163

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mMenuCancel:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-virtual {v2}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->checkUpdateAllCheckState()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->finish()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-virtual {v1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->sendNum()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080171 -> :sswitch_1
        0x7f080172 -> :sswitch_2
    .end sparse-switch
.end method

.method protected setButtonClickable(Z)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const v1, 0x7f080172

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public updateSelectionMenu()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e027b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v3, "InteractionRecentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===> mSelectedCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mSelectedCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTotalCount :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mTotalCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mSelectedTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->fromCallSettings:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mSelectedTextView:Landroid/widget/TextView;

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mSelectedCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mTotalCount:I

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mSelectedCount:I

    iget-object v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mFragment:Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    iget v5, v5, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mSelectedCount:I

    iget v5, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mTotalCount:I

    if-ne v4, v5, :cond_3

    :cond_1
    :goto_0
    invoke-virtual {v3, v1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->updateSelectAllState(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/dialer/interaction/InteractionRecentActivity;->mSelectedTextView:Landroid/widget/TextView;

    const v2, 0x7f0e0279

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
