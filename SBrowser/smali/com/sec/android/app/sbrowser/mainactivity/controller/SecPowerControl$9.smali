.class Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$9;
.super Ljava/lang/Object;
.source "SecPowerControl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseBrightness:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    mul-int/lit8 v1, p2, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setWindowBrightness(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseSystemBrightness:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setBrightness(IZ)V
    invoke-static {v0, p2, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1000(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;IZ)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
