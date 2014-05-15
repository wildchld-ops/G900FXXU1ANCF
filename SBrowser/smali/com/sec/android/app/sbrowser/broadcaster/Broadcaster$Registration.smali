.class Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;
.super Ljava/lang/Object;
.source "Broadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Registration"
.end annotation


# instance fields
.field next:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

.field prev:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;

.field senderWhat:I

.field targetWhats:[I

.field targets:[Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->this$0:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;-><init>(Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;)V

    return-void
.end method
