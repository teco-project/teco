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

extension TCLcicError {
    public struct FailedOperation: TCLcicErrorType {
        enum Code: String {
            case classEnded = "FailedOperation.ClassEnded"
            case classExpired = "FailedOperation.ClassExpired"
            case classStarted = "FailedOperation.ClassStarted"
            case classTooLong = "FailedOperation.ClassTooLong"
            case imageArgInvalid = "FailedOperation.ImageArgInvalid"
            case originIdExists = "FailedOperation.OriginIdExists"
            case requestTimedOut = "FailedOperation.RequestTimedOut"
            case roomNotEnd = "FailedOperation.RoomNotEnd"
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

        /// 房间状态错误，房间已结束。
        ///
        /// 已经结束的房间使用房间统计接口。
        public static var classEnded: FailedOperation {
            FailedOperation(.classEnded)
        }

        /// 房间状态错误，房间已过期。
        ///
        /// 已过期的房间无法使用该接口查询。
        public static var classExpired: FailedOperation {
            FailedOperation(.classExpired)
        }

        /// 课堂状态错误，课堂已开始。
        public static var classStarted: FailedOperation {
            FailedOperation(.classStarted)
        }

        /// 课堂时长不能超过5小时。
        public static var classTooLong: FailedOperation {
            FailedOperation(.classTooLong)
        }

        /// 图片参数错误。
        public static var imageArgInvalid: FailedOperation {
            FailedOperation(.imageArgInvalid)
        }

        /// 源账号已存在。
        public static var originIdExists: FailedOperation {
            FailedOperation(.originIdExists)
        }

        /// 请重新尝试
        public static var requestTimedOut: FailedOperation {
            FailedOperation(.requestTimedOut)
        }

        /// 房间暂未结束。
        public static var roomNotEnd: FailedOperation {
            FailedOperation(.roomNotEnd)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asLcicError() -> TCLcicError {
            let code: TCLcicError.Code
            switch self.error {
            case .classEnded:
                code = .failedOperation_ClassEnded
            case .classExpired:
                code = .failedOperation_ClassExpired
            case .classStarted:
                code = .failedOperation_ClassStarted
            case .classTooLong:
                code = .failedOperation_ClassTooLong
            case .imageArgInvalid:
                code = .failedOperation_ImageArgInvalid
            case .originIdExists:
                code = .failedOperation_OriginIdExists
            case .requestTimedOut:
                code = .failedOperation_RequestTimedOut
            case .roomNotEnd:
                code = .failedOperation_RoomNotEnd
            case .other:
                code = .failedOperation
            }
            return TCLcicError(code, context: self.context)
        }
    }
}
