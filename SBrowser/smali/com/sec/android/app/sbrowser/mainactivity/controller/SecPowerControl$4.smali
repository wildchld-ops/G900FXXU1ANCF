.class Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;
.super Ljava/lang/Object;
.source "SecPowerControl.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->isFolderOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setMode(I)V
    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$600(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mMaxBrightness:I
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$800(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)I

    move-result v3

    if-le v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/widget/SeekBar;

    move-result-object v0

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$900(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setBrightness(IZ)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1000(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;IZ)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$4;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getBrightness()I
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$100(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method
