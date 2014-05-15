.class Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$8;
.super Ljava/lang/Object;
.source "InfoBarContainer.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->showAndAnimateNextInfoBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$8;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, -0x3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$8;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$700(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$8;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$700(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$8;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$700(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$8;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$700(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$8;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$700(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
