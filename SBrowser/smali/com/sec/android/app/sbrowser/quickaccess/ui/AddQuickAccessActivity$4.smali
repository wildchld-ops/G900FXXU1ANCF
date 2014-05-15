.class Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$4;
.super Ljava/lang/Object;
.source "AddQuickAccessActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->saveActionView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->access$300(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mSaveTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->access$400(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->saveActionView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->access$300(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mSaveTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->access$400(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
