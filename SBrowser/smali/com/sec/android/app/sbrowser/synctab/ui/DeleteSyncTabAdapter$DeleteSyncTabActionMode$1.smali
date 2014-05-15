.class Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode$1;
.super Ljava/lang/Object;
.source "DeleteSyncTabAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode$1;->this$1:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode$1;->this$1:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->mMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->access$300(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
