.class Lcom/samsung/contacts/impl/HelpContactSelectionActivity$HelpContactPickerActionListener;
.super Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
.source "HelpContactSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/impl/HelpContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpContactPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/impl/HelpContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/impl/HelpContactSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity$HelpContactPickerActionListener;->this$0:Lcom/samsung/contacts/impl/HelpContactSelectionActivity;

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/impl/HelpContactSelectionActivity;Lcom/samsung/contacts/impl/HelpContactSelectionActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/impl/HelpContactSelectionActivity$HelpContactPickerActionListener;-><init>(Lcom/samsung/contacts/impl/HelpContactSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onEditContactAction(Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity$HelpContactPickerActionListener;->this$0:Lcom/samsung/contacts/impl/HelpContactSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/impl/HelpContactSelectionActivity$HelpContactPickerActionListener;->launchAddToContactDialog(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity$HelpContactPickerActionListener;->this$0:Lcom/samsung/contacts/impl/HelpContactSelectionActivity;

    const-class v3, Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity$HelpContactPickerActionListener;->this$0:Lcom/samsung/contacts/impl/HelpContactSelectionActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT_FOR_HELP"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "tutorial_mode_from_dialer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity$HelpContactPickerActionListener;->this$0:Lcom/samsung/contacts/impl/HelpContactSelectionActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tutorial_mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactSelectionActivity$HelpContactPickerActionListener;->this$0:Lcom/samsung/contacts/impl/HelpContactSelectionActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/impl/HelpContactSelectionActivity;->startActivityAndForwardResult(Landroid/content/Intent;)V

    goto :goto_0
.end method
