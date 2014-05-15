.class Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard$1;
.super Ljava/lang/Object;
.source "InteractionPickerContactsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;

.field final synthetic val$mSuccess:Z


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->this$1:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;

    iput-boolean p2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->val$mSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->this$1:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    #setter for: Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->access$702(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->this$1:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->access$800(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->this$1:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    #setter for: Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->access$802(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;Z)Z

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->val$mSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard$1;->this$1:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->onPickerResult()V

    :cond_0
    return-void
.end method
