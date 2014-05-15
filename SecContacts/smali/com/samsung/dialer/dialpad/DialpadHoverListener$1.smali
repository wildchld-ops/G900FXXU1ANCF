.class Lcom/samsung/dialer/dialpad/DialpadHoverListener$1;
.super Landroid/os/Handler;
.source "DialpadHoverListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/dialpad/DialpadHoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/dialpad/DialpadHoverListener;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/dialpad/DialpadHoverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener$1;->this$0:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const v7, 0x7f0801a4

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener$1;->this$0:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->access$000(Lcom/samsung/dialer/dialpad/DialpadHoverListener;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "0039"

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener$1;->this$0:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/samsung/dialer/dialpad/DialpadHoverListener;->isEnableHapticFeedback(I)Z
    invoke-static {v0, v1}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->access$100(Lcom/samsung/dialer/dialpad/DialpadHoverListener;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener$1;->this$0:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;
    invoke-static {v0}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->access$200(Lcom/samsung/dialer/dialpad/DialpadHoverListener;)Lcom/android/dialer/dialpad/DialpadFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener$1;->this$0:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mSettingSoundEffects:Z
    invoke-static {v0}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->access$300(Lcom/samsung/dialer/dialpad/DialpadHoverListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener$1;->this$0:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;
    invoke-static {v0}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->access$200(Lcom/samsung/dialer/dialpad/DialpadHoverListener;)Lcom/android/dialer/dialpad/DialpadFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener$1;->this$0:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->access$200(Lcom/samsung/dialer/dialpad/DialpadHoverListener;)Lcom/android/dialer/dialpad/DialpadFragment;

    move-result-object v1

    iget v1, v1, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundTone:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener$1;->this$0:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    #getter for: Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mHoverEnter:[Z
    invoke-static {v0}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->access$400(Lcom/samsung/dialer/dialpad/DialpadHoverListener;)[Z

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
