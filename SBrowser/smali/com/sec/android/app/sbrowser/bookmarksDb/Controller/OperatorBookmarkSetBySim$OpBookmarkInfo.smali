.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;
.super Ljava/lang/Object;
.source "OperatorBookmarkSetBySim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpBookmarkInfo"
.end annotation


# instance fields
.field editable:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/OperatorBookmarkSetBySim$OpBookmarkInfo;->editable:Ljava/lang/String;

    return-void
.end method
