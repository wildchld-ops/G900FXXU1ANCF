.class Lcom/samsung/mms/location/SearchHandler$1;
.super Ljava/lang/Object;
.source "SearchHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/SearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/SearchHandler;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/SearchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/SearchHandler$1;->this$0:Lcom/samsung/mms/location/SearchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$1;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v0, v0, Lcom/samsung/mms/location/SearchHandler;->mSearchRequest:Lcom/nbi/common/NBIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$1;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v0, v0, Lcom/samsung/mms/location/SearchHandler;->mSearchRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0}, Lcom/nbi/common/NBIRequest;->isRequestInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$1;->this$0:Lcom/samsung/mms/location/SearchHandler;

    iget-object v0, v0, Lcom/samsung/mms/location/SearchHandler;->mSearchRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0}, Lcom/nbi/common/NBIRequest;->cancelRequest()V

    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler$1;->this$0:Lcom/samsung/mms/location/SearchHandler;

    #getter for: Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/mms/location/SearchHandler;->access$300(Lcom/samsung/mms/location/SearchHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
