.class public Lcom/samsung/contacts/util/ContactVideoCallManager;
.super Ljava/lang/Object;
.source "ContactVideoCallManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final mIsVideoCall:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContactVideoCallManager"

    iput-object v0, p0, Lcom/samsung/contacts/util/ContactVideoCallManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/util/ContactVideoCallManager;->mIsVideoCall:Z

    const-string v0, "ContactVideoCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVTSupported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/contacts/util/ContactVideoCallManager;->mIsVideoCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isVideoCallButtonShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/util/ContactVideoCallManager;->mIsVideoCall:Z

    return v0
.end method
