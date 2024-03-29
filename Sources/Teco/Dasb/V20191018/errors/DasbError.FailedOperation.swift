//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension TCDasbError {
    public struct FailedOperation: TCDasbErrorType {
        enum Code: String {
            case authFailed = "FailedOperation.AuthFailed"
            case connectionFailed = "FailedOperation.ConnectionFailed"
            case dataNotFound = "FailedOperation.DataNotFound"
            case duplicateData = "FailedOperation.DuplicateData"
            case tooFrequent = "FailedOperation.TooFrequent"
            case vpcDeployed = "FailedOperation.VPCDeployed"
            case other = "FailedOperation"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 账号或密码错误。
        ///
        /// 请检查账号或密码信息。
        public static var authFailed: FailedOperation {
            FailedOperation(.authFailed)
        }

        /// 连接服务器失败。
        ///
        /// 请检查网络之后重试。
        public static var connectionFailed: FailedOperation {
            FailedOperation(.connectionFailed)
        }

        /// 目标数据不存在。
        public static var dataNotFound: FailedOperation {
            FailedOperation(.dataNotFound)
        }

        /// 重复数据。
        public static var duplicateData: FailedOperation {
            FailedOperation(.duplicateData)
        }

        /// 操作过于频繁，请稍后再试。
        ///
        /// 稍后重试
        public static var tooFrequent: FailedOperation {
            FailedOperation(.tooFrequent)
        }

        /// 该VPC已开通服务，请选择其他VPC。
        ///
        /// 请选择其他未开通过服务的VPC。
        public static var vpcDeployed: FailedOperation {
            FailedOperation(.vpcDeployed)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asDasbError() -> TCDasbError {
            let code: TCDasbError.Code
            switch self.error {
            case .authFailed:
                code = .failedOperation_AuthFailed
            case .connectionFailed:
                code = .failedOperation_ConnectionFailed
            case .dataNotFound:
                code = .failedOperation_DataNotFound
            case .duplicateData:
                code = .failedOperation_DuplicateData
            case .tooFrequent:
                code = .failedOperation_TooFrequent
            case .vpcDeployed:
                code = .failedOperation_VPCDeployed
            case .other:
                code = .failedOperation
            }
            return TCDasbError(code, context: self.context)
        }
    }
}
