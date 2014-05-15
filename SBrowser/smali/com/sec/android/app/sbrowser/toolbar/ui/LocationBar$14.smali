.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$14;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateSuggestionPopupPosition()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$14;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$14;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mForceResizeSuggestionPopupRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$902(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$14;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->postShow()V

    return-void
.end method
