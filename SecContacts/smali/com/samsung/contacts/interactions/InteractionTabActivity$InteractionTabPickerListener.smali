.class public Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Lcom/samsung/contacts/listener/InteractionListPickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InteractionTabPickerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;


# direct methods
.method protected constructor <init>(Lcom/samsung/contacts/interactions/InteractionTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllDataDeleted()V
    .locals 0

    return-void
.end method

.method public onInteractionDoneButtonStateUpdated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->setButtonClickable(Z)V

    return-void
.end method

.method public onInteractionSelectionChanged(II)V
    .locals 2

    const-string v0, "InteractionTabActivity"

    const-string v1, "onInteractionSelectionChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    #setter for: Lcom/samsung/contacts/interactions/InteractionTabActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->access$302(Lcom/samsung/contacts/interactions/InteractionTabActivity;I)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    #setter for: Lcom/samsung/contacts/interactions/InteractionTabActivity;->mTotalCount:I
    invoke-static {v0, p2}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->access$402(Lcom/samsung/contacts/interactions/InteractionTabActivity;I)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->updateSelectionMenu()V

    return-void
.end method

.method public onMultiInfoSelectionAction(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->returnPickerResultHashMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public onMultiVcardSelectionAction(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    new-instance v1, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener$1;-><init>(Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->returnPickerResultHashMap(Ljava/util/HashMap;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sendContactsIntent(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    const-class v2, Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "file_name"

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    #calls: Lcom/samsung/contacts/interactions/InteractionTabActivity;->getVcardName(Ljava/util/HashMap;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->access$100(Lcom/samsung/contacts/interactions/InteractionTabActivity;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "path"

    sget-object v2, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "CALLING_ACTIVITY"

    sget-object v2, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mCallingActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    const-class v2, Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "CALLING_ACTIVITY"

    sget-object v2, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mCallingActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "file_name"

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    #calls: Lcom/samsung/contacts/interactions/InteractionTabActivity;->getVcardName(Ljava/util/HashMap;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->access$100(Lcom/samsung/contacts/interactions/InteractionTabActivity;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "path"

    sget-object v2, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->finish()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->access$200()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sendVcardByMultiUriIntent(Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->sendVcardIntent(Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public onRecentListAction(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->returnPickerResultIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onSingleSelectionAction(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    iget v0, v0, Lcom/samsung/contacts/interactions/InteractionTabActivity;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->returnPickerResultUri(Landroid/net/Uri;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->returnPickPhoneResult(Landroid/net/Uri;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->returnPickerResultUri(Landroid/net/Uri;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->returnPickerResultUri(Landroid/net/Uri;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xaa -> :sswitch_0
        0xbe -> :sswitch_0
    .end sparse-switch
.end method

.method public onSpeedDialSelectionAction(Landroid/net/Uri;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionTabActivity$InteractionTabPickerListener;->this$0:Lcom/samsung/contacts/interactions/InteractionTabActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->returnPickSpeedDialResult(Landroid/net/Uri;J)V

    return-void
.end method
