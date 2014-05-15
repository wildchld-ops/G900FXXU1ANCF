.class Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4$1;
.super Ljava/lang/Object;
.source "TabListPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;

.field final synthetic val$nextLocalTabModel:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4$1;->this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4$1;->val$nextLocalTabModel:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4$1;->val$nextLocalTabModel:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4$1;->val$nextLocalTabModel:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/TabListPopup$4$1;->val$nextLocalTabModel:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    return-void
.end method
