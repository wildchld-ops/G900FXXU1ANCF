.class Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/util/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TTSListener"
.end annotation


# instance fields
.field mLocale:Ljava/util/Locale;

.field final synthetic this$0:Lcom/samsung/dialer/util/DirectCallingManager;


# virtual methods
.method public onInit(I)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onInit...TTS : "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1100(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/samsung/dialer/util/DirectCallingManager;->access$2500(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/dialer/util/DirectCallingManager;->IsTTSInitiated:Z
    invoke-static {v0, v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$2602(Lcom/samsung/dialer/util/DirectCallingManager;Z)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInit...TTS - locale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLanguageAvailable() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2}, Lcom/samsung/dialer/util/DirectCallingManager;->access$2500(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/samsung/dialer/util/DirectCallingManager;->access$2500(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/samsung/dialer/util/DirectCallingManager;->access$2500(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/samsung/dialer/util/DirectCallingManager;->access$2500(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/samsung/dialer/util/DirectCallingManager;->access$2500(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :goto_1
    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #setter for: Lcom/samsung/dialer/util/DirectCallingManager;->IsTTSInitiated:Z
    invoke-static {v0, v4}, Lcom/samsung/dialer/util/DirectCallingManager;->access$2602(Lcom/samsung/dialer/util/DirectCallingManager;Z)Z

    goto :goto_0

    :cond_2
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onInit...TTS - set Locale.US , maybe not configured"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/samsung/dialer/util/DirectCallingManager;->access$2500(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_1
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onUtteranceCompleted...TTS : "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/dialer/util/DirectCallingManager;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/dialer/util/DirectCallingManager;->access$2702(Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1700(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
