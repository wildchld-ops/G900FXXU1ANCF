.class Lcom/android/contacts/detail/ContactDetailFragment$VappViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VappViewEntry"
.end annotation


# instance fields
.field public data:Ljava/lang/String;

.field public videoCallDescription:Ljava/lang/String;

.field public videoCallIcon:I

.field public videoCallIntent:Landroid/content/Intent;

.field public voiceCallDescription:Ljava/lang/String;

.field public voiceCallIcon:I

.field public voiceCallIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$VappViewEntry;->voiceCallIntent:Landroid/content/Intent;

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$VappViewEntry;->voiceCallIcon:I

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$VappViewEntry;->videoCallIntent:Landroid/content/Intent;

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$VappViewEntry;->videoCallIcon:I

    return-void
.end method
