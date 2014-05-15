.class Lcom/android/contacts/activities/ContactDetailActivity$5$1;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity$5;->onDetailsLoaded(Lcom/android/contacts/model/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

.field final synthetic val$result:Lcom/android/contacts/model/Contact;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity$5;Lcom/android/contacts/model/Contact;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->val$result:Lcom/android/contacts/model/Contact;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v2, v2, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v2, v2, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->val$result:Lcom/android/contacts/model/Contact;

    #setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v2, v3}, Lcom/android/contacts/activities/ContactDetailActivity;->access$002(Lcom/android/contacts/activities/ContactDetailActivity;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v2, v2, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->val$result:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v3

    #setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/android/contacts/activities/ContactDetailActivity;->access$102(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v2, v2, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->invalidateOptionsMenu()V

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v2, v2, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v3, v3, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v3}, Lcom/android/contacts/activities/ContactDetailActivity;->access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/model/Contact;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailLayoutController;->setContactData(Lcom/android/contacts/model/Contact;)V

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v2, v2, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->misAssistantMenuVisibility:Z
    invoke-static {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v2, v2, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;
    invoke-static {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$500(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v2, v2, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;
    invoke-static {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$500(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v3, v3, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v3}, Lcom/android/contacts/activities/ContactDetailActivity;->access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/model/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getStarred()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->setStarState(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v2, v2, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    const v3, 0x7f0800df

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/util/SmartClipUtils;

    invoke-direct {v1, v0}, Lcom/samsung/contacts/util/SmartClipUtils;-><init>(Landroid/view/View;)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$5$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$5;

    iget-object v3, v3, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/contacts/util/SmartClipUtils;->updateMetaTag(ILandroid/net/Uri;)V

    goto :goto_0
.end method
