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

extension TCAiartError {
    public struct FailedOperation: TCAiartErrorType {
        enum Code: String {
            case consoleServerError = "FailedOperation.ConsoleServerError"
            case generateImageFailed = "FailedOperation.GenerateImageFailed"
            case imageDecodeFailed = "FailedOperation.ImageDecodeFailed"
            case imageDownloadError = "FailedOperation.ImageDownloadError"
            case imageResolutionExceed = "FailedOperation.ImageResolutionExceed"
            case imageSizeExceed = "FailedOperation.ImageSizeExceed"
            case requestEntityTooLarge = "FailedOperation.RequestEntityTooLarge"
            case requestTimeout = "FailedOperation.RequestTimeout"
            case rpcFail = "FailedOperation.RpcFail"
            case serverError = "FailedOperation.ServerError"
            case unknown = "FailedOperation.Unknown"
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

        /// 控制台服务异常。
        public static var consoleServerError: FailedOperation {
            FailedOperation(.consoleServerError)
        }

        /// 生成图片审核不通过，请重试。
        public static var generateImageFailed: FailedOperation {
            FailedOperation(.generateImageFailed)
        }

        /// 图片解码失败。
        public static var imageDecodeFailed: FailedOperation {
            FailedOperation(.imageDecodeFailed)
        }

        /// 图片下载错误。
        public static var imageDownloadError: FailedOperation {
            FailedOperation(.imageDownloadError)
        }

        /// 图片分辨率过大，超过2000*2000。
        public static var imageResolutionExceed: FailedOperation {
            FailedOperation(.imageResolutionExceed)
        }

        /// base64编码后的图片数据大小不超过10M。
        public static var imageSizeExceed: FailedOperation {
            FailedOperation(.imageSizeExceed)
        }

        /// 整个请求体太大（通常主要是图片）。
        public static var requestEntityTooLarge: FailedOperation {
            FailedOperation(.requestEntityTooLarge)
        }

        /// 后端服务超时。
        public static var requestTimeout: FailedOperation {
            FailedOperation(.requestTimeout)
        }

        /// RPC请求失败，一般为算法微服务故障。
        public static var rpcFail: FailedOperation {
            FailedOperation(.rpcFail)
        }

        /// 服务内部错误。
        public static var serverError: FailedOperation {
            FailedOperation(.serverError)
        }

        /// 未知错误。
        public static var unknown: FailedOperation {
            FailedOperation(.unknown)
        }

        public func asAiartError() -> TCAiartError {
            let code: TCAiartError.Code
            switch self.error {
            case .consoleServerError:
                code = .failedOperation_ConsoleServerError
            case .generateImageFailed:
                code = .failedOperation_GenerateImageFailed
            case .imageDecodeFailed:
                code = .failedOperation_ImageDecodeFailed
            case .imageDownloadError:
                code = .failedOperation_ImageDownloadError
            case .imageResolutionExceed:
                code = .failedOperation_ImageResolutionExceed
            case .imageSizeExceed:
                code = .failedOperation_ImageSizeExceed
            case .requestEntityTooLarge:
                code = .failedOperation_RequestEntityTooLarge
            case .requestTimeout:
                code = .failedOperation_RequestTimeout
            case .rpcFail:
                code = .failedOperation_RpcFail
            case .serverError:
                code = .failedOperation_ServerError
            case .unknown:
                code = .failedOperation_Unknown
            }
            return TCAiartError(code, context: self.context)
        }
    }
}
