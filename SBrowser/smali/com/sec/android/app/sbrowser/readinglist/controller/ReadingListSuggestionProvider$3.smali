.class Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$3;
.super Ljava/lang/Thread;
.source "ReadingListSuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->updateReadingListRead(ILandroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$savePageId:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$3;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$3;->val$savePageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$3;->val$cr:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$3;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "_id=?"

    new-array v1, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$3;->val$savePageId:Ljava/lang/String;

    aput-object v4, v1, v3

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "is_read"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$3;->val$cr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
