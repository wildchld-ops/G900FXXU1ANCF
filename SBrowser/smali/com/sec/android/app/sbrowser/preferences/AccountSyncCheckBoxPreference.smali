.class public Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "AccountSyncCheckBoxPreference.java"


# instance fields
.field private checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private context:Landroid/content/Context;

.field private pref:Ljava/lang/String;

.field private rotateAnim:Landroid/view/animation/Animation;

.field private syncImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/R$styleable;->AccountSyncCheckBoxPreference:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->pref:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->context:Landroid/content/Context;

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->rotateAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->rotateAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->rotateAnim:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->rotateAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private initialisePreferences(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->context:Landroid/content/Context;

    const-string v3, "com.sec.android.app.sbrowser_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->pref:Ljava/lang/String;

    const-string v3, "sync_bookmarks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "sync_bookmarks"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSyncImageVisibilty(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->pref:Ljava/lang/String;

    const-string v3, "sync_open_pages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "sync_open_pages"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSyncImageVisibilty(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->pref:Ljava/lang/String;

    const-string v3, "sync_saved_pages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "sync_saved_pages"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->setSyncImageVisibilty(Z)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a01a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    const v0, 0x7f0a01aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->initialisePreferences(Landroid/view/View;)V

    return-void
.end method

.method public setSyncImageVisibilty(Z)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->context:Landroid/content/Context;

    const-string v3, "current_sync"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "current_sync"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Accounts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSyncImageVisibilty() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->pref:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "has current sync = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->pref:Ljava/lang/String;

    const-string v3, "sync_open_pages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "sync_open_pages"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->rotateAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->pref:Ljava/lang/String;

    const-string v3, "sync_bookmarks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "sync_bookmarks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->rotateAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->pref:Ljava/lang/String;

    const-string v3, "sync_saved_pages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "sync_saved_pages"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->rotateAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_4
    const-string v2, "sync_bookmarks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "sync_saved_pages"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const-string v2, "sync_open_pages"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    const-string v2, "sync_saved_pages"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_8
    const-string v2, "sync_open_pages"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "sync_bookmarks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateSyncImageVisibility(Z)V
    .locals 3

    const-string v0, "Accounts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSyncImageVisibility() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->rotateAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountSyncCheckBoxPreference;->syncImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
