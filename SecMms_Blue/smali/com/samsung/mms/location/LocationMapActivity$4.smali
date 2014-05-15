.class Lcom/samsung/mms/location/LocationMapActivity$4;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnSuggestionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationMapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$4;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$4;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$900(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$4;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$900(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$4;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->singleSubSearchIndex:I
    invoke-static {v0, p1}, Lcom/samsung/mms/location/LocationMapActivity;->access$802(Lcom/samsung/mms/location/LocationMapActivity;I)I

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$4;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchRequest:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$1000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$4;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchRequest:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$1000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/search/singlesearch/SuggestionSearchRequest;->cancelRequest()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$4;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->doSubSearch()V
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$1100(Lcom/samsung/mms/location/LocationMapActivity;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onSuggestionSelect(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
