.class Lcom/android/contacts/detail/ContactDetailFragment$SeparatorEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeparatorEntry"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorEntry;->mIsPrimary:Z

    return-void
.end method
