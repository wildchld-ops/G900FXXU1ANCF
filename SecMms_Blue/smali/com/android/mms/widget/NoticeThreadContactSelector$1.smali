.class Lcom/android/mms/widget/NoticeThreadContactSelector$1;
.super Ljava/lang/Object;
.source "NoticeThreadContactSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/widget/NoticeThreadContactSelector;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/NoticeThreadContactSelector;


# direct methods
.method constructor <init>(Lcom/android/mms/widget/NoticeThreadContactSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/widget/NoticeThreadContactSelector$1;->this$0:Lcom/android/mms/widget/NoticeThreadContactSelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/widget/NoticeThreadContactSelector$1;->this$0:Lcom/android/mms/widget/NoticeThreadContactSelector;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeThreadContactSelector;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03f9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
