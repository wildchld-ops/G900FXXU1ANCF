.class final Lcom/android/dialer/CallDetailActivity$ActivityReference;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityReference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method private constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$ActivityReference;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity$ActivityReference;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    return-void
.end method


# virtual methods
.method public get()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$ActivityReference;->this$0:Lcom/android/dialer/CallDetailActivity;

    return-object v0
.end method
