.class public Lorg/chromium/sync/notifier/InvalidationPreferences$PrefKeys;
.super Ljava/lang/Object;
.source "InvalidationPreferences.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/sync/notifier/InvalidationPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefKeys"
.end annotation


# static fields
.field public static final SYNC_ACCT_NAME:Ljava/lang/String; = "sync_acct_name"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SYNC_ACCT_TYPE:Ljava/lang/String; = "sync_acct_type"

.field static final SYNC_TANGO_INTERNAL_STATE:Ljava/lang/String; = "sync_tango_internal_state"

.field public static final SYNC_TANGO_TYPES:Ljava/lang/String; = "sync_tango_types"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
