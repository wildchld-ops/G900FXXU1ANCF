.class public Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;
.super Landroid/app/Activity;
.source "PersonalPageTutorialAddActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private UpdateTutorialPage()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "PersonalPageTutorialAddActivity"

    const-string v3, "UpdateTutorialPage: REMOVE -> Finish "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_pp_tutorial_do_not_show_again"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v4}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->finish()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->UpdateTutorialPage()V

    return-void
.end method

.method private initViewsForAdd()V
    .locals 2

    const v1, 0x7f04014c

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->setContentView(I)V

    const v1, 0x7f0b0363

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity$1;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "PersonalPageTutorialAddActivity"

    const-string v1, "Tutorial create"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->initViewsForAdd()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PersonalPageTutorialAddActivity"

    const-string v1, "UpdateTutorialPage back: Add -> App "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;->finish()V

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
