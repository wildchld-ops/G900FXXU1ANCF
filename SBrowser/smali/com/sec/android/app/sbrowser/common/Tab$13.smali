.class Lcom/sec/android/app/sbrowser/common/Tab$13;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab;->associateWithApp(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$13;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public locationBarTextChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$13;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mAppAssociatedWith:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->access$5602(Lcom/sec/android/app/sbrowser/common/Tab;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/Tab$13;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1600(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->removeTextChangeListener(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;)V

    return-void
.end method
