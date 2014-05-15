.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$27;
.super Ljava/lang/Thread;
.source "MultiTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->deleteTab(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

.field final synthetic val$tabId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$27;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$27;->val$tabId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$27;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$27;->val$tabId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->deleteThumbnail(I)V

    return-void
.end method
