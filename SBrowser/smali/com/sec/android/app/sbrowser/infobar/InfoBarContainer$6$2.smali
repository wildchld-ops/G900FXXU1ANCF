.class Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6$2;
.super Ljava/lang/Object;
.source "InfoBarContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6$2;->this$1:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6$2;->this$1:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$6;->val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->notifyConfirmation(Z)V

    return-void
.end method
