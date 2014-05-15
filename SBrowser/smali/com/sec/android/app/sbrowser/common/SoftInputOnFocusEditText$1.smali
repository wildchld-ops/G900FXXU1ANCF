.class Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText$1;
.super Ljava/lang/Object;
.source "SoftInputOnFocusEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText$1;->this$0:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/utilities/KeyboardUtils;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
