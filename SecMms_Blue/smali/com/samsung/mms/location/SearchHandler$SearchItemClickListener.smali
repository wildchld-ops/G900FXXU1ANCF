.class Lcom/samsung/mms/location/SearchHandler$SearchItemClickListener;
.super Ljava/lang/Object;
.source "SearchHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/SearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/SearchHandler;


# direct methods
.method private constructor <init>(Lcom/samsung/mms/location/SearchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/SearchHandler$SearchItemClickListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/mms/location/SearchHandler;Lcom/samsung/mms/location/SearchHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/mms/location/SearchHandler$SearchItemClickListener;-><init>(Lcom/samsung/mms/location/SearchHandler;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$SearchItemClickListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v0, v0, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$SearchItemClickListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v0, v0, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$SearchItemClickListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v1, v0, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$SearchItemClickListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v0, v0, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nbi/map/data/Place;

    invoke-interface {v1, v0}, Lcom/samsung/mms/location/SearchHandlerListener;->onPlaceReceived(Lcom/nbi/map/data/Place;)V

    :cond_0
    return-void
.end method
