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

extension TCSoeError {
    public struct ResourceInsufficient: TCErrorType {
        enum Code: String {
            case serverTimeout = "ResourceInsufficient.ServerTimeout"
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
        
        /// 评测超时，请检查语音数据大小。
        public static var serverTimeout: ResourceInsufficient {
            ResourceInsufficient(.serverTimeout)
        }
    }
}

extension TCSoeError.ResourceInsufficient: Equatable {
    public static func == (lhs: TCSoeError.ResourceInsufficient, rhs: TCSoeError.ResourceInsufficient) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSoeError.ResourceInsufficient: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSoeError.ResourceInsufficient {
    public func toSoeError() -> TCSoeError {
        guard let code = TCSoeError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCSoeError(code, context: self.context)
    }
}