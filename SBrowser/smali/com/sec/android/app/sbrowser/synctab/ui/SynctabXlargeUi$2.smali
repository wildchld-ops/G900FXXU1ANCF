.class Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$2;
.super Ljava/lang/Object;
.source "SynctabXlargeUi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mExpAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->access$000(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;)Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;->getSelectedGroup()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->getUrl(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->callOnClickListener(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->finish()V

    return-void
.end method
