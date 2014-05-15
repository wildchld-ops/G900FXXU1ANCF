.class Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter$1;
.super Ljava/lang/Object;
.source "WMLParserAndToHTMLConverter.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;->handleWMLPageSource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter$1;->this$0:Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleJavaScriptResult(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter$1;->this$0:Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;

    #getter for: Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;->access$000(Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter$1;->this$0:Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;

    #calls: Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;->convertWML2HTML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v6, v2}, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;->access$100(Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter$1;->this$0:Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;

    #getter for: Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;->access$000(Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->loadDataWithBaseUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter$1;->this$0:Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;

    #calls: Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;->cleanupInternalData()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;->access$200(Lcom/sec/android/app/sbrowser/wml/WMLParserAndToHTMLConverter;)V

    return-void
.end method
