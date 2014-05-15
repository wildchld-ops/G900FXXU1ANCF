.class Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2$1;
.super Ljava/lang/Object;
.source "ReadLaterController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2$1;->this$1:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2$1;->this$1:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController$2;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->checkReader()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->access$500(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;)V

    return-void
.end method
