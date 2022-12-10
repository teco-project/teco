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

extension TCFtError {
    public struct ResourceUnavailable: TCErrorType {
        enum Code: String {
            case delivering = "ResourceUnavailable.Delivering"
            case freeze = "ResourceUnavailable.Freeze"
            case getAuthInfoError = "ResourceUnavailable.GetAuthInfoError"
            case inArrears = "ResourceUnavailable.InArrears"
            case lowBalance = "ResourceUnavailable.LowBalance"
            case notExist = "ResourceUnavailable.NotExist"
            case notReady = "ResourceUnavailable.NotReady"
            case recover = "ResourceUnavailable.Recover"
            case stopUsing = "ResourceUnavailable.StopUsing"
            case unknownStatus = "ResourceUnavailable.UnknownStatus"
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
        
        /// 资源正在发货中。
        public static var delivering: ResourceUnavailable {
            ResourceUnavailable(.delivering)
        }
        
        /// 帐号已被冻结。
        public static var freeze: ResourceUnavailable {
            ResourceUnavailable(.freeze)
        }
        
        /// 获取认证信息失败。
        public static var getAuthInfoError: ResourceUnavailable {
            ResourceUnavailable(.getAuthInfoError)
        }
        
        /// 帐号已欠费。
        public static var inArrears: ResourceUnavailable {
            ResourceUnavailable(.inArrears)
        }
        
        /// 余额不足。
        public static var lowBalance: ResourceUnavailable {
            ResourceUnavailable(.lowBalance)
        }
        
        /// 计费状态未知，请确认是否已在控制台开通服务。
        public static var notExist: ResourceUnavailable {
            ResourceUnavailable(.notExist)
        }
        
        /// 服务未开通。
        public static var notReady: ResourceUnavailable {
            ResourceUnavailable(.notReady)
        }
        
        /// 资源已被回收。
        public static var recover: ResourceUnavailable {
            ResourceUnavailable(.recover)
        }
        
        /// 帐号已停服。
        public static var stopUsing: ResourceUnavailable {
            ResourceUnavailable(.stopUsing)
        }
        
        /// 计费状态未知。
        public static var unknownStatus: ResourceUnavailable {
            ResourceUnavailable(.unknownStatus)
        }
    }
}

extension TCFtError.ResourceUnavailable: Equatable {
    public static func == (lhs: TCFtError.ResourceUnavailable, rhs: TCFtError.ResourceUnavailable) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCFtError.ResourceUnavailable: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCFtError.ResourceUnavailable {
    public func toFtError() -> TCFtError {
        guard let code = TCFtError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCFtError(code, context: self.context)
    }
}