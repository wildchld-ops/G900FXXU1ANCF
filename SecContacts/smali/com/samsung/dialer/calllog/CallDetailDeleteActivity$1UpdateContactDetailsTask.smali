.class Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->updateData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateContactDetailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

.field final synthetic val$callUris:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    iput-object p2, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    iget-object v2, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    #calls: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;
    invoke-static {v2, v3}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$100(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;Ljava/lang/String;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->details:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    iget-object v1, v1, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->details:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "CallDetailDeleteActivity"

    const-string v2, "invalid URI starting call details"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V

    return-void
.end method

.method public onPostExecute([Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V
    .locals 13

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    aget-object v0, p1, v2

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    const v1, 0x7f0e0209

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    aget-object v8, p1, v2

    iget-object v0, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    iget-object v1, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$202(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v7, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->contactUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$300(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$200(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v6

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$300(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$200(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v10

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$300(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$200(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v7, :cond_4

    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v11, v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$400(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v12, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    new-instance v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    iget-object v2, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    iget-object v2, v2, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mInflater:Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;ZLandroid/view/View;)V

    #setter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v12, v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$402(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$500(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$400(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$500(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    iget-object v1, v1, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v2}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$400(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v2

    #calls: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->setDoneButton(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$600(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;II)V

    goto/16 :goto_0

    :cond_4
    if-eqz v10, :cond_5

    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    if-eqz v9, :cond_6

    const/4 v11, 0x0

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_7

    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "vnd.android.cursor.item/contact"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "phone"

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$200(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    goto :goto_1
.end method
