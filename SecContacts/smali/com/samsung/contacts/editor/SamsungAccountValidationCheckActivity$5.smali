.class Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$5;
.super Ljava/lang/Object;
.source "SamsungAccountValidationCheckActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$5;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$5;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    const/4 v1, 0x0

    #calls: Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->access$000(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;I)V

    :cond_0
    return-void
.end method
