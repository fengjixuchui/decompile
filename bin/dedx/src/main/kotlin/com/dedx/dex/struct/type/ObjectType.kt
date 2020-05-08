package com.dedx.dex.struct.type

open class ObjectType(val typeName: String) {
    override fun equals(other: Any?): Boolean {
        if (other == null || other !is ObjectType) {
            return false
        }
        return typeName == other.typeName
    }

    fun descriptor() = "L${nameWithSlash()};"

    fun nameWithDot() = typeName

    fun nameWithSlash() = typeName.replace('.', '/')

    override fun hashCode(): Int {
        return toString().hashCode()
    }

    override fun toString(): String {
        return typeName
    }
}
