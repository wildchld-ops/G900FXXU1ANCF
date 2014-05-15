.class public Lcom/sec/android/app/sbrowser/history/HistoryItem;
.super Lcom/sec/android/app/sbrowser/history/BookmarkItem;
.source "HistoryItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final savedPageUri:Ljava/lang/String; = "content://"


# instance fields
.field private mBookmark:Z

.field private mContentvalues:Landroid/content/ContentValues;

.field private mContextVar:Landroid/content/Context;

.field private mStar:Landroid/widget/ImageView;

.field private mTextViewVar:Landroid/widget/TextView;

.field private mUrlTextVar:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mContextVar:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/history/BookmarkItem;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mContextVar:Landroid/content/Context;

    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mStar:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mStar:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a0150

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mTextViewVar:Landroid/widget/TextView;

    const v0, 0x7f0a0151

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mUrlTextVar:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method copyTo(Lcom/sec/android/app/sbrowser/history/HistoryItem;)V
    .locals 2

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mTextViewVar:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mTextViewVar:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mUrlTextVar:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mUrlTextVar:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mBookmark:Z

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setIsBookmark(Z)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/history/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mTextViewVar:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUrlView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mUrlTextVar:Landroid/widget/TextView;

    return-object v0
.end method

.method public isBookmark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mBookmark:Z

    return v0
.end method

.method public isSavedPage()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mUrlTextVar:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public sendTagDataForChecked()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mContentvalues:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mContentvalues:Landroid/content/ContentValues;

    const-string v4, "url"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mContentvalues:Landroid/content/ContentValues;

    const-string v4, "title"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mContentvalues:Landroid/content/ContentValues;

    const-string v4, "isFolder"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mContextVar:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->BOOKMARKS_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setIsBookmark(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mBookmark:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mStar:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/HistoryItem;->mStar:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
