.class Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;

    iput p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->access$3900(Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountIntents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->access$3800(Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
