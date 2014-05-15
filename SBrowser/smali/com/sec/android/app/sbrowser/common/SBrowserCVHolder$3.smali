.class Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$3;
.super Landroid/database/DataSetObserver;
.source "SBrowserCVHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->setAdapter(Landroid/widget/Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$3;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$3;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->controllerChanged()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$300(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$3;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->controllerChanged()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$300(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V

    return-void
.end method
