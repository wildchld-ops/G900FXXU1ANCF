.class Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$1;
.super Ljava/lang/Object;
.source "ToolbarPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->initializeUiElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->isPopupMenuDismissed:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->access$000(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->createPopupMenu()V

    :cond_0
    return-void
.end method
