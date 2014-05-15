.class Lcom/samsung/contacts/autolink/AutoLinkFragment$2;
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

    iput-object p1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$2;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$2;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    #calls: Lcom/samsung/contacts/autolink/AutoLinkFragment;->doneAction()V
    invoke-static {v0}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$100(Lcom/samsung/contacts/autolink/AutoLinkFragment;)V

    return-void
.end method
