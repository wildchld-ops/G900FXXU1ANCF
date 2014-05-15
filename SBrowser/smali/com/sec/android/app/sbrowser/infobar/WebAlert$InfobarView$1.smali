.class Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView$1;
.super Ljava/lang/Object;
.source "WebAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlert;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;

.field final synthetic val$this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView$1;->this$1:Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView$1;->val$this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView$1;->this$1:Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;->this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->dismissAlertInfo()V

    return-void
.end method
