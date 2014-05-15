.class Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$5;
.super Ljava/lang/Object;
.source "SecPowerControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->onDrawPowerCtrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$5;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$5;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$5;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$5;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$5;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->isFolderOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$5;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01c0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
