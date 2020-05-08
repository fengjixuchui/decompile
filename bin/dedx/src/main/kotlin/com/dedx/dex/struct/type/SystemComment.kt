package com.dedx.dex.struct.type

object DalvikAnnotationDefault : ObjectType("dalvik.annotation.AnnotationDefault")

object DalvikEnclosingClass : ObjectType("dalvik.annotation.EnclosingClass")

object DalvikEnclosingMethod : ObjectType("dalvik.annotation.EnclosingMethod")

object DalvikInnerClass : ObjectType("dalvik.annotation.InnerClass")

object DalvikMethodParameters : ObjectType("dalvik.annotation.MethodParameters")

object DalvikSigature : ObjectType("dalvik.annotation.Signature")

object DalvikThrows : ObjectType("dalvik.annotation.Throws")

fun isSystemCommentType(other: ObjectType) = (other == DalvikAnnotationDefault) or
        (other == DalvikEnclosingClass) || (other == DalvikEnclosingMethod) or
        (other == DalvikInnerClass) || (other == DalvikMethodParameters) or
        (other == DalvikSigature) || (other == DalvikThrows)
