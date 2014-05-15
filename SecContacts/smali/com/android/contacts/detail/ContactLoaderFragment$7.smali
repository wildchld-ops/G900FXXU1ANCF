.class Lcom/android/contacts/detail/ContactLoaderFragment$7;
.super Landroid/database/ContentObserver;
.source "ContactLoaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactLoaderFragment;->registerRCSeObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactLoaderFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$7;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-static {}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChange, Own Caps changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$7;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->startRcsCapsLoading()V

    return-void
.end method
