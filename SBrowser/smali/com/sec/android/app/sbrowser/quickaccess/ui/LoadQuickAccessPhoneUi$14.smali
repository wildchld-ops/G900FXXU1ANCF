.class Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$14;
.super Ljava/lang/Object;
.source "LoadQuickAccessPhoneUi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$14;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$14;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mMostVisitedGridView:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$200(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->startEditMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$14;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->mDeleteBookmarkContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1700(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$14;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->startSlideUpAniamtion()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$14;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->draggedPosition:I
    invoke-static {v0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1802(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;I)I

    return v1
.end method
