.class Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$1;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;

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

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->access$000(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;)Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;->setSelectedGroup(I)V

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->access$100(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->access$200(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method
