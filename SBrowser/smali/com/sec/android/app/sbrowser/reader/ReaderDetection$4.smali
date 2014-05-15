.class Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;
.super Ljava/lang/Thread;
.source "ReaderDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->setExtractedReaderContent(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptResult:Ljava/lang/String;

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/decoder/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptResult:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iget-object v9, v9, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptResult:Ljava/lang/String;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptResult:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptResult:Ljava/lang/String;

    const-string v2, "class=\"SISO_header"

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iget-object v9, v9, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptResult:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int v6, v9, v10

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iget-object v9, v9, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptResult:Ljava/lang/String;

    add-int/lit8 v10, v6, 0x2

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$500(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$500(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$500(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;)Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v8

    :cond_0
    const/4 v7, 0x0

    if-eqz v8, :cond_2

    const-string v7, "<head><meta name=\"viewport\" charset=\"UTF-8\" minimum-scale=1.0,initial-scale=1.0, maximum-scale=10.0,user-scalable=1\"/>"

    :goto_0
    const-string v3, "<style>.SISO_page {font-size: 1.05em; margin-top: 0px; word-wrap:break-word;line-height: 1.5em;}.SISO_domain_name{font-size:12px; padding:5px 15px; color:  #94acaa;}.SISO_page-separator {display: none; font-size:10px;text-align:right;width:95%;color:#94acaa;padding-top:10px}.SISO_page-num {font-size:10px;color:#94acaa}.SISO_page-total {font-size:10px;color:#94acaa} body{ font-family: roboto; background-color: #f7f7f7;margin:0px;padding:0px;} #reader_content_div{ font-family: roboto; margin-bottom: 35px; margin-left: 12px; margin-right: 12px;} .SISO_header {font-size: 1.473em; margin-left: 12px; margin-bottom: 5px;margin-right: 12px;margin-top: 12px;line-height:1.5em;} div,table,tr,td {background-color:rgba(247,247,247,1) !important;background:none !important;} h1 { font-size: 1.17em; margin: .83em 0 } h2 { font-size: 1.17em; margin: .83em 0 } h3 { font-size: 1.0em; margin: 1.5em 0 } h4 { font-size: .83em; margin: 1.67em 0 } h5 { font-size: .75em; margin: 1.67em 0 } h6 { font-size: .75em; margin: 1.67em 0 } a{text-decoration: none;} hr{margin: 5px 12px;} </style>"

    const-string v0, "<style>html{ direction:rtl;}</style>"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getReaderStatus()Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x600

    if-lt v1, v9, :cond_1

    const/16 v9, 0x6ff

    if-gt v1, v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->mReaderScriptResult:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/reader/ReaderDetection$4;->this$0:Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    #calls: Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->setReaderContentData(Ljava/lang/String;)V
    invoke-static {v9, v5}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->access$600(Lcom/sec/android/app/sbrowser/reader/ReaderDetection;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v7, "<head><meta charset=\"utf-8\"/><meta name=\"viewport\" content=\"width=device-width, minimum-scale=1.0,initial-scale=1.0, maximum-scale=10.0,user-scalable=1\"/>"

    goto :goto_0
.end method
