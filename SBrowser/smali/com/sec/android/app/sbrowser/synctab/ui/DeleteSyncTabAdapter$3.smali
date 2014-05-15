.class Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$3;
.super Ljava/lang/Object;
.source "DeleteSyncTabAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    #calls: Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->selectAllCheckBoxClick()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->access$100(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)V

    return-void
.end method
