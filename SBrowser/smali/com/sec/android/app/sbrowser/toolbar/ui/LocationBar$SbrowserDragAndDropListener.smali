.class public Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SbrowserDragAndDropListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v7, v8

    :goto_1
    return v7

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "sbr_tab_drag_n_drop"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Tab drag & drop, hence do not handle for url bar!!"

    invoke-static {v8, v9}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v7, v6, v8, v9}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->loadUrl(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v7, v3, v8, v9}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->loadUrl(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarWrapper:Lorg/samsung/chrome/browser/SbrLocationBar;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$800(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)Lorg/samsung/chrome/browser/SbrLocationBar;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarWrapper:Lorg/samsung/chrome/browser/SbrLocationBar;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$800(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)Lorg/samsung/chrome/browser/SbrLocationBar;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/samsung/chrome/browser/SbrLocationBar;->GetUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/utilities/URLUtilities;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$SbrowserDragAndDropListener;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v7, v6, v8, v9}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->loadUrl(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
