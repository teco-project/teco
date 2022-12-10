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

extension TCTdmqError {
    public struct ResourceUnavailable: TCErrorType {
        enum Code: String {
            case createFailed = "ResourceUnavailable.CreateFailed"
            case fundRequired = "ResourceUnavailable.FundRequired"
            case systemUpgrade = "ResourceUnavailable.SystemUpgrade"
            case other = "ResourceUnavailable"
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
        
        /// 发货异常。
        public static var createFailed: ResourceUnavailable {
            ResourceUnavailable(.createFailed)
        }
        
        /// 需要充值才可继续操作。
        public static var fundRequired: ResourceUnavailable {
            ResourceUnavailable(.fundRequired)
        }
        
        /// 系统升级。
        public static var systemUpgrade: ResourceUnavailable {
            ResourceUnavailable(.systemUpgrade)
        }
        
        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }
    }
}

extension TCTdmqError.ResourceUnavailable: Equatable {
    public static func == (lhs: TCTdmqError.ResourceUnavailable, rhs: TCTdmqError.ResourceUnavailable) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTdmqError.ResourceUnavailable: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTdmqError.ResourceUnavailable {
    public func toTdmqError() -> TCTdmqError {
        guard let code = TCTdmqError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTdmqError(code, context: self.context)
    }
}