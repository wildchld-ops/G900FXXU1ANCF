.class Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$1;
.super Ljava/lang/Object;
.source "LoadQuickAccessPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->initQuickAccessView(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Landroid/widget/FrameLayout;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->isQuickAccessShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setQuickAccessView()V

    :cond_0
    return-void
.end method
