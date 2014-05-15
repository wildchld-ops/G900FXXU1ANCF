.class Lcom/android/mms/ui/ComposeMessageFragment$9;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12

    const/4 v11, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    const/16 v9, 0x52

    if-ne p2, v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v10}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->finishWB(Landroid/widget/EditText;)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableEnterKeyInput()Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x42

    if-ne p2, v9, :cond_3

    const-string v7, "Mms/ComposeMessageFragment"

    const-string v9, "Enter Key is Disable Function in Messaging"

    invoke-static {v7, v9}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    goto :goto_0

    :cond_3
    const/16 v9, 0x15

    if-ne p2, v9, :cond_a

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v10

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v9, v2, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v9

    if-ne v9, v8, :cond_6

    move v4, v8

    :goto_1
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2}, Landroid/widget/EditText;->hasSelection()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v4, :cond_5

    :cond_4
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v10

    if-ne v9, v10, :cond_7

    invoke-virtual {v2}, Landroid/widget/EditText;->hasSelection()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-nez v9, :cond_7

    if-nez v4, :cond_7

    :cond_5
    move v6, v8

    :goto_2
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_8

    move v7, v8

    goto/16 :goto_0

    :cond_6
    move v4, v7

    goto :goto_1

    :cond_7
    move v6, v7

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_a

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Button;->requestFocus()Z

    :cond_9
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    const/16 v10, 0x11

    invoke-static {v10}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v8

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v9, "Mms/ComposeMessageFragment"

    const-string v10, "key event not from EditText"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/16 v9, 0x16

    if-eq p2, v9, :cond_b

    const/16 v9, 0x3d

    if-ne p2, v9, :cond_12

    :cond_b
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    if-eqz v9, :cond_12

    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v10

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v9, v2, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v9

    if-ne v9, v8, :cond_f

    move v4, v8

    :goto_3
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v10

    if-ne v9, v10, :cond_c

    invoke-virtual {v2}, Landroid/widget/EditText;->hasSelection()Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-nez v9, :cond_c

    if-nez v4, :cond_d

    :cond_c
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {v2}, Landroid/widget/EditText;->hasSelection()Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-nez v9, :cond_10

    if-nez v4, :cond_10

    :cond_d
    move v6, v8

    :goto_4
    if-eqz v6, :cond_13

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->requestFocus()Z

    :cond_e
    :goto_5
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v10

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v9, v2, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I

    move-result v9

    if-ne v9, v11, :cond_14

    move v7, v8

    goto/16 :goto_0

    :cond_f
    move v4, v7

    goto :goto_3

    :cond_10
    move v6, v7

    goto :goto_4

    :cond_11
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Button;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v3

    const-string v9, "Mms/ComposeMessageFragment"

    const-string v10, "key event not from EditText"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/16 v9, 0x14

    if-ne p2, v9, :cond_15

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_15

    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-eq v1, v11, :cond_15

    if-eqz v5, :cond_15

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/EditText;->getLineCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_15

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    const/16 v10, 0x21

    invoke-static {v10}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move v7, v8

    goto/16 :goto_0

    :cond_13
    :try_start_3
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v10

    if-ne v9, v10, :cond_e

    invoke-virtual {v2}, Landroid/widget/EditText;->hasSelection()Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto/16 :goto_5

    :cond_14
    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v10

    if-ne v9, v10, :cond_12

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v10

    if-ne v9, v10, :cond_12

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v10

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEditorLineDirection(Landroid/widget/EditText;I)I
    invoke-static {v9, v2, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;I)I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v9

    if-ne v9, v8, :cond_12

    move v7, v8

    goto/16 :goto_0

    :catch_2
    move-exception v3

    const-string v9, "Mms/ComposeMessageFragment"

    const-string v10, "key event not from EditText"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const/16 v9, 0x13

    if-ne p2, v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getVisibility()I

    move-result v9

    if-nez v9, :cond_16

    :try_start_4
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-eq v1, v11, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    if-ge v9, v8, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    const/16 v10, 0x21

    invoke-static {v10}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    move v7, v8

    goto/16 :goto_0

    :catch_3
    move-exception v3

    const-string v8, "Mms/ComposeMessageFragment"

    const-string v9, "key event not from EditText"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_17

    :try_start_5
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-eq v1, v11, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    if-ge v9, v8, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    const/16 v10, 0x21

    invoke-static {v10}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    move v7, v8

    goto/16 :goto_0

    :catch_4
    move-exception v3

    const-string v8, "Mms/ComposeMessageFragment"

    const-string v9, "key event not from EditText"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v9}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    :try_start_6
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v9

    if-nez v9, :cond_0

    if-eq v1, v11, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    if-ge v9, v8, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v9}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    const/16 v10, 0x21

    invoke-static {v10}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->playSoundEffect(I)V
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_5

    move v7, v8

    goto/16 :goto_0

    :catch_5
    move-exception v3

    const-string v8, "Mms/ComposeMessageFragment"

    const-string v9, "key event not from EditText"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
