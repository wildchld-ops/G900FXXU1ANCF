.class Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$4;
.super Ljava/lang/Object;
.source "ContentViewListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createDelayedCacheNtp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$4;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$4;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->createCachedNtp()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$3300(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)V

    return-void
.end method
