.class Lsstream/lib/covers/MessengerProvider$Request;
.super Ljava/lang/Object;
.source "MessengerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsstream/lib/covers/MessengerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Request"
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mIsSent:Z

.field mListener:Lsstream/lib/covers/StreamUpdateListener;

.field final synthetic this$0:Lsstream/lib/covers/MessengerProvider;


# direct methods
.method constructor <init>(Lsstream/lib/covers/MessengerProvider;Landroid/os/Bundle;Lsstream/lib/covers/StreamUpdateListener;Z)V
    .locals 0

    iput-object p1, p0, Lsstream/lib/covers/MessengerProvider$Request;->this$0:Lsstream/lib/covers/MessengerProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsstream/lib/covers/MessengerProvider$Request;->mBundle:Landroid/os/Bundle;

    iput-object p3, p0, Lsstream/lib/covers/MessengerProvider$Request;->mListener:Lsstream/lib/covers/StreamUpdateListener;

    iput-boolean p4, p0, Lsstream/lib/covers/MessengerProvider$Request;->mIsSent:Z

    return-void
.end method
