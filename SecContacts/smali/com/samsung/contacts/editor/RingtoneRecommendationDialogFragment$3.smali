.class Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$3;
.super Ljava/lang/Object;
.source "RingtoneRecommendationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$3;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$3;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    #getter for: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mListener:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;
    invoke-static {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$300(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$3;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    #getter for: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mListener:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;
    invoke-static {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$300(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;->onCanceled()V

    :cond_0
    return-void
.end method
