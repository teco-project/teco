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

extension TCEcdnError {
    public struct LimitExceeded: TCEcdnErrorType {
        enum Code: String {
            case ecdnDomainOpTooOften = "LimitExceeded.EcdnDomainOpTooOften"
            case ecdnPurgePathExceedBatchLimit = "LimitExceeded.EcdnPurgePathExceedBatchLimit"
            case ecdnPurgePathExceedDayLimit = "LimitExceeded.EcdnPurgePathExceedDayLimit"
            case ecdnPurgeUrlExceedBatchLimit = "LimitExceeded.EcdnPurgeUrlExceedBatchLimit"
            case ecdnPurgeUrlExceedDayLimit = "LimitExceeded.EcdnPurgeUrlExceedDayLimit"
            case ecdnUserTooManyDomains = "LimitExceeded.EcdnUserTooManyDomains"
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
        
        /// 域名操作过于频繁。
        public static var ecdnDomainOpTooOften: LimitExceeded {
            LimitExceeded(.ecdnDomainOpTooOften)
        }
        
        /// 刷新的目录数量超过单次限制。
        public static var ecdnPurgePathExceedBatchLimit: LimitExceeded {
            LimitExceeded(.ecdnPurgePathExceedBatchLimit)
        }
        
        /// 刷新的目录数量超过每日限制。
        public static var ecdnPurgePathExceedDayLimit: LimitExceeded {
            LimitExceeded(.ecdnPurgePathExceedDayLimit)
        }
        
        /// 刷新的Url数量超过单次限制。
        public static var ecdnPurgeUrlExceedBatchLimit: LimitExceeded {
            LimitExceeded(.ecdnPurgeUrlExceedBatchLimit)
        }
        
        /// 刷新的Url数量超过每日限额。
        public static var ecdnPurgeUrlExceedDayLimit: LimitExceeded {
            LimitExceeded(.ecdnPurgeUrlExceedDayLimit)
        }
        
        /// 接入域名数超出限制。
        public static var ecdnUserTooManyDomains: LimitExceeded {
            LimitExceeded(.ecdnUserTooManyDomains)
        }
        
        public func asEcdnError() -> TCEcdnError {
            let code: TCEcdnError.Code
            switch self.error {
            case .ecdnDomainOpTooOften: 
                code = .limitExceeded_EcdnDomainOpTooOften
            case .ecdnPurgePathExceedBatchLimit: 
                code = .limitExceeded_EcdnPurgePathExceedBatchLimit
            case .ecdnPurgePathExceedDayLimit: 
                code = .limitExceeded_EcdnPurgePathExceedDayLimit
            case .ecdnPurgeUrlExceedBatchLimit: 
                code = .limitExceeded_EcdnPurgeUrlExceedBatchLimit
            case .ecdnPurgeUrlExceedDayLimit: 
                code = .limitExceeded_EcdnPurgeUrlExceedDayLimit
            case .ecdnUserTooManyDomains: 
                code = .limitExceeded_EcdnUserTooManyDomains
            }
            return TCEcdnError(code, context: self.context)
        }
    }
}
