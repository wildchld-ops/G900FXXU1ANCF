.class Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator$1;
.super Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
.source "TabSwitchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    return-void
.end method
