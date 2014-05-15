.class Lcom/samsung/contacts/businesscard/BusinesscardListFragment$1;
.super Ljava/lang/Object;
.source "BusinesscardListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$100(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    :cond_0
    return-void
.end method
