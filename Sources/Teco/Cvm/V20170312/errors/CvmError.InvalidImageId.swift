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

extension TCCvmError {
    public struct InvalidImageId: TCCvmErrorType {
        enum Code: String {
            case inShared = "InvalidImageId.InShared"
            case incorrectState = "InvalidImageId.IncorrectState"
            case malformed = "InvalidImageId.Malformed"
            case notFound = "InvalidImageId.NotFound"
            case tooLarge = "InvalidImageId.TooLarge"
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

        /// 镜像处于共享中。
        public static var inShared: InvalidImageId {
            InvalidImageId(.inShared)
        }

        /// 镜像状态不合法。
        public static var incorrectState: InvalidImageId {
            InvalidImageId(.incorrectState)
        }

        /// 错误的镜像Id格式。
        public static var malformed: InvalidImageId {
            InvalidImageId(.malformed)
        }

        /// 未找到该镜像。
        public static var notFound: InvalidImageId {
            InvalidImageId(.notFound)
        }

        /// 镜像大小超过限制。
        public static var tooLarge: InvalidImageId {
            InvalidImageId(.tooLarge)
        }

        public func asCvmError() -> TCCvmError {
            let code: TCCvmError.Code
            switch self.error {
            case .inShared:
                code = .invalidImageId_InShared
            case .incorrectState:
                code = .invalidImageId_IncorrectState
            case .malformed:
                code = .invalidImageId_Malformed
            case .notFound:
                code = .invalidImageId_NotFound
            case .tooLarge:
                code = .invalidImageId_TooLarge
            }
            return TCCvmError(code, context: self.context)
        }
    }
}
