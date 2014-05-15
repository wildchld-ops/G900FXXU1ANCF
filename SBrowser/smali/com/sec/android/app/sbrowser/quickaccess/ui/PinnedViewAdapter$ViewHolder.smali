.class Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PinnedViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field domainTextView:Landroid/widget/TextView;

.field mFrameIconHolder:Landroid/widget/FrameLayout;

.field mostVisitedTitle:Landroid/widget/TextView;

.field quickLaunchIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;)V

    return-void
.end method
