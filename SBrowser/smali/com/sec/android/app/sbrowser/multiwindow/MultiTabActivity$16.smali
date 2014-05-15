.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$16;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$16;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$16;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSignInDialogVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$16;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isSignInDialogVisible:Z

    :cond_0
    return-void
.end method
