.class Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$1;
.super Ljava/lang/Object;
.source "SuggestionListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->bindView(Landroid/view/View;Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->mSuggestionSelectionHandler:Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;->access$000(Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter;)Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;->getSuggestion()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionSelectionHandler;->onRefineSuggestion(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)V

    return-void
.end method
