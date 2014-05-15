.class Lcom/samsung/dialer/widget/CallLogListFragment$2;
.super Ljava/lang/Object;
.source "CallLogListFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/widget/CallLogListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/widget/CallLogListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/widget/CallLogListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/widget/CallLogListFragment$2;->this$0:Lcom/samsung/dialer/widget/CallLogListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/samsung/dialer/widget/CallLogListFragment$2;->this$0:Lcom/samsung/dialer/widget/CallLogListFragment;

    move-object v1, p1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/dialer/widget/CallLogListFragment;->onListItemClick(Lcom/sec/android/touchwiz/widget/TwListView;Landroid/view/View;IJ)V

    return-void
.end method
