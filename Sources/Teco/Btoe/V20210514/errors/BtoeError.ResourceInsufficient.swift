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

extension TCBtoeError {
    public struct ResourceInsufficient: TCBtoeErrorType {
        enum Code: String {
            case lowBalance = "ResourceInsufficient.LowBalance"
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
        
        /// 余额不足。
        public static var lowBalance: ResourceInsufficient {
            ResourceInsufficient(.lowBalance)
        }
        
        public func asBtoeError() -> TCBtoeError {
            let code: TCBtoeError.Code
            switch self.error {
            case .lowBalance: 
                code = .resourceInsufficient_LowBalance
            }
            return TCBtoeError(code, context: self.context)
        }
    }
}
