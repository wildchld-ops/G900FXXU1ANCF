.class Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$2;
.super Ljava/lang/Object;
.source "EmergencyMessageContactCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$2;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$2;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuCancel:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->access$100(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$2;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->mMenuDone:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->access$200(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$2;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$2;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->hideInputMethod(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->access$300(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$2;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->finish()V

    return-void
.end method
