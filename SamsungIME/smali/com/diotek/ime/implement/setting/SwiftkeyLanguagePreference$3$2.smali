.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->onComplete(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;Z)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iput-boolean p2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->val$success:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME"

    const-string v4, "SwiftkeyLanguagePreference.VOlistener : Complete to Download Swiftkey langaue"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "download-vocur"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-vomax"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-skmax"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-skcur"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-state"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v3, v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v3, v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsDownloaded:Z
    invoke-static {v3, v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$702(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)Z

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v3, v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->rebuildLanguageList()V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v3, v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #calls: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V
    invoke-static {v3, v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V

    const v2, 0x7f0d01cf

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v3, v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v1

    const-string v3, "RELOAD_LANGUAGEPACK"

    invoke-interface {v1, v3, v7}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_0
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SwiftkeyLanguagePreference.VOlistener : Fail to Download Swiftkey langaue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v5

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "download-vocur"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-vomax"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-skmax"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-skcur"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-state"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v3, v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v3, v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #calls: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V
    invoke-static {v3, v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V

    const v2, 0x7f0d01d1

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v3, v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v3, v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    #calls: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadingState(Z)V
    invoke-static {v3, v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)V

    goto/16 :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method
