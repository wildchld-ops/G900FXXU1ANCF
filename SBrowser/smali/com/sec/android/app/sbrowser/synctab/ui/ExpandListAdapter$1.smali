.class Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$1;
.super Landroid/database/DataSetObserver;
.source "ExpandListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
