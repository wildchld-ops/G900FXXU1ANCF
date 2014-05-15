.class Lcom/android/contacts/activities/ContactDetailActivity$5$3;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity$5;->onRcsCapsLoaded(Lcom/samsung/contacts/model/rcs/RcsCaps;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

.field final synthetic val$result:Lcom/samsung/contacts/model/rcs/RcsCaps;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity$5;Lcom/samsung/contacts/model/rcs/RcsCaps;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$3;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$3;->val$result:Lcom/samsung/contacts/model/rcs/RcsCaps;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$3;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$3;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$3;->val$result:Lcom/samsung/contacts/model/rcs/RcsCaps;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->setRcsCapsData(Lcom/samsung/contacts/model/rcs/RcsCaps;)V

    goto :goto_0
.end method
