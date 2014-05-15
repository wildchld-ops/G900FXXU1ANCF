.class Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10$1;
.super Ljava/lang/Object;
.source "SecPowerControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;->onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10$1;->this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;

    iput p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10$1;->val$val:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10$1;->this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10$1;->val$val:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
