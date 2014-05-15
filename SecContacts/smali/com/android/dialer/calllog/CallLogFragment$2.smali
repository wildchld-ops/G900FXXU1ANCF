.class Lcom/android/dialer/calllog/CallLogFragment$2;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 2

    const-string v0, "CallLogFragment"

    const-string v1, "mCoverStateListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$000(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$000(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getCurrentTab()I

    move-result v0

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$100(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/app/KeyguardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$100(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CallLogFragment"

    const-string v1, "SWITCH_STATE_COVER_OPEN Update Missed Call"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateCoverNotification()V

    :cond_0
    return-void
.end method
