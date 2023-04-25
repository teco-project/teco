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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCIotexplorerError {
    public struct InvalidParameter: TCIotexplorerErrorType {
        enum Code: String {
            case actionInputParamsInvalid = "InvalidParameter.ActionInputParamsInvalid"
            case firmwareAlreadyExist = "InvalidParameter.FirmwareAlreadyExist"
            case productIsNotGateway = "InvalidParameter.ProductIsNotGateway"
            case other = "InvalidParameter"
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

        /// 动作输入参数不合法。
        public static var actionInputParamsInvalid: InvalidParameter {
            InvalidParameter(.actionInputParamsInvalid)
        }

        /// 固件已存在。
        public static var firmwareAlreadyExist: InvalidParameter {
            InvalidParameter(.firmwareAlreadyExist)
        }

        /// 产品不是网关类型，无法绑定子产品。
        public static var productIsNotGateway: InvalidParameter {
            InvalidParameter(.productIsNotGateway)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asIotexplorerError() -> TCIotexplorerError {
            let code: TCIotexplorerError.Code
            switch self.error {
            case .actionInputParamsInvalid:
                code = .invalidParameter_ActionInputParamsInvalid
            case .firmwareAlreadyExist:
                code = .invalidParameter_FirmwareAlreadyExist
            case .productIsNotGateway:
                code = .invalidParameter_ProductIsNotGateway
            case .other:
                code = .invalidParameter
            }
            return TCIotexplorerError(code, context: self.context)
        }
    }
}
