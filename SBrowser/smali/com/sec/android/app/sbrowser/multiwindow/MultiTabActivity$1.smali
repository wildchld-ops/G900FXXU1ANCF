.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$1;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setisClickDisabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->misClickDisabled:Z

    return-void
.end method
