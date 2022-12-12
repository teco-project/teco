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

extension TCFmuError {
    public struct ResourcesSoldOut: TCFmuErrorType {
        enum Code: String {
            case chargeStatusException = "ResourcesSoldOut.ChargeStatusException"
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
        
        /// 帐号已欠费。
        public static var chargeStatusException: ResourcesSoldOut {
            ResourcesSoldOut(.chargeStatusException)
        }
        
        public func asFmuError() -> TCFmuError {
            let code: TCFmuError.Code
            switch self.error {
            case .chargeStatusException: 
                code = .resourcesSoldOut_ChargeStatusException
            }
            return TCFmuError(code, context: self.context)
        }
    }
}
