.class public Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;
.super Ljava/lang/Object;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactEntry"
.end annotation


# instance fields
.field public contactId:J

.field public lookupKey:Ljava/lang/String;

.field public lookupKeyUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public photoUri:Landroid/net/Uri;

.field public presenceIcon:Landroid/graphics/drawable/Drawable;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
