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

extension TCCwpError {
    public struct FailedOperation: TCCwpErrorType {
        enum Code: String {
            case agentOffline = "FailedOperation.AgentOffline"
            case apiServerFail = "FailedOperation.APIServerFail"
            case export = "FailedOperation.Export"
            case licenseExceeded = "FailedOperation.LicenseExceeded"
            case machineDelete = "FailedOperation.MachineDelete"
            case noProfessionHost = "FailedOperation.NoProfessionHost"
            case partSeparate = "FailedOperation.PartSeparate"
            case protectStartFail = "FailedOperation.ProtectStartFail"
            case recover = "FailedOperation.Recover"
            case rescanVul = "FailedOperation.RescanVul"
            case singleSeparate = "FailedOperation.SingleSeparate"
            case tooManyStrategy = "FailedOperation.TooManyStrategy"
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

        /// 客户端已离线。
        public static var agentOffline: FailedOperation {
            FailedOperation(.agentOffline)
        }

        /// 调用API服务失败。
        public static var apiServerFail: FailedOperation {
            FailedOperation(.apiServerFail)
        }

        /// 导出文件失败。
        public static var export: FailedOperation {
            FailedOperation(.export)
        }

        /// 可用license数量不足，缺少1个license，请购买新license。
        public static var licenseExceeded: FailedOperation {
            FailedOperation(.licenseExceeded)
        }

        /// 卸载主机。
        public static var machineDelete: FailedOperation {
            FailedOperation(.machineDelete)
        }

        /// 无专业版主机。
        public static var noProfessionHost: FailedOperation {
            FailedOperation(.noProfessionHost)
        }

        /// 多台主机隔离，部分或全部失败。
        public static var partSeparate: FailedOperation {
            FailedOperation(.partSeparate)
        }

        /// 开启防护失败。
        public static var protectStartFail: FailedOperation {
            FailedOperation(.protectStartFail)
        }

        /// 回复木马失败。
        public static var recover: FailedOperation {
            FailedOperation(.recover)
        }

        /// 重新检测漏洞失败。
        public static var rescanVul: FailedOperation {
            FailedOperation(.rescanVul)
        }

        /// 单台主机隔离失败。
        public static var singleSeparate: FailedOperation {
            FailedOperation(.singleSeparate)
        }

        /// 创建基线策略超过上限。
        public static var tooManyStrategy: FailedOperation {
            FailedOperation(.tooManyStrategy)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asCwpError() -> TCCwpError {
            let code: TCCwpError.Code
            switch self.error {
            case .agentOffline:
                code = .failedOperation_AgentOffline
            case .apiServerFail:
                code = .failedOperation_APIServerFail
            case .export:
                code = .failedOperation_Export
            case .licenseExceeded:
                code = .failedOperation_LicenseExceeded
            case .machineDelete:
                code = .failedOperation_MachineDelete
            case .noProfessionHost:
                code = .failedOperation_NoProfessionHost
            case .partSeparate:
                code = .failedOperation_PartSeparate
            case .protectStartFail:
                code = .failedOperation_ProtectStartFail
            case .recover:
                code = .failedOperation_Recover
            case .rescanVul:
                code = .failedOperation_RescanVul
            case .singleSeparate:
                code = .failedOperation_SingleSeparate
            case .tooManyStrategy:
                code = .failedOperation_TooManyStrategy
            case .other:
                code = .failedOperation
            }
            return TCCwpError(code, context: self.context)
        }
    }
}
