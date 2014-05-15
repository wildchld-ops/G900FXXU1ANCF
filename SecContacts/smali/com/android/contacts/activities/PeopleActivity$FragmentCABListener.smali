.class final Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/samsung/contacts/listener/ContextualActionbarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FragmentCABListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateActionMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->configureSweepAction(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->hideActionbar()V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->misAssistantMenuVisibility:Z
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1000(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->removeAssistantMenuIcon(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->unregisterAssistantReceiver()V

    :cond_0
    return-void
.end method

.method public onDestroyActionMode()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->configureSweepAction(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->showActionbar()V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->misAssistantMenuVisibility:Z
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1000(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v2, v2, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/PeopleActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-boolean v4, v4, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon_ContactMain(ILcom/android/contacts/activities/ActionBarAdapter;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$FragmentCABListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->registerAssistantReceiver()V

    goto :goto_0
.end method
