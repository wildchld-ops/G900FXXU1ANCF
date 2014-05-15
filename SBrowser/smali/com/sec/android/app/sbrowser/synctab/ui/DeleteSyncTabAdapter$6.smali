.class Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$6;
.super Ljava/lang/Object;
.source "DeleteSyncTabAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

.field final synthetic val$item:Landroid/view/View;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    iput p2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$6;->val$position:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$6;->val$item:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$6;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    iget v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$6;->val$position:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$6;->val$item:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->handleClick(ILandroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method
