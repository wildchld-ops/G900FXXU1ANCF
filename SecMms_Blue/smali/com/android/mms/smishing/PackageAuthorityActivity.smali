.class public Lcom/android/mms/smishing/PackageAuthorityActivity;
.super Landroid/app/Activity;
.source "PackageAuthorityActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "Mms/PackageAuthorityActivity"


# instance fields
.field private mActionbar:Landroid/app/ActionBar;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mOnPackageListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSmsPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitchPref:Landroid/preference/SwitchPreference;

    new-instance v0, Lcom/android/mms/smishing/PackageAuthorityActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/smishing/PackageAuthorityActivity$2;-><init>(Lcom/android/mms/smishing/PackageAuthorityActivity;)V

    iput-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mOnPackageListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/smishing/PackageAuthorityActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/smishing/PackageAuthorityActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/smishing/PackageAuthorityActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSmsPackageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private updateEmptyScreen(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Mms/PackageAuthorityActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/mms/smishing/PackageAuthorityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/smishing/PackageAuthorityActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mActionbar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mActionbar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/android/mms/smishing/PackageAuthorityActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/smishing/PackageAuthorityUtils;->getSmsPackageList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSmsPackageList:Ljava/util/ArrayList;

    const v0, 0x7f0b024b

    invoke-virtual {p0, v0}, Lcom/android/mms/smishing/PackageAuthorityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/smishing/PackageAuthorityAdapter;

    iget-object v2, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSmsPackageList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/smishing/PackageAuthorityAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mOnPackageListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0b024c

    invoke-virtual {p0, v0}, Lcom/android/mms/smishing/PackageAuthorityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mEmptyView:Landroid/view/View;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/smishing/PackageAuthorityActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f000f

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0b034d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/mms/smishing/PackageAuthorityActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/smishing/PackageAuthorityActivity$1;-><init>(Lcom/android/mms/smishing/PackageAuthorityActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitch:Landroid/widget/Switch;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitch:Landroid/widget/Switch;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b034d
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/smishing/PackageAuthorityActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getAcessOption(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v1, "Mms/PackageAuthorityActivity"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/smishing/PackageAuthorityUtils;->getSmsPackageList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSmsPackageList:Ljava/util/ArrayList;

    const v1, 0x7f0b024b

    invoke-virtual {p0, v1}, Lcom/android/mms/smishing/PackageAuthorityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/mms/smishing/PackageAuthorityAdapter;

    iget-object v3, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSmsPackageList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/smishing/PackageAuthorityAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/smishing/PackageAuthorityActivity;->updateEmptyScreen(I)V

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getAcessOption(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method
