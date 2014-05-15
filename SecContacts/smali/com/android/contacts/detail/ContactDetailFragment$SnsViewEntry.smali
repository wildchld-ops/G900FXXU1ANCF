.class Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnsViewEntry"
.end annotation


# instance fields
.field public accountIcon:Landroid/graphics/drawable/Drawable;

.field public applayViEffect:Z

.field public currentPage:I

.field public intent:Landroid/content/Intent;

.field public like:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public photoUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public place:Ljava/lang/String;

.field public reply:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;

.field public timeStampInMs:J


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->currentPage:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$SnsViewEntry;->applayViEffect:Z

    return-void
.end method
