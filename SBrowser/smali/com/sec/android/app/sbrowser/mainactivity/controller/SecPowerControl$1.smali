.class Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$1;
.super Landroid/database/ContentObserver;
.source "SecPowerControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    const/4 v1, -0x1

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mCurBrightness:I
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$002(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;I)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$1;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getBrightness()I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$100(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
