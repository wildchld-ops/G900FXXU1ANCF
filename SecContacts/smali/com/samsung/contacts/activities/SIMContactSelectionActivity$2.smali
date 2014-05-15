.class Lcom/samsung/contacts/activities/SIMContactSelectionActivity$2;
.super Ljava/lang/Object;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$2;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$2;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->simcopycallfromAAB:Z
    invoke-static {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1000(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$2;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->setResult(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$2;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->finish()V

    return-void
.end method
