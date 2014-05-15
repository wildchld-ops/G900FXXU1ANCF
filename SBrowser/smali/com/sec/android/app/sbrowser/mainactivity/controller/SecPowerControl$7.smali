.class Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;
.super Ljava/lang/Object;
.source "SecPowerControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->onDrawPowerCtrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private autobrightness:Z

.field private brightness:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

.field final synthetic val$tempAutoBright:Z

.field final synthetic val$tempbright:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;IZ)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iput p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->val$tempbright:I

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->val$tempAutoBright:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->val$tempbright:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->brightness:I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->val$tempAutoBright:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->autobrightness:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseBrightness:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->autobrightness:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, -0x4080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1200(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->brightness:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setBrightness(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->autobrightness:Z

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$902(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBright:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$900(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1200(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->autobrightness:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setAutoBrightness(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseSystemBrightness:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->restoreOldState()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1600(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1300(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessModeObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1400(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1500(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->strTempPowerSavingMode:Ljava/lang/String;

    sput-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->updatePowerSavingMode()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->brightness:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setWindowBrightness(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$7;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
