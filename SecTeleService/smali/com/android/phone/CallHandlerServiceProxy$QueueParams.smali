.class Lcom/android/phone/CallHandlerServiceProxy$QueueParams;
.super Ljava/lang/Object;
.source "CallHandlerServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallHandlerServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueParams"
.end annotation


# instance fields
.field private final mArg:Ljava/lang/Object;

.field private final mMethod:I


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mMethod:I

    iput-object p2, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mMethod:I

    return v0
.end method
