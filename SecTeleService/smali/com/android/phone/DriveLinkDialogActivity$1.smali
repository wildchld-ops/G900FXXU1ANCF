.class Lcom/android/phone/DriveLinkDialogActivity$1;
.super Landroid/os/Handler;
.source "DriveLinkDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DriveLinkDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DriveLinkDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/DriveLinkDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    iget-object v0, v0, Lcom/android/phone/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    iget-object v0, v0, Lcom/android/phone/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    iput-object v8, v0, Lcom/android/phone/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    invoke-virtual {v0}, Lcom/android/phone/DriveLinkDialogActivity;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    const v5, 0x7f0909d8

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    #getter for: Lcom/android/phone/DriveLinkDialogActivity;->mIsNumberSaved:Z
    invoke-static {v0}, Lcom/android/phone/DriveLinkDialogActivity;->access$000(Lcom/android/phone/DriveLinkDialogActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    #getter for: Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/DriveLinkDialogActivity;->access$100(Lcom/android/phone/DriveLinkDialogActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DriveLinkDialogActivity;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/DriveLinkDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    #getter for: Lcom/android/phone/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;
    invoke-static {v0}, Lcom/android/phone/DriveLinkDialogActivity;->access$200(Lcom/android/phone/DriveLinkDialogActivity;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    #setter for: Lcom/android/phone/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;
    invoke-static {v0, v8}, Lcom/android/phone/DriveLinkDialogActivity;->access$202(Lcom/android/phone/DriveLinkDialogActivity;Ljava/util/Locale;)Ljava/util/Locale;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    #getter for: Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/DriveLinkDialogActivity;->access$100(Lcom/android/phone/DriveLinkDialogActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
