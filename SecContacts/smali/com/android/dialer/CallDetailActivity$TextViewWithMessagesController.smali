.class final Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextViewWithMessagesController"
.end annotation


# instance fields
.field private final mDurationTextView:Landroid/widget/TextView;

.field private final mLock:Ljava/lang/Object;

.field private final mPermanentTextView:Landroid/widget/TextView;

.field private mRunnable:Ljava/lang/Runnable;

.field private final mTemporaryTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mPermanentTextView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mDurationTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$2500(Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public setDurationText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mDurationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPermanentText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mPermanentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTemporaryText(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 5

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController$1;-><init>(Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
