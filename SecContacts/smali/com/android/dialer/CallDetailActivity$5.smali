.class Lcom/android/dialer/CallDetailActivity$5;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity;->onResume()V
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

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$5;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "CallDetailActivity"

    const-string v1, "after 500ms, load contact photo again"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$5;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$5;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity$5;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    #calls: Lcom/android/dialer/CallDetailActivity;->getPhotoUribyId(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/android/dialer/CallDetailActivity;->access$200(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity$5;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-wide v2, v2, Lcom/android/dialer/CallDetailActivity;->mContactId:J

    const/4 v4, 0x1

    #calls: Lcom/android/dialer/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;JZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/dialer/CallDetailActivity;->access$300(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;JZ)V

    return-void
.end method
