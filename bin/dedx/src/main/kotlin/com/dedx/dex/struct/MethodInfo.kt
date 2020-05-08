package com.dedx.dex.struct

import com.dedx.dex.struct.type.TypeBox

class MethodInfo private constructor(
    val name: String,
    val retType: TypeBox,
    val args: List<TypeBox>,
    val declClass: ClassInfo
) {

    var descriptor: String? = null
    companion object {
        fun create(dex: DexNode, mthId: Int): MethodInfo {
            val mthId = dex.getMethodId(mthId)
            val name = dex.getString(mthId.nameIndex)
            val declClass = ClassInfo.fromDex(dex, mthId.declaringClassIndex)

            val proto = dex.getProtoId(mthId.protoIndex)
            val retType = dex.getType(proto.returnTypeIndex)
            val args = dex.getTypeList(proto.parametersOffset)
            return MethodInfo(name, retType, args, declClass)
        }

        fun fromDex(dex: DexNode, mthId: Int): MethodInfo {
            var mth = InfoStorage.getMethod(dex, mthId)
            if (mth != null) {
                return mth
            }
            mth = create(dex, mthId)
            return InfoStorage.putMethod(dex, mthId, mth)
        }
    }

    fun parseSignature(): String {
        if (this.descriptor == null) {
            val descriptor = StringBuilder("(")
            for (arg in args) {
                descriptor.append(arg.descriptor())
            }
            descriptor.append(")${retType.descriptor()}")
            this.descriptor = descriptor.toString()
        }
        return this.descriptor!!
    }

    override fun equals(other: Any?): Boolean {
        if (other == null || other !is MethodInfo) {
            return false
        }
        return declClass == other.declClass && name == other.name && retType == other.retType && args == other.args
    }

    override fun toString(): String {
        return "$declClass $name ${parseSignature()}"
    }
}
