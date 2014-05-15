.class Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->onLoadStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 5

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloading:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3200(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloadingsec:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3300(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->myTTS:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3400(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0152

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloading:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3200(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloadingsec:Z
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3302(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloading:Z
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3202(Lcom/sec/android/app/sbrowser/common/Tab;Z)Z

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/Tab$TabChromeWebContentsDelegateAndroid;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->ttspageloading:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$3200(Lcom/sec/android/app/sbrowser/common/Tab;)Z

    move-result v0

    goto :goto_0
.end method
