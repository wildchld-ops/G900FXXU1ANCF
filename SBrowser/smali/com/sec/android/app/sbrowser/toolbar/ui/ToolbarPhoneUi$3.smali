.class Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$3;
.super Ljava/lang/Object;
.source "ToolbarPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->setMultiwindowTextColorMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method
