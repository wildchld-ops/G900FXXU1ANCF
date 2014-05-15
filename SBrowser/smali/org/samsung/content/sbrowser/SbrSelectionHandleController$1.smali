.class Lorg/samsung/content/sbrowser/SbrSelectionHandleController$1;
.super Ljava/lang/Object;
.source "SbrSelectionHandleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->hideSelectionActionPopupWindowAfterDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/SbrSelectionHandleController;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$1;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController$1;->this$0:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->hideSelectionActionPopupWindow()V

    return-void
.end method
