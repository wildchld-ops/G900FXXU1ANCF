.class Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;
.super Ljava/lang/Object;
.source "SecPowerControl.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;


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
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V
    .locals 3

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseBrightness:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    mul-int/lit8 v2, p2, 0xa

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setWindowBrightness(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseSystemBrightness:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1800(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    move-result-object v1

    if-ne p1, v1, :cond_0

    mul-int/lit8 v0, p2, 0x14

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBarText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1900(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$10;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1800(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getSplitProgress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 0

    return-void
.end method
