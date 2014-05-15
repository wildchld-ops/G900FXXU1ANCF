.class Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$1;
.super Ljava/lang/Object;
.source "MergeWithSamsungDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;

    #calls: Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->createAccountSelectionDialog()V
    invoke-static {v0}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->access$000(Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;)V

    return-void
.end method
