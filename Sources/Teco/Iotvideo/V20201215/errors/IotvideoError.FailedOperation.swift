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

extension TCIotvideoError {
    public struct FailedOperation: TCIotvideoErrorType {
        enum Code: String {
            case deviceFirmwareTaskAlreadDone = "FailedOperation.DeviceFirmwareTaskAlreadDone"
            case deviceIsUpdating = "FailedOperation.DeviceIsUpdating"
            case deviceRunningOtherOtaTask = "FailedOperation.DeviceRunningOtherOtaTask"
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

        /// 设备固件升级任务已经完成。
        public static var deviceFirmwareTaskAlreadDone: FailedOperation {
            FailedOperation(.deviceFirmwareTaskAlreadDone)
        }

        /// 设备正在升级中。
        public static var deviceIsUpdating: FailedOperation {
            FailedOperation(.deviceIsUpdating)
        }

        /// 设备已经运行其他ota升级任务。
        public static var deviceRunningOtherOtaTask: FailedOperation {
            FailedOperation(.deviceRunningOtherOtaTask)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asIotvideoError() -> TCIotvideoError {
            let code: TCIotvideoError.Code
            switch self.error {
            case .deviceFirmwareTaskAlreadDone:
                code = .failedOperation_DeviceFirmwareTaskAlreadDone
            case .deviceIsUpdating:
                code = .failedOperation_DeviceIsUpdating
            case .deviceRunningOtherOtaTask:
                code = .failedOperation_DeviceRunningOtherOtaTask
            case .other:
                code = .failedOperation
            }
            return TCIotvideoError(code, context: self.context)
        }
    }
}
