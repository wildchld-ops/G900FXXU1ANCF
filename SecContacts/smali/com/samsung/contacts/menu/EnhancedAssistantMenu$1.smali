.class Lcom/samsung/contacts/menu/EnhancedAssistantMenu$1;
.super Landroid/content/BroadcastReceiver;
.source "EnhancedAssistantMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/menu/EnhancedAssistantMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/menu/EnhancedAssistantMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu$1;->this$0:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.assistant.detail.edit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu$1;->this$0:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    #calls: Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mEditActionClick(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->access$000(Lcom/samsung/contacts/menu/EnhancedAssistantMenu;Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.assistant.detail.delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu$1;->this$0:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    #calls: Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mDeleteActionClick(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->access$100(Lcom/samsung/contacts/menu/EnhancedAssistantMenu;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.assistant.detail.favorite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu$1;->this$0:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    #calls: Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mFavoriteDetailActionClick(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->access$200(Lcom/samsung/contacts/menu/EnhancedAssistantMenu;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.assistant.main.favorite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu$1;->this$0:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    #getter for: Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->access$300(Lcom/samsung/contacts/menu/EnhancedAssistantMenu;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/activities/ContactsTab;->FAVORITES:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    goto :goto_0

    :cond_4
    const-string v1, "android.intent.assistant.main.log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu$1;->this$0:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    #getter for: Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->access$300(Lcom/samsung/contacts/menu/EnhancedAssistantMenu;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    goto :goto_0

    :cond_5
    const-string v1, "android.intent.assistant.main.contact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu$1;->this$0:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    #getter for: Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->access$300(Lcom/samsung/contacts/menu/EnhancedAssistantMenu;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    goto :goto_0

    :cond_6
    const-string v1, "android.intent.assistant.main.keypad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu$1;->this$0:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    #getter for: Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->access$300(Lcom/samsung/contacts/menu/EnhancedAssistantMenu;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    sget v2, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    goto :goto_0
.end method
