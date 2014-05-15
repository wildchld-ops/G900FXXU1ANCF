.class Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$1;
.super Ljava/lang/Object;
.source "SBrowserHttpAuthHandler.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v1, 0xff

    if-eq p2, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->access$000(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    const/4 v0, 0x1

    goto :goto_0
.end method
