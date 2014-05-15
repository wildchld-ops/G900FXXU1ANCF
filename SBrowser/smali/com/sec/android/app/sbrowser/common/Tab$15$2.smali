.class Lcom/sec/android/app/sbrowser/common/Tab$15$2;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab$15;->doStopLoading(JLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/Tab$15;

.field final synthetic val$mQuickAccessUtilityController:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

.field final synthetic val$originalUrl:Ljava/lang/String;

.field final synthetic val$redirectedUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab$15;Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$2;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$15;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$2;->val$mQuickAccessUtilityController:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$2;->val$redirectedUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$2;->val$originalUrl:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$2;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$15;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/Tab$15;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$2;->val$mQuickAccessUtilityController:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$2;->val$redirectedUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/Tab$15$2;->val$originalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->handTouchIconUpdate(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
