.class Lcom/sec/android/app/sbrowser/common/Tab$20;
.super Ljava/lang/Thread;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab;->doStartLoading(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$20;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$20;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mCachedExtraThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$8202(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$20;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$20;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->deleteBitmapFromFile(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$8300(Lcom/sec/android/app/sbrowser/common/Tab;I)V

    return-void
.end method
