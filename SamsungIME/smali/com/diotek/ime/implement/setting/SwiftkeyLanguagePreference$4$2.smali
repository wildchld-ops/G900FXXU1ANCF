.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->onComplete(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;Z)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iput-boolean p2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v5

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getMetadata()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v5, "download-state"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-ne v0, v9, :cond_1

    iget-boolean v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->val$success:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #calls: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->checkVaildVOLP()Z
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "SamsungIME"

    const-string v6, "SwiftkeyLanguagePreference.VOlistener : Complete to Download VO langaue"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$900(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloadInProgress()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v5

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v5

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$900(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "download-vocur"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-vomax"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-skmax"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-skcur"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-state"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->rebuildLanguageList()V

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #calls: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V
    invoke-static {v5, v9}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V

    const v4, 0x7f0d01cf

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v3

    const-string v5, "RELOAD_LANGUAGEPACK"

    invoke-interface {v3, v5, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->notifyVODBListUpdated()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$900(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #calls: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadSwiftkeyLanguage()V
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    goto :goto_1

    :cond_3
    const-string v5, "SamsungIME"

    const-string v6, "SwiftkeyLanguagePreference.VOlistener : Fail to Download VO langaue"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$900(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "download-vocur"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-vomax"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-skmax"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-skcur"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "download-state"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #calls: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V
    invoke-static {v5, v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V

    const v4, 0x7f0d01d1

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #calls: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadingState(Z)V
    invoke-static {v5, v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)V

    goto/16 :goto_2

    :catch_0
    move-exception v5

    goto :goto_3

    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method
