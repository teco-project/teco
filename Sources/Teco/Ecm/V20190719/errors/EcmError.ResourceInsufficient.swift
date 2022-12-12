//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCEcmError {
    public struct ResourceInsufficient: TCEcmErrorType {
        enum Code: String {
            case instanceQuotaNotEnough = "ResourceInsufficient.InstanceQuotaNotEnough"
            case invaildPrivateImageNum = "ResourceInsufficient.InvaildPrivateImageNum"
            case ipQuotaNotEnough = "ResourceInsufficient.IPQuotaNotEnough"
            case other = "ResourceInsufficient"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
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
        
        /// 实例资源不足。
        public static var instanceQuotaNotEnough: ResourceInsufficient {
            ResourceInsufficient(.instanceQuotaNotEnough)
        }
        
        /// 私有镜像数量超出限制。
        public static var invaildPrivateImageNum: ResourceInsufficient {
            ResourceInsufficient(.invaildPrivateImageNum)
        }
        
        /// IP资源不足。
        public static var ipQuotaNotEnough: ResourceInsufficient {
            ResourceInsufficient(.ipQuotaNotEnough)
        }
        
        /// 资源不足。
        public static var other: ResourceInsufficient {
            ResourceInsufficient(.other)
        }
        
        public func asEcmError() -> TCEcmError {
            let code: TCEcmError.Code
            switch self.error {
            case .instanceQuotaNotEnough: 
                code = .resourceInsufficient_InstanceQuotaNotEnough
            case .invaildPrivateImageNum: 
                code = .resourceInsufficient_InvaildPrivateImageNum
            case .ipQuotaNotEnough: 
                code = .resourceInsufficient_IPQuotaNotEnough
            case .other: 
                code = .resourceInsufficient
            }
            return TCEcmError(code, context: self.context)
        }
    }
}
