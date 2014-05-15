.class Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$1;
.super Ljava/lang/Object;
.source "SynctabBaseUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->showUndoBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

.field final synthetic val$temp:Lcom/sec/android/app/sbrowser/common/UndoBarController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;Lcom/sec/android/app/sbrowser/common/UndoBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$1;->val$temp:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$1;->val$temp:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->deleteTabsConfirm()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    return v0
.end method
