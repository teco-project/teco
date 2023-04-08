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

extension TCVpcError {
    public struct FailedOperation: TCVpcErrorType {
        enum Code: String {
            case addressEniInfoNotFound = "FailedOperation.AddressEniInfoNotFound"
            case balanceInsufficient = "FailedOperation.BalanceInsufficient"
            case invalidRegion = "FailedOperation.InvalidRegion"
            case masterEniNotFound = "FailedOperation.MasterEniNotFound"
            case netDetectTimeOut = "FailedOperation.NetDetectTimeOut"
            case taskFailed = "FailedOperation.TaskFailed"
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

        /// 地址没有弹性网卡信息。
        public static var addressEniInfoNotFound: FailedOperation {
            FailedOperation(.addressEniInfoNotFound)
        }

        /// 账户余额不足。
        public static var balanceInsufficient: FailedOperation {
            FailedOperation(.balanceInsufficient)
        }

        /// 不支持的地域。
        public static var invalidRegion: FailedOperation {
            FailedOperation(.invalidRegion)
        }

        /// 未找到实例的主网卡。
        public static var masterEniNotFound: FailedOperation {
            FailedOperation(.masterEniNotFound)
        }

        /// 网络探测超时，请稍后重试。
        public static var netDetectTimeOut: FailedOperation {
            FailedOperation(.netDetectTimeOut)
        }

        /// 任务执行失败。
        public static var taskFailed: FailedOperation {
            FailedOperation(.taskFailed)
        }

        public func asVpcError() -> TCVpcError {
            let code: TCVpcError.Code
            switch self.error {
            case .addressEniInfoNotFound:
                code = .failedOperation_AddressEniInfoNotFound
            case .balanceInsufficient:
                code = .failedOperation_BalanceInsufficient
            case .invalidRegion:
                code = .failedOperation_InvalidRegion
            case .masterEniNotFound:
                code = .failedOperation_MasterEniNotFound
            case .netDetectTimeOut:
                code = .failedOperation_NetDetectTimeOut
            case .taskFailed:
                code = .failedOperation_TaskFailed
            }
            return TCVpcError(code, context: self.context)
        }
    }
}
