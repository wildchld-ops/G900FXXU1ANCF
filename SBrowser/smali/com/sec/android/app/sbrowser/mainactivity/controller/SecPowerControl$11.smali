.class Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$11;
.super Ljava/lang/Object;
.source "SecPowerControl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->showFakeCheckBox()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$11;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v4

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$11;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c01c0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$11;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessFake:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$2000(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl$11;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->mAutoBrightnessFake:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->access$2000(Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->playSoundEffect(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
