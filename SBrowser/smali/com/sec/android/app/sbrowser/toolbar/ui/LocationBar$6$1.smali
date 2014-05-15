.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6$1;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$6;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->readLater(Z)V

    return-void
.end method
