.class Lcom/sec/android/app/sbrowser/reader/ReaderDetection$3;
.super Ljava/lang/Object;
.source "ReaderDetection.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->executeReaderContentExtractScript(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$3;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleJavaScriptResult(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$3;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    #calls: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->setExtractedReaderContent(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$400(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
