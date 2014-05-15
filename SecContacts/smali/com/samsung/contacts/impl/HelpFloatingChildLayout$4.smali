.class Lcom/samsung/contacts/impl/HelpFloatingChildLayout$4;
.super Ljava/lang/Object;
.source "HelpFloatingChildLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->setClickListeners(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$4;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT_FOR_HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$4;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$900(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getCreateExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "hidecreatelabel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "tutorial_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$4;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$900(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$4;->this$0:Lcom/samsung/contacts/impl/HelpFloatingChildLayout;

    #getter for: Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->access$900(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    return-void
.end method
