.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$1$1;
.super Ljava/lang/Thread;
.source "MultiTabBrowserUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$1;

.field final synthetic val$deletedTabID:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$1$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$1;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$1$1;->val$deletedTabID:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$1$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$1$1;->val$deletedTabID:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->deleteThumbnail(Landroid/content/ContentResolver;I)V

    return-void
.end method
