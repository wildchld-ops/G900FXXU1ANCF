.class final Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForDoubleFling;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForDoubleFling"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForDoubleFling;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForDoubleFling;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/16 v1, 0x64

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingMode:I

    return-void
.end method
