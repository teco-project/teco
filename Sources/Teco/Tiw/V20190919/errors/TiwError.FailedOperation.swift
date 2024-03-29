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

extension TCTiwError {
    public struct FailedOperation: TCTiwErrorType {
        enum Code: String {
            case alreadyEnabled = "FailedOperation.AlreadyEnabled"
            case cosBucketInvalid = "FailedOperation.CosBucketInvalid"
            case fileDownloadFail = "FailedOperation.FileDownloadFail"
            case fileFormatError = "FailedOperation.FileFormatError"
            case fileOpenFail = "FailedOperation.FileOpenFail"
            case fileUploadFail = "FailedOperation.FileUploadFail"
            case getCredentialFail = "FailedOperation.GetCredentialFail"
            case preprocess = "FailedOperation.Preprocess"
            case preprocessServerError = "FailedOperation.PreprocessServerError"
            case record = "FailedOperation.Record"
            case transcode = "FailedOperation.Transcode"
            case transcodeServerError = "FailedOperation.TranscodeServerError"
            case whiteboardPush = "FailedOperation.WhiteboardPush"
            case other = "FailedOperation"
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

        /// 服务已经开通，无需再次重试。
        public static var alreadyEnabled: FailedOperation {
            FailedOperation(.alreadyEnabled)
        }

        /// COS桶无效，可能不存在或者未授权。
        public static var cosBucketInvalid: FailedOperation {
            FailedOperation(.cosBucketInvalid)
        }

        /// 文档下载失败，请检查请求参数中URL是否正确，或者如果您使用其他的文件存储服务，请检查文件存储服务的上传带宽，文档转码服务仅提供1分钟的下载时间，如果下载不成功本次的转码请求将以失败终止。
        public static var fileDownloadFail: FailedOperation {
            FailedOperation(.fileDownloadFail)
        }

        /// 文档格式错误，不支持转换只读文档或者已加密的文档。
        public static var fileFormatError: FailedOperation {
            FailedOperation(.fileFormatError)
        }

        /// 文档打开失败，请检查提交转码的文档是否加密或有其他格式问题。
        public static var fileOpenFail: FailedOperation {
            FailedOperation(.fileOpenFail)
        }

        /// 转码后上传结果失败，请稍后重试。
        ///
        /// None
        public static var fileUploadFail: FailedOperation {
            FailedOperation(.fileUploadFail)
        }

        /// 获取临时密钥失败。
        public static var getCredentialFail: FailedOperation {
            FailedOperation(.getCredentialFail)
        }

        /// 转码预处理失败，具体请参考错误描述或联系客服人员。
        public static var preprocess: FailedOperation {
            FailedOperation(.preprocess)
        }

        /// 预处理服务出现内部错误，请稍后重试或联系客户人员。
        public static var preprocessServerError: FailedOperation {
            FailedOperation(.preprocessServerError)
        }

        /// 录制失败，具体请参考错误描述。
        public static var record: FailedOperation {
            FailedOperation(.record)
        }

        /// 转码失败，具体请参考错误描述或联系客服人员。
        public static var transcode: FailedOperation {
            FailedOperation(.transcode)
        }

        /// 转码服务出现内部错误，请稍后重试或联系客户人员。
        ///
        /// None
        public static var transcodeServerError: FailedOperation {
            FailedOperation(.transcodeServerError)
        }

        /// 白板推流失败，具体请参考错误描述。
        public static var whiteboardPush: FailedOperation {
            FailedOperation(.whiteboardPush)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asTiwError() -> TCTiwError {
            let code: TCTiwError.Code
            switch self.error {
            case .alreadyEnabled:
                code = .failedOperation_AlreadyEnabled
            case .cosBucketInvalid:
                code = .failedOperation_CosBucketInvalid
            case .fileDownloadFail:
                code = .failedOperation_FileDownloadFail
            case .fileFormatError:
                code = .failedOperation_FileFormatError
            case .fileOpenFail:
                code = .failedOperation_FileOpenFail
            case .fileUploadFail:
                code = .failedOperation_FileUploadFail
            case .getCredentialFail:
                code = .failedOperation_GetCredentialFail
            case .preprocess:
                code = .failedOperation_Preprocess
            case .preprocessServerError:
                code = .failedOperation_PreprocessServerError
            case .record:
                code = .failedOperation_Record
            case .transcode:
                code = .failedOperation_Transcode
            case .transcodeServerError:
                code = .failedOperation_TranscodeServerError
            case .whiteboardPush:
                code = .failedOperation_WhiteboardPush
            case .other:
                code = .failedOperation
            }
            return TCTiwError(code, context: self.context)
        }
    }
}
