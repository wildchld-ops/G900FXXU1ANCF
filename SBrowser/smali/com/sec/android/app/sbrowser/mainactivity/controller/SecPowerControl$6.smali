.class Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1100()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1200(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, -0x4080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mUseSystemBrightness:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const/4 v3, 0x1

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setBrightness(IZ)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1000(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;IZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1300(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mBrightnessModeObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1400(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1500(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->updatePowerSavingMode()V

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    sput-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->strTempPowerSavingMode:Ljava/lang/String;

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$6;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$1200(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setWindowBrightness(I)V

    goto :goto_0
.end method
