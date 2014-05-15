.class Lcom/samsung/mms/ui/RestorePreviewMessageListItem$2;
.super Ljava/lang/Object;
.source "RestorePreviewMessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/RestorePreviewMessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$2;->this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$2;->this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

    #getter for: Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->access$300(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Contact;->getLocalProfileUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1008

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$2;->this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

    #getter for: Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->access$400(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$2;->this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

    #getter for: Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->access$500(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->createLocalProfileIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method
