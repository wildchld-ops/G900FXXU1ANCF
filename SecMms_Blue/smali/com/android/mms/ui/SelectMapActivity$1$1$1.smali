.class Lcom/android/mms/ui/SelectMapActivity$1$1$1;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectMapActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/SelectMapActivity$1$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$1$1$1;->this$2:Lcom/android/mms/ui/SelectMapActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$1$1$1;->this$2:Lcom/android/mms/ui/SelectMapActivity$1$1;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$1$1$1;->this$2:Lcom/android/mms/ui/SelectMapActivity$1$1;

    iget-object v1, v1, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v1, v1, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
