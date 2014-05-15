.class Lcom/samsung/contacts/autolink/AutoLinkFragment$1;
.super Ljava/lang/Object;
.source "AutoLinkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/autolink/AutoLinkFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/autolink/AutoLinkFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$1;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$1;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    #getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mListener:Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;
    invoke-static {v0}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$000(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;->onClickCancelAction()V

    return-void
.end method
