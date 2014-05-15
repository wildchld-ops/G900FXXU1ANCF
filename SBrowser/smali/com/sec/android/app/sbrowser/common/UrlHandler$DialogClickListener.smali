.class Lcom/sec/android/app/sbrowser/common/UrlHandler$DialogClickListener;
.super Ljava/lang/Object;
.source "UrlHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/UrlHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogClickListener"
.end annotation


# instance fields
.field final intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/UrlHandler;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$DialogClickListener;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$DialogClickListener;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$DialogClickListener;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$DialogClickListener;->intent:Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/UrlHandler$DialogClickListener;->this$0:Lcom/sec/android/app/sbrowser/common/UrlHandler;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/UrlHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c00e0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
