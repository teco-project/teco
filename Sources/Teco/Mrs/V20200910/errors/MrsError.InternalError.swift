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

extension TCMrsError {
    public struct InternalError: TCMrsErrorType {
        enum Code: String {
            case imageOcrError = "InternalError.ImageOcrError"
            case imageProcessError = "InternalError.ImageProcessError"
            case serverTimeOutError = "InternalError.ServerTimeOutError"
            case structionError = "InternalError.StructionError"
            case textClassifyError = "InternalError.TextClassifyError"
            case other = "InternalError"
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

        /// 图片ocr识别异常。
        public static var imageOcrError: InternalError {
            InternalError(.imageOcrError)
        }

        /// 图片处理异常。
        public static var imageProcessError: InternalError {
            InternalError(.imageProcessError)
        }

        /// 服务调用超时。
        public static var serverTimeOutError: InternalError {
            InternalError(.serverTimeOutError)
        }

        /// 报告结构化异常。
        public static var structionError: InternalError {
            InternalError(.structionError)
        }

        /// 报告文本分类异常。
        public static var textClassifyError: InternalError {
            InternalError(.textClassifyError)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asMrsError() -> TCMrsError {
            let code: TCMrsError.Code
            switch self.error {
            case .imageOcrError:
                code = .internalError_ImageOcrError
            case .imageProcessError:
                code = .internalError_ImageProcessError
            case .serverTimeOutError:
                code = .internalError_ServerTimeOutError
            case .structionError:
                code = .internalError_StructionError
            case .textClassifyError:
                code = .internalError_TextClassifyError
            case .other:
                code = .internalError
            }
            return TCMrsError(code, context: self.context)
        }
    }
}
