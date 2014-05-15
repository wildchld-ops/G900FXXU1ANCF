.class Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$3;
.super Ljava/lang/Object;
.source "ExpandListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    #calls: Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->showPopupMenu(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->access$000(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;Landroid/view/View;)V

    return-void
.end method
