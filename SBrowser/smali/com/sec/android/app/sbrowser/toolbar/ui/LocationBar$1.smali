.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$1;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$1;->val$text:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$1;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLastUrlEditWasDelete:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$000(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->startAutoComplete(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mRequestSuggestions:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$102(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
