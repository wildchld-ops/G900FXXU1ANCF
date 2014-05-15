.class Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;
.super Landroid/os/AsyncTask;
.source "InteractionGroupMemberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllTaskContacts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;-><init>(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    const/4 v3, 0x1

    #setter for: Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllTaskRunning:Z
    invoke-static {v2, v3}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->access$402(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Z)Z

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    #calls: Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->doSelectAllAction(Z)Z
    invoke-static {v2, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->access$500(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "InteractionGroupMemberPickerFragment"

    const-string v1, "SelectAll Task onPostExecute"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    #calls: Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V
    invoke-static {v0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->access$600(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    #setter for: Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllTaskRunning:Z
    invoke-static {v0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->access$402(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Z)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
