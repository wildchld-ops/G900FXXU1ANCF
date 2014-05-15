.class Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$8;
.super Ljava/lang/Object;
.source "ExtractModeBaseUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->findOnPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$8;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$8;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->access$300(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$8;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->access$400(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$8;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->mContentView:Lorg/chromium/content/browser/ContentView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->access$700(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI$8;->this$0:Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->findText:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;->access$800(Lcom/sec/android/app/sbrowser/extractmode/ui/ExtractModeBaseUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->setReaderModelAndFocus(Lorg/chromium/content/browser/ContentView;Ljava/lang/String;)V

    return-void
.end method
