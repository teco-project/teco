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
    public struct InternalError: TCVodErrorType {
        enum Code: String {
            case dbError = "InternalError.DBError"
            case genDefinition = "InternalError.GenDefinition"
            case getFileInfoError = "InternalError.GetFileInfoError"
            case getMediaListError = "InternalError.GetMediaListError"
            case timeParseError = "InternalError.TimeParseError"
            case updateMediaError = "InternalError.UpdateMediaError"
            case uploadCoverImageError = "InternalError.UploadCoverImageError"
            case uploadWatermarkError = "InternalError.UploadWatermarkError"
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

        /// 内部错误，访问DB失败。
        public static var dbError: InternalError {
            InternalError(.dbError)
        }

        /// 内部错误：生成模板 ID 失败。
        public static var genDefinition: InternalError {
            InternalError(.genDefinition)
        }

        /// 内部错误：获取媒体文件信息错误。
        public static var getFileInfoError: InternalError {
            InternalError(.getFileInfoError)
        }

        /// 内部错误：获取媒体列表错误。
        public static var getMediaListError: InternalError {
            InternalError(.getMediaListError)
        }

        /// 时间解析错误。
        public static var timeParseError: InternalError {
            InternalError(.timeParseError)
        }

        /// 内部错误：更新媒体文件信息错误。
        public static var updateMediaError: InternalError {
            InternalError(.updateMediaError)
        }

        /// 内部错误：上传封面图片错误。
        public static var uploadCoverImageError: InternalError {
            InternalError(.uploadCoverImageError)
        }

        /// 内部错误：上传水印图片失败。
        public static var uploadWatermarkError: InternalError {
            InternalError(.uploadWatermarkError)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asVodError() -> TCVodError {
            let code: TCVodError.Code
            switch self.error {
            case .dbError:
                code = .internalError_DBError
            case .genDefinition:
                code = .internalError_GenDefinition
            case .getFileInfoError:
                code = .internalError_GetFileInfoError
            case .getMediaListError:
                code = .internalError_GetMediaListError
            case .timeParseError:
                code = .internalError_TimeParseError
            case .updateMediaError:
                code = .internalError_UpdateMediaError
            case .uploadCoverImageError:
                code = .internalError_UploadCoverImageError
            case .uploadWatermarkError:
                code = .internalError_UploadWatermarkError
            case .other:
                code = .internalError
            }
            return TCVodError(code, context: self.context)
        }
    }
}
