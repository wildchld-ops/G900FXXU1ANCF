.class Lcom/samsung/contacts/detail/LinkedContactAdapter$2;
.super Ljava/lang/Object;
.source "LinkedContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/detail/LinkedContactAdapter;->bindView(Landroid/view/View;Lcom/samsung/contacts/detail/LinkedContactEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/detail/LinkedContactAdapter;

.field final synthetic val$cache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/LinkedContactAdapter;Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$2;->this$0:Lcom/samsung/contacts/detail/LinkedContactAdapter;

    iput-object p2, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$2;->val$cache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$2;->this$0:Lcom/samsung/contacts/detail/LinkedContactAdapter;

    #getter for: Lcom/samsung/contacts/detail/LinkedContactAdapter;->mFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;
    invoke-static {v0}, Lcom/samsung/contacts/detail/LinkedContactAdapter;->access$100(Lcom/samsung/contacts/detail/LinkedContactAdapter;)Lcom/samsung/contacts/detail/LinkedContactFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$2;->this$0:Lcom/samsung/contacts/detail/LinkedContactAdapter;

    #getter for: Lcom/samsung/contacts/detail/LinkedContactAdapter;->mFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;
    invoke-static {v1}, Lcom/samsung/contacts/detail/LinkedContactAdapter;->access$100(Lcom/samsung/contacts/detail/LinkedContactAdapter;)Lcom/samsung/contacts/detail/LinkedContactFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getSelectedContactUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$2;->val$cache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    iget-wide v2, v2, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->targetRawContactId:J

    iget-object v4, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$2;->val$cache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    iget v4, v4, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->position:I

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$2;->val$cache:Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    iget-object v5, v5, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->nameView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/contacts/detail/LinkedContactFragment;->doSplitContactAction(Landroid/net/Uri;JZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
