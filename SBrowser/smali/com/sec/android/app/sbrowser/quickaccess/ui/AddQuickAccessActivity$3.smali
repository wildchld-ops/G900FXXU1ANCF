.class Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$3;
.super Ljava/lang/Object;
.source "AddQuickAccessActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    return-void
.end method
