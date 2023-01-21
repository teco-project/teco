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

extension TCVodError {
    public struct LimitExceeded: TCVodErrorType {
        enum Code: String {
            case keyFrameDescCountReachMax = "LimitExceeded.KeyFrameDescCountReachMax"
            case tagCountReachMax = "LimitExceeded.TagCountReachMax"
            case tooMuchTemplate = "LimitExceeded.TooMuchTemplate"
            case other = "LimitExceeded"
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

        /// 超过限制值：新旧打点信息个数和超过限制值。
        public static var keyFrameDescCountReachMax: LimitExceeded {
            LimitExceeded(.keyFrameDescCountReachMax)
        }

        /// 超过限制值：新旧标签个数和超过限制值。
        public static var tagCountReachMax: LimitExceeded {
            LimitExceeded(.tagCountReachMax)
        }

        /// 超过限制值：模板数超限。
        public static var tooMuchTemplate: LimitExceeded {
            LimitExceeded(.tooMuchTemplate)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asVodError() -> TCVodError {
            let code: TCVodError.Code
            switch self.error {
            case .keyFrameDescCountReachMax:
                code = .limitExceeded_KeyFrameDescCountReachMax
            case .tagCountReachMax:
                code = .limitExceeded_TagCountReachMax
            case .tooMuchTemplate:
                code = .limitExceeded_TooMuchTemplate
            case .other:
                code = .limitExceeded
            }
            return TCVodError(code, context: self.context)
        }
    }
}
