.class Lorg/chromium/base/ActivityStatus$1$1;
.super Ljava/lang/Object;
.source "ActivityStatus.java"

# interfaces
.implements Lorg/chromium/base/ActivityStatus$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/ActivityStatus$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/ActivityStatus$1;


# direct methods
.method constructor <init>(Lorg/chromium/base/ActivityStatus$1;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/ActivityStatus$1$1;->this$0:Lorg/chromium/base/ActivityStatus$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(I)V
    .locals 0

    #calls: Lorg/chromium/base/ActivityStatus;->nativeOnActivityStateChange(I)V
    invoke-static {p1}, Lorg/chromium/base/ActivityStatus;->access$000(I)V

    return-void
.end method
