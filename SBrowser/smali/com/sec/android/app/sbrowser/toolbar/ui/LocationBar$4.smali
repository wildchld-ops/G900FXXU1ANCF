.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$4;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->initSuggestionList()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    #calls: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateSuggestionPopupPosition()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->isSuggestionComingFromVoiceSearchResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->setIsSuggestionComingFromVoiceSearchResult(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSuggestionListPopup:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListPopupWindow;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    #calls: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->updateSuggestionPopupPosition()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    goto :goto_0
.end method
