.class public Lcom/samsung/dialer/dialpad/ExploreByTouchListener;
.super Ljava/lang/Object;
.source "ExploreByTouchListener.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBeforeButton:I

.field private mLongPressed:Z

.field private mTalkbackHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/dialpad/ExploreByTouchListener$2;-><init>(Lcom/samsung/dialer/dialpad/ExploreByTouchListener;)V

    iput-object v0, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->mTalkbackHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/dialer/dialpad/ExploreByTouchListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->mLongPressed:Z

    return p1
.end method

.method private findNumberByView(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_d
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080189
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-direct {p0, p1}, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->findNumberByView(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v8, 0x0

    return v8

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/View;->setLongClickable(Z)V

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/View;->setFocusable(Z)V

    iget v8, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->mBeforeButton:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "talkback ACTION_HOVER_ENTER  removeMessages : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->mBeforeButton:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->mTalkbackHandler:Landroid/os/Handler;

    iget v9, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->mBeforeButton:I

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    sget-object v8, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "talkback ACTION_HOVER_ENTER  sendMessageDelayed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->mTalkbackHandler:Landroid/os/Handler;

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput v4, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->mBeforeButton:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    packed-switch v8, :pswitch_data_2

    :pswitch_4
    goto :goto_0

    :pswitch_5
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->mTalkbackHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v8, -0x1

    iput v8, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->mBeforeButton:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int v3, v8, v9

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    iget-boolean v8, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->mLongPressed:Z

    if-nez v8, :cond_2

    if-le v6, v2, :cond_2

    if-ge v6, v3, :cond_2

    if-le v7, v5, :cond_2

    if-ge v7, v0, :cond_2

    new-instance v8, Lcom/samsung/dialer/dialpad/ExploreByTouchListener$1;

    invoke-direct {v8, p0, p1}, Lcom/samsung/dialer/dialpad/ExploreByTouchListener$1;-><init>(Lcom/samsung/dialer/dialpad/ExploreByTouchListener;Landroid/view/View;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/View;->sendAccessibilityEvent(I)V

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/dialer/dialpad/ExploreByTouchListener;->mLongPressed:Z

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/View;->setLongClickable(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f080189
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f080189
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
