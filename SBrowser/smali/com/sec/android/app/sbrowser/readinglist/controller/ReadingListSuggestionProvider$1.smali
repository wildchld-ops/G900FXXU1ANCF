.class Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$1;
.super Landroid/database/ContentObserver;
.source "ReadingListSuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->handleReadingListSuggestionsUpdate()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;->access$000(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSuggestionProvider;)V

    return-void
.end method
