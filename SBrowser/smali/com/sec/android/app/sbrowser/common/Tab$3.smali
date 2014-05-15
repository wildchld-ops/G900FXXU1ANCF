.class Lcom/sec/android/app/sbrowser/common/Tab$3;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$3;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$3;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabHost:Lcom/sec/android/app/sbrowser/common/Tab$TabHost;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1300(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/common/Tab$TabHost;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$3;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab$TabHost;->closeTabFromTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    return-void
.end method
