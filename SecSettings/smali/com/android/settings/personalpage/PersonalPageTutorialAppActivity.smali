.class public Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;
.super Landroid/app/Activity;
.source "PersonalPageTutorialAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;
    }
.end annotation


# instance fields
.field mPKGAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field final pkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->pkgList:Ljava/util/ArrayList;

    return-void
.end method

.method private UpdateTutorialPage()V
    .locals 2

    const-string v0, "PersonalPageTutorialAppActivity"

    const-string v1, "UpdateTutorialPage: App -> Add "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->finish()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->UpdateTutorialPage()V

    return-void
.end method

.method private initViewsForAPP()V
    .locals 17

    const v1, 0x7f04014d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->setContentView(I)V

    const v1, 0x7f0b0363

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$1;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)V

    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v1, 0x7f0a00bf

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object v7, v8

    array-length v11, v7

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v16, v7, v10

    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->pkgList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catch_0
    move-exception v9

    const-string v1, "PersonalPageTutorialAppActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;

    const v4, 0x7f040148

    const v5, 0x7f0b0358

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->pkgList:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;Landroid/content/Context;IILjava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPKGAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x102000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPKGAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v12, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "PersonalPageTutorialAppActivity"

    const-string v1, "PersonalPage Tutorial create"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->initViewsForAPP()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PersonalPageTutorialAppActivity"

    const-string v1, "UpdateTutorialPage back: App -> Welcome "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/personalpage/PersonalPageTutorial;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
