.class Lcom/android/dialer/CallDetailActivity$4;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$4;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$4;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v1, v1, Lcom/android/dialer/CallDetailActivity;->mContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.QUICK_CONTACT"

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity$4;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity;->mContactUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$4;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v1, v0}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
