.class Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$LazyHolder;
.super Ljava/lang/Object;
.source "SBrowserEventBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$LazyHolder;->INSTANCE:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$LazyHolder;->INSTANCE:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    return-object v0
.end method
