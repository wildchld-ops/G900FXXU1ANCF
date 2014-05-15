.class public Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;
.super Ljava/lang/Object;
.source "Broadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RegistrationRepresentation"
.end annotation


# instance fields
.field public senderWhat:I

.field public targetWhats:[I

.field public targets:[Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;->this$0:Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget v0, p2, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->senderWhat:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;->senderWhat:I

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Handler;

    check-cast v0, [Landroid/os/Handler;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;->targets:[Landroid/os/Handler;

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$Registration;->targetWhats:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster$RegistrationRepresentation;->targetWhats:[I

    return-void
.end method
