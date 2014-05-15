.class Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$12;
.super Ljava/lang/Object;
.source "LoadQuickAccessPhoneUi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$12;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$12;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->handleOnMostVisitedItemClick(Landroid/widget/AdapterView;I)V
    invoke-static {v0, p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->access$1500(Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;Landroid/widget/AdapterView;I)V

    return-void
.end method
