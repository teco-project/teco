//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCMsError {
    public struct MissingParameter: TCMsErrorType {
        enum Code: String {
            case missingAppInfo = "MissingParameter.MissingAppInfo"
            case missingItemId = "MissingParameter.MissingItemId"
            case missingItemIds = "MissingParameter.MissingItemIds"
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

        /// AppInfo结构体参数缺失。
        public static var missingAppInfo: MissingParameter {
            MissingParameter(.missingAppInfo)
        }

        /// 缺少ItemId字段。
        public static var missingItemId: MissingParameter {
            MissingParameter(.missingItemId)
        }

        /// 缺少ItemIds字段。
        public static var missingItemIds: MissingParameter {
            MissingParameter(.missingItemIds)
        }

        public func asMsError() -> TCMsError {
            let code: TCMsError.Code
            switch self.error {
            case .missingAppInfo:
                code = .missingParameter_MissingAppInfo
            case .missingItemId:
                code = .missingParameter_MissingItemId
            case .missingItemIds:
                code = .missingParameter_MissingItemIds
            }
            return TCMsError(code, context: self.context)
        }
    }
}
