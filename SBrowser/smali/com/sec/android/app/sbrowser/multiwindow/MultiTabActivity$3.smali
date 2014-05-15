.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$3;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPopup menu onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->isPopupMenuVisible:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$102(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Z)Z

    return-void
.end method
