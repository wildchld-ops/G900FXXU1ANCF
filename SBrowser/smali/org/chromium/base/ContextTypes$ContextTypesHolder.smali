.class Lorg/chromium/base/ContextTypes$ContextTypesHolder;
.super Ljava/lang/Object;
.source "ContextTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ContextTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextTypesHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/chromium/base/ContextTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/base/ContextTypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/base/ContextTypes;-><init>(Lorg/chromium/base/ContextTypes$1;)V

    sput-object v0, Lorg/chromium/base/ContextTypes$ContextTypesHolder;->INSTANCE:Lorg/chromium/base/ContextTypes;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/chromium/base/ContextTypes;
    .locals 1

    sget-object v0, Lorg/chromium/base/ContextTypes$ContextTypesHolder;->INSTANCE:Lorg/chromium/base/ContextTypes;

    return-object v0
.end method
