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

extension TCEccError {
    public struct InternalError: TCEccErrorType {
        enum Code: String {
            case correctError = "InternalError.CorrectError"
            case dataFormatAbnormalError = "InternalError.DataFormatAbnormalError"
            case databaseServerInternalError = "InternalError.DatabaseServerInternalError"
            case ocrError = "InternalError.OcrError"
            case ocrServerInternError = "InternalError.OcrServerInternError"
            case otherError = "InternalError.OtherError"
            case overLoadError = "InternalError.OverLoadError"
            case recognizeError = "InternalError.RecognizeError"
            case serverConnectDownloadError = "InternalError.ServerConnectDownloadError"
            case splitError = "InternalError.SplitError"
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

        /// 批改错误。
        public static var correctError: InternalError {
            InternalError(.correctError)
        }

        /// 数据格式错误。
        public static var dataFormatAbnormalError: InternalError {
            InternalError(.dataFormatAbnormalError)
        }

        /// 服务内部错误。
        ///
        /// 请稍后重试。
        public static var databaseServerInternalError: InternalError {
            InternalError(.databaseServerInternalError)
        }

        /// 识别错误。
        public static var ocrError: InternalError {
            InternalError(.ocrError)
        }

        /// 服务器内部错误，初始化失败。
        public static var ocrServerInternError: InternalError {
            InternalError(.ocrServerInternError)
        }

        /// 其它错误。
        public static var otherError: InternalError {
            InternalError(.otherError)
        }

        /// 服务器过载，请联系相关客服。
        public static var overLoadError: InternalError {
            InternalError(.overLoadError)
        }

        /// 图片识别错误。
        public static var recognizeError: InternalError {
            InternalError(.recognizeError)
        }

        /// 无法连接图像下载服务器。
        public static var serverConnectDownloadError: InternalError {
            InternalError(.serverConnectDownloadError)
        }

        /// 图片切割错误。
        public static var splitError: InternalError {
            InternalError(.splitError)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asEccError() -> TCEccError {
            let code: TCEccError.Code
            switch self.error {
            case .correctError:
                code = .internalError_CorrectError
            case .dataFormatAbnormalError:
                code = .internalError_DataFormatAbnormalError
            case .databaseServerInternalError:
                code = .internalError_DatabaseServerInternalError
            case .ocrError:
                code = .internalError_OcrError
            case .ocrServerInternError:
                code = .internalError_OcrServerInternError
            case .otherError:
                code = .internalError_OtherError
            case .overLoadError:
                code = .internalError_OverLoadError
            case .recognizeError:
                code = .internalError_RecognizeError
            case .serverConnectDownloadError:
                code = .internalError_ServerConnectDownloadError
            case .splitError:
                code = .internalError_SplitError
            case .other:
                code = .internalError
            }
            return TCEccError(code, context: self.context)
        }
    }
}
