.class Lcom/sec/android/app/sbrowser/infobar/WebAlert$1;
.super Ljava/lang/Object;
.source "WebAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobar/WebAlert;->createWebAlertView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$1;->this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$1;->this$0:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->dismissAlertInfo()V

    return-void
.end method
