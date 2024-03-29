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

extension TCEmrError {
    public struct FailedOperation: TCEmrErrorType {
        enum Code: String {
            case checkIfSupportPodStretch = "FailedOperation.CheckIfSupportPodStretch"
            case duplicateOrderNotAllowed = "FailedOperation.DuplicateOrderNotAllowed"
            case getCamRoleFailed = "FailedOperation.GetCamRoleFailed"
            case getCamServerFailed = "FailedOperation.GetCamServerFailed"
            case getCvmConfigQuotaFailed = "FailedOperation.GetCvmConfigQuotaFailed"
            case getCvmServerFailed = "FailedOperation.GetCvmServerFailed"
            case getTradeServerFailed = "FailedOperation.GetTradeServerFailed"
            case notSupportPod = "FailedOperation.NotSupportPod"
            case refundCvmFailed = "FailedOperation.RefundCvmFailed"
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

        /// 操作失败。
        public static var checkIfSupportPodStretch: FailedOperation {
            FailedOperation(.checkIfSupportPodStretch)
        }

        /// 重复的订单，请检查emr控制台。
        public static var duplicateOrderNotAllowed: FailedOperation {
            FailedOperation(.duplicateOrderNotAllowed)
        }

        /// 获取cam角色失败。
        public static var getCamRoleFailed: FailedOperation {
            FailedOperation(.getCamRoleFailed)
        }

        /// 调用cam服务失败。
        public static var getCamServerFailed: FailedOperation {
            FailedOperation(.getCamServerFailed)
        }

        /// 获取cvm 规格信息失败。
        public static var getCvmConfigQuotaFailed: FailedOperation {
            FailedOperation(.getCvmConfigQuotaFailed)
        }

        /// 调用cvm服务失败。
        public static var getCvmServerFailed: FailedOperation {
            FailedOperation(.getCvmServerFailed)
        }

        /// 调去询价中心服务失败
        public static var getTradeServerFailed: FailedOperation {
            FailedOperation(.getTradeServerFailed)
        }

        /// 操作失败，不支持pod。
        public static var notSupportPod: FailedOperation {
            FailedOperation(.notSupportPod)
        }

        /// 操作失败。
        public static var refundCvmFailed: FailedOperation {
            FailedOperation(.refundCvmFailed)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asEmrError() -> TCEmrError {
            let code: TCEmrError.Code
            switch self.error {
            case .checkIfSupportPodStretch:
                code = .failedOperation_CheckIfSupportPodStretch
            case .duplicateOrderNotAllowed:
                code = .failedOperation_DuplicateOrderNotAllowed
            case .getCamRoleFailed:
                code = .failedOperation_GetCamRoleFailed
            case .getCamServerFailed:
                code = .failedOperation_GetCamServerFailed
            case .getCvmConfigQuotaFailed:
                code = .failedOperation_GetCvmConfigQuotaFailed
            case .getCvmServerFailed:
                code = .failedOperation_GetCvmServerFailed
            case .getTradeServerFailed:
                code = .failedOperation_GetTradeServerFailed
            case .notSupportPod:
                code = .failedOperation_NotSupportPod
            case .refundCvmFailed:
                code = .failedOperation_RefundCvmFailed
            case .other:
                code = .failedOperation
            }
            return TCEmrError(code, context: self.context)
        }
    }
}
