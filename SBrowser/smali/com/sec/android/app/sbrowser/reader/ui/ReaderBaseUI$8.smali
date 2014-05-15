.class Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$8;
.super Ljava/lang/Object;
.source "ReaderBaseUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->findOnPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$8;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$8;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->access$300(Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;)Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$8;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->access$400(Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;)Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$8;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->access$700(Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;)Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$8;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->findText:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->access$800(Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->setReaderModelAndFocus(Lorg/chromium/content/browser/ContentView;Ljava/lang/String;)V

    return-void
.end method
