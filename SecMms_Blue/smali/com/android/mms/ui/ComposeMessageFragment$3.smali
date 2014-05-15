.class Lcom/android/mms/ui/ComposeMessageFragment$3;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    iget v9, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mFontSizeIndex:I
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v11

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isEditingMode(I)Z
    invoke-static {v10, v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;I)Z

    move-result v1

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    if-eqz v10, :cond_7

    const/16 v10, 0xa

    if-ne v7, v10, :cond_1

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    :cond_1
    const/16 v10, 0xb

    if-ne v7, v10, :cond_2

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    :cond_2
    const/16 v10, 0xc

    if-ne v7, v10, :cond_3

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    :cond_3
    const/16 v10, 0xd

    if-ne v7, v10, :cond_4

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->removeText()Z

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0xe

    if-ne v7, v10, :cond_7

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->removeLocation()Z

    :cond_5
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    :cond_6
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_1
    const/4 v10, 0x1

    if-lt v2, v10, :cond_7

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_7
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    if-nez v10, :cond_9

    const/16 v8, 0x20

    :goto_2
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10, v11, v8}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    const/16 v10, 0x20

    if-ne v8, v10, :cond_8

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    :cond_8
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    goto/16 :goto_0

    :cond_9
    const/16 v10, 0xa

    if-eq v7, v10, :cond_a

    const/16 v10, 0xb

    if-ne v7, v10, :cond_b

    :cond_a
    const/16 v8, 0x1f

    goto :goto_2

    :cond_b
    const/16 v10, 0xc

    if-ne v7, v10, :cond_c

    const/16 v8, 0x21

    goto :goto_2

    :cond_c
    const/16 v8, 0x1e

    goto :goto_2

    :sswitch_2
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10, v5}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v12, 0x22

    invoke-virtual {v10, v11, v12}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    :cond_d
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10, v5}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v12, 0x23

    invoke-virtual {v10, v11, v12}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    :cond_e
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v11}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v11

    iput-boolean v11, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v10}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    :try_start_0
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v11}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v11

    invoke-static {v10, v11, v5, v7, v1}, Lcom/android/mms/ui/MessageUtils;->viewMediaContents(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v10, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v10, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationComposer;->closeSearchView()V

    goto/16 :goto_0

    :cond_f
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v12, v12, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v10, v11, v12}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :goto_3
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V

    :cond_10
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v10}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    goto/16 :goto_0

    :cond_11
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v12, v12, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v10, v11, v12}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_3

    :sswitch_7
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_8
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_9
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto/16 :goto_0

    :cond_12
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    :cond_13
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_a
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v10}, Lcom/android/mms/ui/MmsRichContainer;->requestFocus()Z

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v10}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x28 -> :sswitch_6
        0x32 -> :sswitch_0
        0x33 -> :sswitch_7
        0x34 -> :sswitch_9
        0x35 -> :sswitch_8
        0x3c -> :sswitch_a
    .end sparse-switch
.end method
