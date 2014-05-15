.class Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment$1;
.super Ljava/lang/Object;
.source "AddToRejectListTipsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;->access$000(Lcom/samsung/contacts/interactions/AddToRejectListTipsDialogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    return-void
.end method
