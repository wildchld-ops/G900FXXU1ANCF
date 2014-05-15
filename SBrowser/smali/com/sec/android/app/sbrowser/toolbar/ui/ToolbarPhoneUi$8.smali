.class Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;
.super Ljava/lang/Object;
.source "ToolbarPhoneUi.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->createToolBarViewTreeObserver(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;->val$delay:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mToolbarMainLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$8;->val$delay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
