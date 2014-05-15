.class Lcom/sec/android/app/sbrowser/common/UrlHandler$1;
.super Ljava/lang/Object;
.source "UrlHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/UrlHandler;->showLinkifyMenu(Lorg/chromium/content/browser/ContentView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

.field final synthetic val$items:[Ljava/lang/String;

.field final synthetic val$targetString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/UrlHandler;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$items:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    const v10, 0x7f0c00e0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    const-string v5, ""

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, "+"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$items:[Ljava/lang/String;

    aget-object v6, v6, p2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c012e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$items:[Ljava/lang/String;

    aget-object v6, v6, p2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00a9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    const-string v7, "mailto"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "email"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    const-string v6, "phone"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$items:[Ljava/lang/String;

    aget-object v6, v6, p2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00ad

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    const-string v7, "mailto:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/common/UrlHandler;->saveToClipboard(Ljava/lang/String;)V

    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c00a8

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    const-string v7, "geo:0,0?q="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/UrlHandler;->saveToClipboard(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/UrlHandler;->saveToClipboard(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$items:[Ljava/lang/String;

    aget-object v6, v6, p2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c006c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->selectLastTouchText(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;)V

    goto/16 :goto_1

    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Lcom/sec/android/app/sbrowser/reader/ui/ReaderActivity;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/app/sbrowser/reader/ui/ReaderActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderActivity;->getController()Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->selectLastTouchText()V

    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$items:[Ljava/lang/String;

    aget-object v6, v6, p2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00aa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "smsto:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "CscFeature_Web_EnableImage2Play"

    invoke-static {v6}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "com.android.mms"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_c
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$items:[Ljava/lang/String;

    aget-object v6, v6, p2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00ac

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    #calls: Lcom/sec/android/app/sbrowser/common/UrlHandler;->isUltraPowerSavingMode()Z
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/UrlHandler;->access$000(Lcom/sec/android/app/sbrowser/common/UrlHandler;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_e
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$items:[Ljava/lang/String;

    aget-object v6, v6, p2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00ab

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->val$targetString:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
