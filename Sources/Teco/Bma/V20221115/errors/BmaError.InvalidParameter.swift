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

extension TCBmaError {
    public struct InvalidParameter: TCBmaErrorType {
        enum Code: String {
            case privacyTextIsNotUtf8 = "InvalidParameter.PrivacyTextIsNotUtf8"
            case privacyTextURL = "InvalidParameter.PrivacyTextURL"
            case softwareURL = "InvalidParameter.SoftwareURL"
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

        /// 无效的隐私文本，请使用规定方法上传UTF-8编码格式文件。
        public static var privacyTextIsNotUtf8: InvalidParameter {
            InvalidParameter(.privacyTextIsNotUtf8)
        }

        /// 无效的隐私文本下载链接，请使用规定方法上传文件。
        public static var privacyTextURL: InvalidParameter {
            InvalidParameter(.privacyTextURL)
        }

        /// 无效的软件下载链接，请使用规定方法上传文件。
        public static var softwareURL: InvalidParameter {
            InvalidParameter(.softwareURL)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asBmaError() -> TCBmaError {
            let code: TCBmaError.Code
            switch self.error {
            case .privacyTextIsNotUtf8:
                code = .invalidParameter_PrivacyTextIsNotUtf8
            case .privacyTextURL:
                code = .invalidParameter_PrivacyTextURL
            case .softwareURL:
                code = .invalidParameter_SoftwareURL
            case .other:
                code = .invalidParameter
            }
            return TCBmaError(code, context: self.context)
        }
    }
}
