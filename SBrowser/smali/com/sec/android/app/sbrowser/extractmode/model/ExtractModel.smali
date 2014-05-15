.class public Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;
.super Ljava/lang/Object;
.source "ExtractModel.java"


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

.field private mExtractModeScrollY:I

.field private mFont:I

.field private mParentActivity:Landroid/app/Activity;

.field private mPrefsettings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mParentActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mFont:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mParentActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    return-void
.end method


# virtual methods
.method public getExtractModeFontValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mFont:I

    return v0
.end method

.method public getExtractModeScrollYPosition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mExtractModeScrollY:I

    return v0
.end method

.method public setFontAndScrollPosition(ILjava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mParentActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mPrefsettings:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mPrefsettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastVisitedExtractModeUrl"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "extractModeFontSize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "extractModeScrollValue"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public startExtracterPreference()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mParentActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mPrefsettings:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mPrefsettings:Landroid/content/SharedPreferences;

    const-string v6, "lastVisitedExtractModeUrl"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mPrefsettings:Landroid/content/SharedPreferences;

    const-string v6, "extractModeFontSize"

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->getExtractModeDefaultFont()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mFont:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mPrefsettings:Landroid/content/SharedPreferences;

    const-string v6, "extractModeScrollValue"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mExtractModeScrollY:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mController:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->getExtractModeDefaultFont()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mFont:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mPrefsettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "lastVisitedExtractModeUrl"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "extractModeFontSize"

    iget v6, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mFont:I

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "extractModeScrollValue"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iput v8, p0, Lcom/sec/android/app/sbrowser/extractmode/model/ExtractModel;->mExtractModeScrollY:I

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
