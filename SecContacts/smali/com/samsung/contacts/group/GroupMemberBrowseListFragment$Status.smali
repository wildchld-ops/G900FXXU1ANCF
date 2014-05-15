.class public final enum Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;
.super Ljava/lang/Enum;
.source "GroupMemberBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

.field public static final enum LOADED:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

.field public static final enum LOADING:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;->LOADING:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    new-instance v0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;->LOADED:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    sget-object v1, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;->LOADING:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;->LOADED:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;->$VALUES:[Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;
    .locals 1

    const-class v0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    return-object v0
.end method

.method public static values()[Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;->$VALUES:[Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    invoke-virtual {v0}, [Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    return-object v0
.end method
