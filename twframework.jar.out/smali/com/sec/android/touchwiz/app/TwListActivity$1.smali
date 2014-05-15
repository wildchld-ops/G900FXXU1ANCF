.class Lcom/sec/android/touchwiz/app/TwListActivity$1;
.super Ljava/lang/Object;
.source "TwListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/sec/android/touchwiz/app/TwListActivity$1;->this$0:Lcom/sec/android/touchwiz/app/TwListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity$1;->this$0:Lcom/sec/android/touchwiz/app/TwListActivity;

    iget-object v0, v0, Lcom/sec/android/touchwiz/app/TwListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwListActivity$1;->this$0:Lcom/sec/android/touchwiz/app/TwListActivity;

    iget-object v1, v1, Lcom/sec/android/touchwiz/app/TwListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
