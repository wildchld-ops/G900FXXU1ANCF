.class Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText$2;
.super Ljava/lang/Object;
.source "SoftInputOnFocusEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText$2;->this$0:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText$2;->this$0:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    #getter for: Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->mFindTextToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->access$000(Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;)Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->hideKeyboard()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
