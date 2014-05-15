.class public final Lcom/android/dialer/CallDetailActivity$ViewEntry;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewEntry"
.end annotation


# instance fields
.field public final primaryDescription:Ljava/lang/String;

.field public final primaryIntent:Landroid/content/Intent;

.field public secondaryDescription:Ljava/lang/String;

.field public secondaryIntent:Landroid/content/Intent;

.field public tertiaryDescription:Ljava/lang/String;

.field public tertiaryIntent:Landroid/content/Intent;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setSecondaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    return-void
.end method

.method public setTertiaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    return-void
.end method
