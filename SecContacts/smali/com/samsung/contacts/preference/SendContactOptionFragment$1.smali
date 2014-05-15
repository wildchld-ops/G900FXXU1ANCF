.class Lcom/samsung/contacts/preference/SendContactOptionFragment$1;
.super Ljava/lang/Object;
.source "SendContactOptionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/preference/SendContactOptionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/preference/SendContactOptionFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/preference/SendContactOptionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/preference/SendContactOptionFragment$1;->this$0:Lcom/samsung/contacts/preference/SendContactOptionFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/preference/SendContactOptionFragment$1;->this$0:Lcom/samsung/contacts/preference/SendContactOptionFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/preference/SendContactOptionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/preference/SendNamecardsDialogFragment;->show(Landroid/app/FragmentManager;)V

    return-void
.end method
