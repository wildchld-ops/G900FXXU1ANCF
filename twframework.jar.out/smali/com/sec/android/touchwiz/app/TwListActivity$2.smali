.class Lcom/sec/android/touchwiz/app/TwListActivity$2;
.super Ljava/lang/Object;
.source "TwListActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/app/TwListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/app/TwListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/app/TwListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/app/TwListActivity$2;->this$0:Lcom/sec/android/touchwiz/app/TwListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity$2;->this$0:Lcom/sec/android/touchwiz/app/TwListActivity;

    move-object v1, p1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/app/TwListActivity;->onListItemClick(Lcom/sec/android/touchwiz/widget/TwListView;Landroid/view/View;IJ)V

    return-void
.end method
