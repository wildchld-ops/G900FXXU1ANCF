.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$2;
.super Ljava/lang/Thread;
.source "MultiTabBrowserUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->updateCurrentTabBitmapIfnotPresent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

.field final synthetic val$tabId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$2;->val$tabId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$2;->val$tabId:I

    #calls: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadFullScreenBitmapForID(I)Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->access$300(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->mCurrentTabBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
