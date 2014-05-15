.class Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$2;
.super Ljava/lang/Object;
.source "SynctabBaseUI.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$listView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$2;->val$listView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v2, 0x7f0a0079

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$2;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->deleteTabsConfirm()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$2;->val$listView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
