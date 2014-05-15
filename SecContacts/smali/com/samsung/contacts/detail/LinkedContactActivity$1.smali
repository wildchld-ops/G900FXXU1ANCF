.class Lcom/samsung/contacts/detail/LinkedContactActivity$1;
.super Ljava/lang/Object;
.source "LinkedContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/detail/LinkedContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/detail/LinkedContactActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/LinkedContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/LinkedContactActivity$1;->this$0:Lcom/samsung/contacts/detail/LinkedContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactActivity$1;->this$0:Lcom/samsung/contacts/detail/LinkedContactActivity;

    #getter for: Lcom/samsung/contacts/detail/LinkedContactActivity;->mLinkedContactsCount:I
    invoke-static {v0}, Lcom/samsung/contacts/detail/LinkedContactActivity;->access$000(Lcom/samsung/contacts/detail/LinkedContactActivity;)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactActivity$1;->this$0:Lcom/samsung/contacts/detail/LinkedContactActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/LinkedContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/detail/LinkedContactDialogFragment;->show(Landroid/app/FragmentManager;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactActivity$1;->this$0:Lcom/samsung/contacts/detail/LinkedContactActivity;

    #calls: Lcom/samsung/contacts/detail/LinkedContactActivity;->showJoinAggregateActivity()V
    invoke-static {v0}, Lcom/samsung/contacts/detail/LinkedContactActivity;->access$100(Lcom/samsung/contacts/detail/LinkedContactActivity;)V

    goto :goto_0
.end method
