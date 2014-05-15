.class Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;
.super Ljava/lang/Object;
.source "SearchHandler.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/SearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationItemContextMenuListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/SearchHandler;


# direct methods
.method private constructor <init>(Lcom/samsung/mms/location/SearchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/mms/location/SearchHandler;Lcom/samsung/mms/location/SearchHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;-><init>(Lcom/samsung/mms/location/SearchHandler;)V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v8, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ltz v8, :cond_0

    iget v8, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v9, p0, Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v9, v9, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-lt v8, v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v8, v8, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    iget v9, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nbi/map/data/Place;

    new-instance v5, Lcom/samsung/mms/location/PlaceFormatter;

    invoke-direct {v5, v7}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    invoke-virtual {v5, v11}, Lcom/samsung/mms/location/PlaceFormatter;->getFormattedPlaceArray(Z)[Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lcom/samsung/mms/location/SearchHandler$LocationContextMenuClickListener;

    iget-object v8, p0, Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    invoke-direct {v1, v8, v7}, Lcom/samsung/mms/location/SearchHandler$LocationContextMenuClickListener;-><init>(Lcom/samsung/mms/location/SearchHandler;Lcom/nbi/map/data/Place;)V

    aget-object v8, v6, v10

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 v2, 0x0

    invoke-virtual {v5}, Lcom/samsung/mms/location/PlaceFormatter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v2, 0x1

    iget-object v8, p0, Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v8, v8, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c02ea

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v10, v10, v2, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move v2, v3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v2, 0x1

    iget-object v8, p0, Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v8, v8, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c02eb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v10, v11, v2, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method
