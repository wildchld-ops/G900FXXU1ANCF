.class public Lcom/sec/android/app/sbrowser/common/UndoBarController;
.super Ljava/lang/Object;
.source "UndoBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;
    }
.end annotation


# instance fields
.field private mBarView:Landroid/view/View;

.field private mMessageView:Landroid/widget/TextView;

.field private mUndoListener:Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;

.field private mUndoMessage:Ljava/lang/CharSequence;

.field private misUndoBarClicked:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->misUndoBarClicked:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mBarView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mUndoListener:Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mBarView:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mBarView:Landroid/view/View;

    const v2, 0x7f0a007a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mBarView:Landroid/view/View;

    const v2, 0x7f0a007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/UndoBarController$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/UndoBarController$1;-><init>(Lcom/sec/android/app/sbrowser/common/UndoBarController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/common/UndoBarController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->misUndoBarClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/UndoBarController;)Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mUndoListener:Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;

    return-object v0
.end method


# virtual methods
.method public final hideUndoBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mBarView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mUndoMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public isUndoBarClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->misUndoBarClicked:Z

    return v0
.end method

.method public isUndoBarShown()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mUndoMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "undo_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mUndoMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mUndoMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mUndoMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->showUndoBar(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "undo_message"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mUndoMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUndoBarClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->misUndoBarClicked:Z

    return-void
.end method

.method public showUndoBar(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mUndoMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mUndoMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/UndoBarController;->mBarView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
