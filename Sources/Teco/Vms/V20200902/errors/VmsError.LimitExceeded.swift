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

extension TCVmsError {
    public struct LimitExceeded: TCErrorType {
        enum Code: String {
            case deliveryFrequencyLimit = "LimitExceeded.DeliveryFrequencyLimit"
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
        
        /// 下发语音消息时命中频率限制策略，如需申请不受频率限制的测试号码或更改限制策略，请<a href="https://cloud.tencent.com/document/product/1128/37720">联系我们</a>。
        public static var deliveryFrequencyLimit: LimitExceeded {
            LimitExceeded(.deliveryFrequencyLimit)
        }
    }
}

extension TCVmsError.LimitExceeded: Equatable {
    public static func == (lhs: TCVmsError.LimitExceeded, rhs: TCVmsError.LimitExceeded) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCVmsError.LimitExceeded: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCVmsError.LimitExceeded {
    public func toVmsError() -> TCVmsError {
        guard let code = TCVmsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCVmsError(code, context: self.context)
    }
}