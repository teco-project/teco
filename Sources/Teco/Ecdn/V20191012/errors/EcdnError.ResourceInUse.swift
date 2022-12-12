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
    public struct ResourceInUse: TCEcdnErrorType {
        enum Code: String {
            case ecdnDomainExists = "ResourceInUse.EcdnDomainExists"
            case ecdnOpInProgress = "ResourceInUse.EcdnOpInProgress"
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
        
        /// 域名已存在。
        public static var ecdnDomainExists: ResourceInUse {
            ResourceInUse(.ecdnDomainExists)
        }
        
        /// ECDN资源正在被操作中。
        public static var ecdnOpInProgress: ResourceInUse {
            ResourceInUse(.ecdnOpInProgress)
        }
        
        public func asEcdnError() -> TCEcdnError {
            let code: TCEcdnError.Code
            switch self.error {
            case .ecdnDomainExists: 
                code = .resourceInUse_EcdnDomainExists
            case .ecdnOpInProgress: 
                code = .resourceInUse_EcdnOpInProgress
            }
            return TCEcdnError(code, context: self.context)
        }
    }
}
