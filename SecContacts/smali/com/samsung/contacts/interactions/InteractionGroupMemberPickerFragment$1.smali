.class Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$1;
.super Ljava/lang/Object;
.source "InteractionGroupMemberPickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$1;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    iput-boolean p2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$1;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$1;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->access$102(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Z)Z

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$1;->val$flag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$1;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$1;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    #getter for: Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->access$200(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$1;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v2

    #calls: Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setDoneButton(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->access$300(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;II)V

    :cond_0
    return-void
.end method
