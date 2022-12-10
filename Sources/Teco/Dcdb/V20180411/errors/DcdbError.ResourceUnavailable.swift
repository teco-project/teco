//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCDcdbError {
    public struct ResourceUnavailable: TCErrorType {
        enum Code: String {
            case badInstanceStatus = "ResourceUnavailable.BadInstanceStatus"
            case cosApiFailed = "ResourceUnavailable.CosApiFailed"
            case instanceAlreadyDeleted = "ResourceUnavailable.InstanceAlreadyDeleted"
            case instanceHasBeenLocked = "ResourceUnavailable.InstanceHasBeenLocked"
            case instanceStatusAbnormal = "ResourceUnavailable.InstanceStatusAbnormal"
            case sgCheckFail = "ResourceUnavailable.SGCheckFail"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 实例状态错误，不能初始化。
        public static var badInstanceStatus: ResourceUnavailable {
            ResourceUnavailable(.badInstanceStatus)
        }
        
        /// COS API调用错误。
        public static var cosApiFailed: ResourceUnavailable {
            ResourceUnavailable(.cosApiFailed)
        }
        
        /// 数据库实例已被删除。
        public static var instanceAlreadyDeleted: ResourceUnavailable {
            ResourceUnavailable(.instanceAlreadyDeleted)
        }
        
        /// 数据库实例已经被锁定，当前无法操作。
        public static var instanceHasBeenLocked: ResourceUnavailable {
            ResourceUnavailable(.instanceHasBeenLocked)
        }
        
        /// 数据库实例状态不正确，当前无法操作。
        public static var instanceStatusAbnormal: ResourceUnavailable {
            ResourceUnavailable(.instanceStatusAbnormal)
        }
        
        public static var sgCheckFail: ResourceUnavailable {
            ResourceUnavailable(.sgCheckFail)
        }
    }
}

extension TCDcdbError.ResourceUnavailable: Equatable {
    public static func == (lhs: TCDcdbError.ResourceUnavailable, rhs: TCDcdbError.ResourceUnavailable) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDcdbError.ResourceUnavailable: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCDcdbError.ResourceUnavailable {
    public func toDcdbError() -> TCDcdbError {
        guard let code = TCDcdbError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCDcdbError(code, context: self.context)
    }
}