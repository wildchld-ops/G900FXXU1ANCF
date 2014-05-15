.class public Lcom/samsung/contacts/menu/EnhancedAssistantMenu;
.super Ljava/lang/Object;
.source "EnhancedAssistantMenu.java"


# instance fields
.field private isStarred:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

.field private mAssistantReceiver:Landroid/content/BroadcastReceiver;

.field private mContactDetailActivity:Lcom/android/contacts/activities/ContactDetailActivity;

.field private mContext:Landroid/content/Context;

.field private mLookupUri:Landroid/net/Uri;

.field private misAlreadyUpdateIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu$1;-><init>(Lcom/samsung/contacts/menu/EnhancedAssistantMenu;)V

    iput-object v0, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mAssistantReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mLookupUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iput-boolean v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->misAlreadyUpdateIcon:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->isStarred:Z

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/menu/EnhancedAssistantMenu;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mEditActionClick(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/menu/EnhancedAssistantMenu;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mDeleteActionClick(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/contacts/menu/EnhancedAssistantMenu;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mFavoriteDetailActionClick(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/contacts/menu/EnhancedAssistantMenu;)Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object v0
.end method

.method private mDeleteActionClick(Landroid/content/Context;)V
    .locals 3

    check-cast p1, Lcom/android/contacts/activities/ContactDetailActivity;

    iput-object p1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mContactDetailActivity:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v0, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mContactDetailActivity:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mLookupUri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    return-void
.end method

.method private mEditActionClick(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mLookupUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "finishActivityOnSaveCompleted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private mFavoriteDetailActionClick(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mLookupUri:Landroid/net/Uri;

    iget-boolean v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->isStarred:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {p1, v2, v1}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ActivityName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IconName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "register"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public registerAssistantReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.assistant.main.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.assistant.detail.delete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.assistant.detail.edit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.assistant.detail.favorite"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.assistant.main.favorite"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.assistant.main.log"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.assistant.main.keypad"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mAssistantReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeAssistantMenuIcon(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->misAlreadyUpdateIcon:Z

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->misAlreadyUpdateIcon:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ActivityName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "register"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setStarState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->isStarred:Z

    return-void
.end method

.method public unregisterAssistantReceiver()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mAssistantReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateAssistantMenuIcon_ContactDetail(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->misAlreadyUpdateIcon:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->misAlreadyUpdateIcon:Z

    iput-object p2, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mLookupUri:Landroid/net/Uri;

    const-string v0, "Favourites;Edit;Delete"

    invoke-direct {p0, p1, v0}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateAssistantMenuIcon_ContactMain(ILcom/android/contacts/activities/ActionBarAdapter;Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->misAlreadyUpdateIcon:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->misAlreadyUpdateIcon:Z

    iput-object p2, p0, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVZCloud()Z

    move-result v0

    if-eqz p4, :cond_5

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne p1, v1, :cond_1

    const-string v1, "Keypad;Contacts;"

    invoke-direct {p0, p3, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne p1, v1, :cond_3

    if-eqz v0, :cond_2

    const-string v1, "Keypad;Recent;"

    invoke-direct {p0, p3, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "Keypad;Logs;"

    invoke-direct {p0, p3, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_4

    const-string v1, "Recent;Contacts;"

    invoke-direct {p0, p3, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "Logs;Contacts;"

    invoke-direct {p0, p3, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne p1, v1, :cond_6

    const-string v1, "Keypad;Favourites;Contacts;"

    invoke-direct {p0, p3, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->FAVORITES:I

    if-ne p1, v1, :cond_8

    if-eqz v0, :cond_7

    const-string v1, "Keypad;Recent;Contacts;"

    invoke-direct {p0, p3, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v1, "Keypad;Logs;Contacts;"

    invoke-direct {p0, p3, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne p1, v1, :cond_a

    if-eqz v0, :cond_9

    const-string v1, "Keypad;Recent;Favourites;"

    invoke-direct {p0, p3, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v1, "Keypad;Logs;Favourites;"

    invoke-direct {p0, p3, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_b

    const-string v1, "Recent;Favourites;Contacts;"

    invoke-direct {p0, p3, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string v1, "Logs;Favourites;Contacts;"

    invoke-direct {p0, p3, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
