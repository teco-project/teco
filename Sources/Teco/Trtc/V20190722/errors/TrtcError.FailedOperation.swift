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

extension TCTrtcError {
    public struct FailedOperation: TCTrtcErrorType {
        enum Code: String {
            case crUnsupportMethod = "FailedOperation.CRUnsupportMethod"
            case mixSessionNotExist = "FailedOperation.MixSessionNotExist"
            case requestRejection = "FailedOperation.RequestRejection"
            case restrictedConcurrency = "FailedOperation.RestrictedConcurrency"
            case roomNotExist = "FailedOperation.RoomNotExist"
            case sdkAppIdNotExist = "FailedOperation.SdkAppIdNotExist"
            case taskFinished = "FailedOperation.TaskFinished"
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

        /// 云端录制方法不支持。
        public static var crUnsupportMethod: FailedOperation {
            FailedOperation(.crUnsupportMethod)
        }

        /// 房间中没有设置混流模板。
        public static var mixSessionNotExist: FailedOperation {
            FailedOperation(.mixSessionNotExist)
        }

        /// 云API混流模板和SDK混流冲突。
        public static var requestRejection: FailedOperation {
            FailedOperation(.requestRejection)
        }

        /// 单用户并发过载，请联系我们增大并发路数到合理值。
        public static var restrictedConcurrency: FailedOperation {
            FailedOperation(.restrictedConcurrency)
        }

        /// 房间不存在。
        public static var roomNotExist: FailedOperation {
            FailedOperation(.roomNotExist)
        }

        /// 应用ID不存在。
        public static var sdkAppIdNotExist: FailedOperation {
            FailedOperation(.sdkAppIdNotExist)
        }

        public static var taskFinished: FailedOperation {
            FailedOperation(.taskFinished)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asTrtcError() -> TCTrtcError {
            let code: TCTrtcError.Code
            switch self.error {
            case .crUnsupportMethod:
                code = .failedOperation_CRUnsupportMethod
            case .mixSessionNotExist:
                code = .failedOperation_MixSessionNotExist
            case .requestRejection:
                code = .failedOperation_RequestRejection
            case .restrictedConcurrency:
                code = .failedOperation_RestrictedConcurrency
            case .roomNotExist:
                code = .failedOperation_RoomNotExist
            case .sdkAppIdNotExist:
                code = .failedOperation_SdkAppIdNotExist
            case .taskFinished:
                code = .failedOperation_TaskFinished
            case .other:
                code = .failedOperation
            }
            return TCTrtcError(code, context: self.context)
        }
    }
}
