.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$3;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->initializeUiElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButtonClicked:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$300(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mBookmarkStarButtonClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$302(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->addBookmark()V

    goto :goto_0
.end method
