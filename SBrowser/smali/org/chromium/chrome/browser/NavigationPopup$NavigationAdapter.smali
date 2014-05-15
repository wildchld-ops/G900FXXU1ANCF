.class Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;
.super Landroid/widget/BaseAdapter;
.source "NavigationPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/NavigationPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/NavigationPopup;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/NavigationPopup;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/NavigationPopup;Lorg/chromium/chrome/browser/NavigationPopup$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;-><init>(Lorg/chromium/chrome/browser/NavigationPopup;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    #getter for: Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content/browser/NavigationHistory;
    invoke-static {v0}, Lorg/chromium/chrome/browser/NavigationPopup;->access$100(Lorg/chromium/chrome/browser/NavigationPopup;)Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/NavigationHistory;->getEntryCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    #getter for: Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content/browser/NavigationHistory;
    invoke-static {v0}, Lorg/chromium/chrome/browser/NavigationPopup;->access$100(Lorg/chromium/chrome/browser/NavigationPopup;)Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content/browser/NavigationEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/NavigationEntry;

    invoke-virtual {v0}, Lorg/chromium/content/browser/NavigationEntry;->getIndex()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_2

    instance-of v3, p2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/NavigationEntry;

    invoke-virtual {v0}, Lorg/chromium/content/browser/NavigationEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/NavigationEntry;->getVirtualUrl()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/NavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    invoke-virtual {v0}, Lorg/chromium/content/browser/NavigationEntry;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v4

    #calls: Lorg/chromium/chrome/browser/NavigationPopup;->updateBitmapForTextView(Landroid/widget/TextView;Landroid/graphics/Bitmap;)V
    invoke-static {v3, v2, v4}, Lorg/chromium/chrome/browser/NavigationPopup;->access$300(Lorg/chromium/chrome/browser/NavigationPopup;Landroid/widget/TextView;Landroid/graphics/Bitmap;)V

    return-object v2

    :cond_2
    iget-object v3, p0, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    #getter for: Lorg/chromium/chrome/browser/NavigationPopup;->mListItemFactory:Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;
    invoke-static {v3}, Lorg/chromium/chrome/browser/NavigationPopup;->access$200(Lorg/chromium/chrome/browser/NavigationPopup;)Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->createListItem()Landroid/widget/TextView;

    move-result-object v2

    goto :goto_0
.end method
