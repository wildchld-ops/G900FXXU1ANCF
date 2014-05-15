.class Lcom/android/contacts/quickcontact/QuickContactActivity$11$2;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$11;->onItemLongClicked(Lcom/android/contacts/quickcontact/Action;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$11;

.field final synthetic val$action:Lcom/android/contacts/quickcontact/Action;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$11;Lcom/android/contacts/quickcontact/Action;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$2;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$2;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$2;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$2;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$2;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    iget-object v4, v4, Lcom/android/contacts/quickcontact/QuickContactActivity$11;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lcom/samsung/dialer/impl/CallMessageImpl;->launch(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$2;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    iget-object v4, v4, Lcom/android/contacts/quickcontact/QuickContactActivity$11;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v4, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string v4, "vnd.android.cursor.item/video-call"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$2;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    iget-object v4, v4, Lcom/android/contacts/quickcontact/QuickContactActivity$11;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lcom/samsung/dialer/impl/CallMessageImpl;->launch(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$2;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    iget-object v4, v4, Lcom/android/contacts/quickcontact/QuickContactActivity$11;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v5, 0x7f0e0077

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
