.class final Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;
.super Ljava/lang/Object;
.source "InteractionGroupSelectionActivity.java"

# interfaces
.implements Lcom/samsung/contacts/listener/InteractionCommonPickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractionGroupMemberPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;-><init>(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onInteractionDoneButtonStateUpdated(Z)V
    .locals 0

    return-void
.end method

.method public onInteractionSelectionChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    #setter for: Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->access$102(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;I)I

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    #getter for: Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mSelectedCount:I
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->access$100(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z
    invoke-static {v1, v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->access$202(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    #getter for: Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mIsTablet:Z
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->access$300(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    #getter for: Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->access$500(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    #getter for: Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mSelectedCount:I
    invoke-static {v2}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->access$100(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)I

    move-result v2

    #calls: Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->actionbarTitle(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->access$400(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    #getter for: Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z
    invoke-static {v1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->access$200(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->setDoneButtonClickable(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMultiInfoSelectionAction(Ljava/util/HashMap;)V
    .locals 4
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

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "groupSend"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    invoke-virtual {v1, p1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->sendActionIntent(Ljava/util/HashMap;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    invoke-virtual {v1, p1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->returnPickerResult(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onSingleSelectionAction(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->returnPickPhoneResult(Landroid/net/Uri;)V

    return-void
.end method
