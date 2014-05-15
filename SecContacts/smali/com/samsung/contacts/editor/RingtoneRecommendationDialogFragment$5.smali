.class Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$5;
.super Ljava/lang/Object;
.source "RingtoneRecommendationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$5;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$5;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    #getter for: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$100(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
