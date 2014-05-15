.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$1;
.super Landroid/os/Handler;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "mSeekHandler is called "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2200(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)I

    move-result v1

    #calls: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->movePlayBack(I)V
    invoke-static {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2300(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)V

    return-void
.end method
