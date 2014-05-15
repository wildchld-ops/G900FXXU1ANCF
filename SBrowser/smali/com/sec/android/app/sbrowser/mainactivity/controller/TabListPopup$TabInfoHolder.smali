.class Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;
.super Ljava/lang/Object;
.source "TabListPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabInfoHolder"
.end annotation


# instance fields
.field favIcon:Landroid/graphics/Bitmap;

.field tabId:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->favIcon:Landroid/graphics/Bitmap;

    :goto_0
    iput-object p3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->title:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->tabId:I

    return-void

    :cond_0
    const-string v0, "Welcome to S Browser"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->sbrowserFavIcon:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$400(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->favIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->defaultFavIcon:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->favIcon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->tabId:I

    return v0
.end method

.method public getTabIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->favIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$TabInfoHolder;->title:Ljava/lang/String;

    return-object v0
.end method
