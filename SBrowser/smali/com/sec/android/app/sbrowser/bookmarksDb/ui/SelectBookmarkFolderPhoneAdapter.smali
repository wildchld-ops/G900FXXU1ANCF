.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectBookmarkFolderPhoneAdapter.java"


# instance fields
.field private mBookmarkFolderBaseUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;->mBookmarkFolderBaseUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;->mBookmarkFolderBaseUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;->mBookmarkFolderBaseUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mSelectBookmarkFolderUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;->getObjectsSize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;->mBookmarkFolderBaseUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mSelectBookmarkFolderUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;->getObject(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;->mBookmarkFolderBaseUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mSelectBookmarkFolderUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;

    invoke-interface {v6, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;->getObject(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;->mBookmarkFolderBaseUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderActivity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v6, 0x7f04001b

    invoke-virtual {v1, v6, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0a00c3

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v6, 0x7f0a00c4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getNoOfChildren()I

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x7f0201a7

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    mul-int/lit8 v6, v3, 0x46

    invoke-virtual {v4, v6, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v6

    if-nez v6, :cond_0

    const v6, -0xbbbbbc

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-object v4

    :cond_1
    const v6, 0x7f0c01d3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v6, 0x7f0200d8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
