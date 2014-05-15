.class Lcom/sec/android/app/sbrowser/infobar/WebAlert$3;
.super Ljava/lang/Object;
.source "WebAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobar/WebAlert;->initButton(Landroid/view/View;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

.field final synthetic val$pConfirm:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/infobar/WebAlert;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$3;->this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$3;->val$pConfirm:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$3;->this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$3;->val$pConfirm:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->notifyConfirmation(Z)V

    return-void
.end method
