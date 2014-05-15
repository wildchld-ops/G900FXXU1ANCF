.class Lcom/samsung/mms/location/LocationMapActivity$3;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationMapActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;

.field final synthetic val$addressArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    iput-object p2, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->val$addressArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v1}, Lcom/samsung/mms/location/LocationMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v1}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v1}, Lcom/samsung/mms/location/LocationMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_place_address"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "LocationMapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnStart() addressArray:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->val$addressArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/mms/location/SearchHandler;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$500(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v5}, Lcom/samsung/mms/location/LocationMapActivity;->access$600(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;
    invoke-static {v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$700(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchHandlerListener;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/mms/location/SearchHandler;-><init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->val$addressArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/android/MapView;->getMapCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mSuggestionSearchInfo:Lcom/nbi/search/singlesearch/SuggestionSearchInformation;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/search/singlesearch/SuggestionSearchInformation;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/mms/location/LocationMapActivity$3;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->singleSubSearchIndex:I
    invoke-static {v5}, Lcom/samsung/mms/location/LocationMapActivity;->access$800(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/mms/location/SearchHandler;->performSingleSearch(ILjava/lang/String;Lcom/nbi/map/data/Coordinates;Lcom/nbi/search/singlesearch/SuggestionSearchInformation;I)V

    goto :goto_0
.end method
