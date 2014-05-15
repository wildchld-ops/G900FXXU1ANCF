.class Lcom/android/phone/PhotoRingScreen$4;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Lcom/android/phone/ICallMessageNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhotoRingScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/android/phone/CallMessageConstants$RequestType;Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f0907cf

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ICallMessageNetworkListener is called ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") on PhotoRingScreen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/phone/PhotoRingScreen;->access$400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/PhotoRingScreen$14;->$SwitchMap$com$android$phone$CallMessageConstants$RequestType:[I

    invoke-virtual {p1}, Lcom/android/phone/CallMessageConstants$RequestType;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    const-string v5, "Recieved etc type: not handled here"

    #calls: Lcom/android/phone/PhotoRingScreen;->englog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PhotoRingScreen;->access$800(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recieved GET_CONTENT_SPEC_CALL:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhotoRingScreen;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/android/phone/PhotoRingScreen;->access$400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/phone/PhotoringUtil;->setContentSpecFromBundle(Landroid/os/Bundle;)V

    sget-object v4, Lcom/android/phone/PhotoringUtil;->contentSpec:Lcom/android/phone/PhotoringUtil$ContentSpec;

    iget v4, v4, Lcom/android/phone/PhotoringUtil$ContentSpec;->video_editing_duration:I

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/phone/PhotoringUtil;->contentSpec:Lcom/android/phone/PhotoringUtil$ContentSpec;

    iget v4, v4, Lcom/android/phone/PhotoringUtil$ContentSpec;->video_editing_duration:I

    mul-int/lit16 v4, v4, 0x3e8

    sput v4, Lcom/android/phone/PhotoRingScreen;->VIDEO_DURATION_LIMIT:I

    goto :goto_0

    :cond_1
    const-string v4, "bundle not null"

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #setter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/phone/PhotoRingScreen;->access$202(Lcom/android/phone/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_2
    if-eqz p2, :cond_5

    const-string v4, "result"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recieved UPLOAD_CONTENT_CALL:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/phone/PhotoRingScreen;->access$500()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v4}, Lcom/android/phone/PhotoRingScreen;->access$400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    const-string v4, "0000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    const-string v5, "content_url"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/phone/PhotoRingScreen;->contentUrl:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/phone/PhotoRingScreen;->access$602(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->contentUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$600(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhotoringUtil;->setContentUrl(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$700(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhotoringUtil;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call setRealtimeServiceInfoCall message : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhotoRingScreen;->englog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PhotoRingScreen;->access$800(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$100(Lcom/android/phone/PhotoRingScreen;)Lcom/android/phone/PhotoRingMgr;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/PhotoRingScreen;->access$900(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/PhotoRingScreen;->access$1000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->contentUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$600(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/phone/PhotoRingMgr;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object v4, v3

    goto :goto_2

    :cond_4
    const-string v4, "0600"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    iget-object v5, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v5}, Lcom/android/phone/PhotoRingScreen;->access$1100(Lcom/android/phone/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    #calls: Lcom/android/phone/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v4, v8, v5}, Lcom/android/phone/PhotoRingScreen;->access$1200(Lcom/android/phone/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    if-nez p2, :cond_6

    move-object v4, v5

    :goto_3
    #calls: Lcom/android/phone/PhotoRingScreen;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v6, v4}, Lcom/android/phone/PhotoRingScreen;->access$1300(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "errMsg"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_2
    if-eqz p2, :cond_9

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recieved SET_REALTIME_SERVICEINFO_CALL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/PhotoRingScreen;->englog(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/phone/PhotoRingScreen;->access$800(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    const-string v4, "result"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0000"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #setter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/phone/PhotoRingScreen;->access$202(Lcom/android/phone/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_7
    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #calls: Lcom/android/phone/PhotoRingScreen;->placeCallIncludeMessage()V
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$1400(Lcom/android/phone/PhotoRingScreen;)V

    goto/16 :goto_0

    :cond_8
    const-string v4, "0600"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    iget-object v5, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v5}, Lcom/android/phone/PhotoRingScreen;->access$1100(Lcom/android/phone/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    #calls: Lcom/android/phone/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v4, v8, v5}, Lcom/android/phone/PhotoRingScreen;->access$1200(Lcom/android/phone/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    if-nez p2, :cond_a

    :goto_4
    #calls: Lcom/android/phone/PhotoRingScreen;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PhotoRingScreen;->access$1300(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v5, "errMsg"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :pswitch_3
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->needDownContent:Z
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$1500(Lcom/android/phone/PhotoRingScreen;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "dl_result"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/PhotoRingScreen;->needDownContent:Z
    invoke-static {v4, v5}, Lcom/android/phone/PhotoRingScreen;->access$1502(Lcom/android/phone/PhotoRingScreen;Z)Z

    if-eqz v2, :cond_c

    const-string v4, "dl_path"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    const-string v5, "/data/data/com.android.phone/files/photoring_data.png"

    #setter for: Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/phone/PhotoRingScreen;->access$002(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v5, 0x1

    #setter for: Lcom/android/phone/PhotoRingScreen;->mContentType:I
    invoke-static {v4, v5}, Lcom/android/phone/PhotoRingScreen;->access$1602(Lcom/android/phone/PhotoRingScreen;I)I

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #calls: Lcom/android/phone/PhotoRingScreen;->setImageToView()V
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$1700(Lcom/android/phone/PhotoRingScreen;)V

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$300(Lcom/android/phone/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "photoring_data.png"

    invoke-static {v4, v1, v5}, Lcom/android/phone/PhotoringUtil;->setVideoFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #setter for: Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/android/phone/PhotoRingScreen;->access$002(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v5, 0x2

    #setter for: Lcom/android/phone/PhotoRingScreen;->mContentType:I
    invoke-static {v4, v5}, Lcom/android/phone/PhotoRingScreen;->access$1602(Lcom/android/phone/PhotoRingScreen;I)I

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUriVideos : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PhotoRingScreen;->access$400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PhotoRingScreen;->access$400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    #calls: Lcom/android/phone/PhotoRingScreen;->setImageToView()V
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$1700(Lcom/android/phone/PhotoRingScreen;)V

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$4;->this$0:Lcom/android/phone/PhotoRingScreen;

    const v5, 0x7f0907d8

    new-instance v6, Lcom/android/phone/PhotoRingScreen$4$1;

    invoke-direct {v6, p0}, Lcom/android/phone/PhotoRingScreen$4$1;-><init>(Lcom/android/phone/PhotoRingScreen$4;)V

    #calls: Lcom/android/phone/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/PhotoRingScreen;->access$1200(Lcom/android/phone/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
