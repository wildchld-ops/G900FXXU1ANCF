.class public final Lcom/samsung/contacts/group/AutoGroupingQueryHelper$OrganizationGroupCount;
.super Ljava/lang/Object;
.source "AutoGroupingQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/AutoGroupingQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OrganizationGroupCount"
.end annotation


# static fields
.field public static final PROJECTION_ORGANIZATION_GROUPCNT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "countlist"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/group/AutoGroupingQueryHelper$OrganizationGroupCount;->PROJECTION_ORGANIZATION_GROUPCNT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
