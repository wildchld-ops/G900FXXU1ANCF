.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;
.super Landroid/os/Handler;
.source "MultiTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->updateFullScreenThumbnail(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

.field final synthetic val$tabId:I

.field final synthetic val$tabThumbnail:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;->val$tabThumbnail:Landroid/widget/ImageView;

    iput p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;->val$tabId:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;->val$tabThumbnail:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;->val$tabThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;->val$tabThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;->val$tabThumbnail:Landroid/widget/ImageView;

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$35;->val$tabId:I

    #calls: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setUpdatedFullScreenBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)V
    invoke-static {v2, v0, v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$700(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)V

    goto :goto_0
.end method
