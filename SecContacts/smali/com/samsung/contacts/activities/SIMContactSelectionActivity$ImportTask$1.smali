.class Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask$1;
.super Ljava/lang/Object;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;->onPreExecute(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

.field final synthetic val$target:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask$1;->this$1:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iput-object p2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask$1;->val$target:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask$1;->this$1:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iget-object v1, v1, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #setter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z
    invoke-static {v1, v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1102(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask$1;->val$target:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->onBackPressed()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x52

    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/16 v1, 0x54

    if-eq p2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
