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

extension TCBmError {
    public struct ResourceInUse: TCBmErrorType {
        enum Code: String {
            case flowBusy = "ResourceInUse.FlowBusy"
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
        
        /// 流程操作繁忙，请稍后重试。
        public static var flowBusy: ResourceInUse {
            ResourceInUse(.flowBusy)
        }
        
        public func asBmError() -> TCBmError {
            let code: TCBmError.Code
            switch self.error {
            case .flowBusy: 
                code = .resourceInUse_FlowBusy
            }
            return TCBmError(code, context: self.context)
        }
    }
}
