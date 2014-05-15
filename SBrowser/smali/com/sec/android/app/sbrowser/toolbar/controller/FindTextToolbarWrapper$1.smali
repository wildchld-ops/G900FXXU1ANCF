.class Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$1;
.super Ljava/lang/Object;
.source "FindTextToolbarWrapper.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->onFindResultReceived(Lorg/chromium/chrome/browser/FindNotificationDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

.field final synthetic val$findCountTTS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$1;->val$findCountTTS:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mTTS:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->access$000(Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$1;->val$findCountTTS:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method
