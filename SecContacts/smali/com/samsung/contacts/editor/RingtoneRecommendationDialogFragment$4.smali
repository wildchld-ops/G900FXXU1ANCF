.class Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$4;
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

    iput-object p1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$4;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$4;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    #getter for: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mSelectedPosition:I
    invoke-static {v1}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$000(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$4;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    #getter for: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$400(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$4;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    #getter for: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mListener:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;
    invoke-static {v1}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$300(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;->onSelected(Landroid/net/Uri;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$4;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    #getter for: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$400(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "highlight_offset"

    iget-object v3, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$4;->this$0:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    #getter for: Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mOffset:I
    invoke-static {v3}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->access$500(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
