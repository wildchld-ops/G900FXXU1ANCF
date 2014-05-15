.class Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionViewEntry"
.end annotation


# instance fields
.field public accountIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public accountIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public accountNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public kind:Ljava/lang/String;

.field public mimetype:Ljava/lang/String;

.field public secondaryActionDescription:I

.field public secondaryActionIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public typeString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->secondaryIntent:Landroid/content/Intent;

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->secondaryActionIcon:I

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->secondaryActionDescription:I

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->accountIcon:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->accountNames:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ConnectionViewEntry;->accountIntents:Ljava/util/ArrayList;

    return-void
.end method
