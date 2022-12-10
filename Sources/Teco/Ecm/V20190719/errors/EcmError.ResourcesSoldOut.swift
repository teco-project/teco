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

extension TCEcmError {
    public struct ResourcesSoldOut: TCErrorType {
        enum Code: String {
            case loadBalancerSoldOut = "ResourcesSoldOut.LoadBalancerSoldOut"
            case specifiedInstanceType = "ResourcesSoldOut.SpecifiedInstanceType"
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
        
        /// 负载均衡资源已经售罄。
        public static var loadBalancerSoldOut: ResourcesSoldOut {
            ResourcesSoldOut(.loadBalancerSoldOut)
        }
        
        public static var specifiedInstanceType: ResourcesSoldOut {
            ResourcesSoldOut(.specifiedInstanceType)
        }
    }
}

extension TCEcmError.ResourcesSoldOut: Equatable {
    public static func == (lhs: TCEcmError.ResourcesSoldOut, rhs: TCEcmError.ResourcesSoldOut) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEcmError.ResourcesSoldOut: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEcmError.ResourcesSoldOut {
    public func toEcmError() -> TCEcmError {
        guard let code = TCEcmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCEcmError(code, context: self.context)
    }
}