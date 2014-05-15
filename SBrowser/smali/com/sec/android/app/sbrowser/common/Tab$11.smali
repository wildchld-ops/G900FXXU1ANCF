.class Lcom/sec/android/app/sbrowser/common/Tab$11;
.super Ljava/lang/Thread;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab;->setWidgetThumbnail(Landroid/graphics/Bitmap;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$11;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$11;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->addWidgetThumbnailInDB()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$6100(Lcom/sec/android/app/sbrowser/common/Tab;)V

    return-void
.end method
