.class Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$1;
.super Ljava/lang/Object;
.source "SendNamecardsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$1;->this$0:Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$1;->this$0:Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;

    #calls: Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->setSendContactType(I)V
    invoke-static {v0, p2}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->access$000(Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment$1;->this$0:Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
