.class Lcom/sec/android/app/sbrowser/common/Tab$9;
.super Ljava/lang/Thread;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab;->setThumbnailBeforeTabMgrSwitch()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$9;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$9;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$9;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mCachedThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$5800(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->saveThumbnailInFile(Landroid/graphics/Bitmap;Z)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->access$5900(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;Z)V

    return-void
.end method
