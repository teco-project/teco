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

extension TCMrsError {
    public struct InvalidParameterValue: TCMrsErrorType {
        enum Code: String {
            case imageCodeInvalid = "InvalidParameterValue.ImageCodeInvalid"
            case imageIsNoText = "InvalidParameterValue.ImageIsNoText"
            case imageURLInvalid = "InvalidParameterValue.ImageURLInvalid"
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

        /// 图片编码无效。
        public static var imageCodeInvalid: InvalidParameterValue {
            InvalidParameterValue(.imageCodeInvalid)
        }

        /// 图片没有文字。
        ///
        /// 上传的报告图片没有文字内容。
        public static var imageIsNoText: InvalidParameterValue {
            InvalidParameterValue(.imageIsNoText)
        }

        /// 图片URL无效。
        ///
        /// 检查参数中URL地址是否有效且公网可达。
        public static var imageURLInvalid: InvalidParameterValue {
            InvalidParameterValue(.imageURLInvalid)
        }

        public func asMrsError() -> TCMrsError {
            let code: TCMrsError.Code
            switch self.error {
            case .imageCodeInvalid:
                code = .invalidParameterValue_ImageCodeInvalid
            case .imageIsNoText:
                code = .invalidParameterValue_ImageIsNoText
            case .imageURLInvalid:
                code = .invalidParameterValue_ImageURLInvalid
            }
            return TCMrsError(code, context: self.context)
        }
    }
}
