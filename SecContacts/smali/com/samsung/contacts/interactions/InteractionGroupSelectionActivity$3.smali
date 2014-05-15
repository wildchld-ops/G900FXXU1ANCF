.class Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "InteractionGroupSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$3;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.android.launcher.action.EASY_MODE_CHANGE_CONTACTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->isEasyModeSettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->isEasyModeContacts(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "InteractionGroupSelectionActivity"

    const-string v1, "Launcher mode is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$3;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->finish()V

    :cond_2
    return-void
.end method
