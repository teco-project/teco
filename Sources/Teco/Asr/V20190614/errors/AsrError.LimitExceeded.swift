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

extension TCAsrError {
    public struct LimitExceeded: TCAsrErrorType {
        enum Code: String {
            case customizationFull = "LimitExceeded.CustomizationFull"
            case onlineFull = "LimitExceeded.OnlineFull"
            case vocabFull = "LimitExceeded.VocabFull"
            case voicePrintFull = "LimitExceeded.VoicePrintFull"
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

        /// 自学习模型创建个数已到限制。
        public static var customizationFull: LimitExceeded {
            LimitExceeded(.customizationFull)
        }

        /// 上线模型个数已到限制。
        public static var onlineFull: LimitExceeded {
            LimitExceeded(.onlineFull)
        }

        /// 热词表数量已到账号限制。
        public static var vocabFull: LimitExceeded {
            LimitExceeded(.vocabFull)
        }

        public static var voicePrintFull: LimitExceeded {
            LimitExceeded(.voicePrintFull)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asAsrError() -> TCAsrError {
            let code: TCAsrError.Code
            switch self.error {
            case .customizationFull:
                code = .limitExceeded_CustomizationFull
            case .onlineFull:
                code = .limitExceeded_OnlineFull
            case .vocabFull:
                code = .limitExceeded_VocabFull
            case .voicePrintFull:
                code = .limitExceeded_VoicePrintFull
            case .other:
                code = .limitExceeded
            }
            return TCAsrError(code, context: self.context)
        }
    }
}
