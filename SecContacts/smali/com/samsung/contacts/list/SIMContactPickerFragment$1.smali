.class Lcom/samsung/contacts/list/SIMContactPickerFragment$1;
.super Ljava/lang/Object;
.source "SIMContactPickerFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/list/SIMContactPickerFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/list/SIMContactPickerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/list/SIMContactPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment$1;->this$0:Lcom/samsung/contacts/list/SIMContactPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment$1;->this$0:Lcom/samsung/contacts/list/SIMContactPickerFragment;

    iget-object v2, v2, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment$1;->this$0:Lcom/samsung/contacts/list/SIMContactPickerFragment;

    iput-object p1, v1, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment$1;->this$0:Lcom/samsung/contacts/list/SIMContactPickerFragment;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment$1;->this$0:Lcom/samsung/contacts/list/SIMContactPickerFragment;

    #getter for: Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->access$000(Lcom/samsung/contacts/list/SIMContactPickerFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment$1;->this$0:Lcom/samsung/contacts/list/SIMContactPickerFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment$1;->this$0:Lcom/samsung/contacts/list/SIMContactPickerFragment;

    #getter for: Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->access$000(Lcom/samsung/contacts/list/SIMContactPickerFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment$1;->this$0:Lcom/samsung/contacts/list/SIMContactPickerFragment;

    #getter for: Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->access$000(Lcom/samsung/contacts/list/SIMContactPickerFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    :cond_1
    const/4 v1, 0x1

    return v1
.end method
