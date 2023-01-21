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

extension TCCpdpError {
    public struct InvalidParameter: TCCpdpErrorType {
        enum Code: String {
            case backendCgiError = "InvalidParameter.BackendCgiError"
            case lackParameter = "InvalidParameter.LackParameter"
            case midas = "InvalidParameter.Midas"
            case midasEnvironment = "InvalidParameter.MidasEnvironment"
            case midasExternalApp = "InvalidParameter.MidasExternalApp"
            case midasFileType = "InvalidParameter.MidasFileType"
            case midasHash = "InvalidParameter.MidasHash"
            case midasSignId = "InvalidParameter.MidasSignId"
            case paramMarshalFailed = "InvalidParameter.ParamMarshalFailed"
            case paramUnmarshalFailed = "InvalidParameter.ParamUnmarshalFailed"
            case unsupportedParameter = "InvalidParameter.UnsupportedParameter"
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

        public static var backendCgiError: InvalidParameter {
            InvalidParameter(.backendCgiError)
        }

        /// 缺少必填参数。
        public static var lackParameter: InvalidParameter {
            InvalidParameter(.lackParameter)
        }

        /// 聚鑫参数无效。
        ///
        /// 请联系我们
        public static var midas: InvalidParameter {
            InvalidParameter(.midas)
        }

        /// 聚鑫环境参数非法。
        ///
        /// 请联系我们
        public static var midasEnvironment: InvalidParameter {
            InvalidParameter(.midasEnvironment)
        }

        /// 聚鑫第三方应用无效。
        ///
        /// 请联系我们
        public static var midasExternalApp: InvalidParameter {
            InvalidParameter(.midasExternalApp)
        }

        /// 聚鑫文件格式错误。
        ///
        /// 请联系我们
        public static var midasFileType: InvalidParameter {
            InvalidParameter(.midasFileType)
        }

        /// 聚鑫摘要错误。
        ///
        /// 请联系我们
        public static var midasHash: InvalidParameter {
            InvalidParameter(.midasHash)
        }

        /// 聚鑫签约ID非法。
        ///
        /// 请联系我们
        public static var midasSignId: InvalidParameter {
            InvalidParameter(.midasSignId)
        }

        /// 参数编码失败。
        public static var paramMarshalFailed: InvalidParameter {
            InvalidParameter(.paramMarshalFailed)
        }

        /// 参数解析失败。
        public static var paramUnmarshalFailed: InvalidParameter {
            InvalidParameter(.paramUnmarshalFailed)
        }

        /// 无效参数。
        public static var unsupportedParameter: InvalidParameter {
            InvalidParameter(.unsupportedParameter)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asCpdpError() -> TCCpdpError {
            let code: TCCpdpError.Code
            switch self.error {
            case .backendCgiError:
                code = .invalidParameter_BackendCgiError
            case .lackParameter:
                code = .invalidParameter_LackParameter
            case .midas:
                code = .invalidParameter_Midas
            case .midasEnvironment:
                code = .invalidParameter_MidasEnvironment
            case .midasExternalApp:
                code = .invalidParameter_MidasExternalApp
            case .midasFileType:
                code = .invalidParameter_MidasFileType
            case .midasHash:
                code = .invalidParameter_MidasHash
            case .midasSignId:
                code = .invalidParameter_MidasSignId
            case .paramMarshalFailed:
                code = .invalidParameter_ParamMarshalFailed
            case .paramUnmarshalFailed:
                code = .invalidParameter_ParamUnmarshalFailed
            case .unsupportedParameter:
                code = .invalidParameter_UnsupportedParameter
            case .other:
                code = .invalidParameter
            }
            return TCCpdpError(code, context: self.context)
        }
    }
}
