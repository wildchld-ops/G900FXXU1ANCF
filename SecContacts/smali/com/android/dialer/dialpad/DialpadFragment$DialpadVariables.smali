.class public Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialpadVariables"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDigits()Lcom/android/dialer/dialpad/EllipsisTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v0, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    return-object v0
.end method

.method public getHandleDialButtonClickWithEmptyDigits()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    #calls: Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits()V
    invoke-static {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->access$700(Lcom/android/dialer/dialpad/DialpadFragment;)V

    return-void
.end method

.method public getRecipients()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    #getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mRecipients:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->access$600(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method
