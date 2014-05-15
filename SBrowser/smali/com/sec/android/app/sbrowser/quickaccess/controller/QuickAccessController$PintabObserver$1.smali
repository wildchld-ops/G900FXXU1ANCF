.class Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver$1;
.super Ljava/lang/Object;
.source "QuickAccessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver$1;->this$1:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver$1;->this$1:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->selectItemsFromDB()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver$1;->this$1:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->mLoadQuickAccessUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;)Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->getmQuickAccessUtilityController()Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->setPintTabList(Ljava/util/ArrayList;)V

    return-void
.end method
