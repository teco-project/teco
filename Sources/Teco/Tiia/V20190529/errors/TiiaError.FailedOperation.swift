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

extension TCTiiaError {
    public struct FailedOperation: TCTiiaErrorType {
        enum Code: String {
            case balanceInsufficient = "FailedOperation.BalanceInsufficient"
            case downLoadError = "FailedOperation.DownLoadError"
            case downloadError = "FailedOperation.DownloadError"
            case emptyImageError = "FailedOperation.EmptyImageError"
            case groupCountExceeded = "FailedOperation.GroupCountExceeded"
            case imageDecodeFailed = "FailedOperation.ImageDecodeFailed"
            case imageDeleteFailed = "FailedOperation.ImageDeleteFailed"
            case imageDownloadError = "FailedOperation.ImageDownloadError"
            case imageEntityCountExceed = "FailedOperation.ImageEntityCountExceed"
            case imageGroupChargeStatusClose = "FailedOperation.ImageGroupChargeStatusClose"
            case imageGroupEmpty = "FailedOperation.ImageGroupEmpty"
            case imageNotFoundInfo = "FailedOperation.ImageNotFoundInfo"
            case imageNotSupported = "FailedOperation.ImageNotSupported"
            case imageNumExceed = "FailedOperation.ImageNumExceed"
            case imageResolutionExceed = "FailedOperation.ImageResolutionExceed"
            case imageResolutionInsufficient = "FailedOperation.ImageResolutionInsufficient"
            case imageSearchInvalid = "FailedOperation.ImageSearchInvalid"
            case imageSizeExceed = "FailedOperation.ImageSizeExceed"
            case imageUnQualified = "FailedOperation.ImageUnQualified"
            case imageUrlInvalid = "FailedOperation.ImageUrlInvalid"
            case innerError = "FailedOperation.InnerError"
            case invokeChargeError = "FailedOperation.InvokeChargeError"
            case noBodyInPhoto = "FailedOperation.NoBodyInPhoto"
            case noObjectDetected = "FailedOperation.NoObjectDetected"
            case parameterEmpty = "FailedOperation.ParameterEmpty"
            case recognizeFailded = "FailedOperation.RecognizeFailded"
            case requestError = "FailedOperation.RequestError"
            case requestTimeout = "FailedOperation.RequestTimeout"
            case rpcFail = "FailedOperation.RpcFail"
            case serverError = "FailedOperation.ServerError"
            case tooLargeFileError = "FailedOperation.TooLargeFileError"
            case unKnowError = "FailedOperation.UnKnowError"
            case unOpenError = "FailedOperation.UnOpenError"
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

        /// 余额不足，开通失败，请充值后再开通。
        public static var balanceInsufficient: FailedOperation {
            FailedOperation(.balanceInsufficient)
        }

        /// 文件下载失败。
        public static var downLoadError: FailedOperation {
            FailedOperation(.downLoadError)
        }

        /// 文件下载错误。
        public static var downloadError: FailedOperation {
            FailedOperation(.downloadError)
        }

        /// 图片内容为空。
        public static var emptyImageError: FailedOperation {
            FailedOperation(.emptyImageError)
        }

        public static var groupCountExceeded: FailedOperation {
            FailedOperation(.groupCountExceeded)
        }

        /// 图片解码失败。
        public static var imageDecodeFailed: FailedOperation {
            FailedOperation(.imageDecodeFailed)
        }

        /// 图片删除失败。
        public static var imageDeleteFailed: FailedOperation {
            FailedOperation(.imageDeleteFailed)
        }

        /// 图片下载错误。
        public static var imageDownloadError: FailedOperation {
            FailedOperation(.imageDownloadError)
        }

        /// 超出Entity数量限制。
        public static var imageEntityCountExceed: FailedOperation {
            FailedOperation(.imageEntityCountExceed)
        }

        /// 停止服务，控制台开关关闭。
        public static var imageGroupChargeStatusClose: FailedOperation {
            FailedOperation(.imageGroupChargeStatusClose)
        }

        /// 图库为空。
        public static var imageGroupEmpty: FailedOperation {
            FailedOperation(.imageGroupEmpty)
        }

        /// 未找到图片信息。
        public static var imageNotFoundInfo: FailedOperation {
            FailedOperation(.imageNotFoundInfo)
        }

        /// 不支持的图片文件。
        public static var imageNotSupported: FailedOperation {
            FailedOperation(.imageNotSupported)
        }

        /// 超出图库限制。
        public static var imageNumExceed: FailedOperation {
            FailedOperation(.imageNumExceed)
        }

        /// 图片分辨率过大。
        public static var imageResolutionExceed: FailedOperation {
            FailedOperation(.imageResolutionExceed)
        }

        /// 图片分辨率过小。
        public static var imageResolutionInsufficient: FailedOperation {
            FailedOperation(.imageResolutionInsufficient)
        }

        /// 未查询到结果。
        public static var imageSearchInvalid: FailedOperation {
            FailedOperation(.imageSearchInvalid)
        }

        /// base64编码后的图片数据过大。
        public static var imageSizeExceed: FailedOperation {
            FailedOperation(.imageSizeExceed)
        }

        /// 图片不满足检测要求。
        public static var imageUnQualified: FailedOperation {
            FailedOperation(.imageUnQualified)
        }

        /// url地址不合法，无法下载。
        public static var imageUrlInvalid: FailedOperation {
            FailedOperation(.imageUrlInvalid)
        }

        /// 内部错误。
        public static var innerError: FailedOperation {
            FailedOperation(.innerError)
        }

        /// 调用计费返回失败。
        public static var invokeChargeError: FailedOperation {
            FailedOperation(.invokeChargeError)
        }

        /// 图片中没有人体。
        public static var noBodyInPhoto: FailedOperation {
            FailedOperation(.noBodyInPhoto)
        }

        /// 未检测到目标。
        public static var noObjectDetected: FailedOperation {
            FailedOperation(.noObjectDetected)
        }

        /// 参数为空。
        public static var parameterEmpty: FailedOperation {
            FailedOperation(.parameterEmpty)
        }

        /// 车辆识别失败。
        public static var recognizeFailded: FailedOperation {
            FailedOperation(.recognizeFailded)
        }

        /// 后端服务请求失败。
        public static var requestError: FailedOperation {
            FailedOperation(.requestError)
        }

        /// 后端服务超时。
        public static var requestTimeout: FailedOperation {
            FailedOperation(.requestTimeout)
        }

        /// RPC请求失败，一般为算法微服务故障。
        public static var rpcFail: FailedOperation {
            FailedOperation(.rpcFail)
        }

        /// 算法服务异常，请重试。
        public static var serverError: FailedOperation {
            FailedOperation(.serverError)
        }

        /// 文件太大。
        public static var tooLargeFileError: FailedOperation {
            FailedOperation(.tooLargeFileError)
        }

        /// 内部错误。
        public static var unKnowError: FailedOperation {
            FailedOperation(.unKnowError)
        }

        /// 服务未开通。
        public static var unOpenError: FailedOperation {
            FailedOperation(.unOpenError)
        }

        /// 未知错误。
        public static var unknown: FailedOperation {
            FailedOperation(.unknown)
        }

        public func asTiiaError() -> TCTiiaError {
            let code: TCTiiaError.Code
            switch self.error {
            case .balanceInsufficient:
                code = .failedOperation_BalanceInsufficient
            case .downLoadError:
                code = .failedOperation_DownLoadError
            case .downloadError:
                code = .failedOperation_DownloadError
            case .emptyImageError:
                code = .failedOperation_EmptyImageError
            case .groupCountExceeded:
                code = .failedOperation_GroupCountExceeded
            case .imageDecodeFailed:
                code = .failedOperation_ImageDecodeFailed
            case .imageDeleteFailed:
                code = .failedOperation_ImageDeleteFailed
            case .imageDownloadError:
                code = .failedOperation_ImageDownloadError
            case .imageEntityCountExceed:
                code = .failedOperation_ImageEntityCountExceed
            case .imageGroupChargeStatusClose:
                code = .failedOperation_ImageGroupChargeStatusClose
            case .imageGroupEmpty:
                code = .failedOperation_ImageGroupEmpty
            case .imageNotFoundInfo:
                code = .failedOperation_ImageNotFoundInfo
            case .imageNotSupported:
                code = .failedOperation_ImageNotSupported
            case .imageNumExceed:
                code = .failedOperation_ImageNumExceed
            case .imageResolutionExceed:
                code = .failedOperation_ImageResolutionExceed
            case .imageResolutionInsufficient:
                code = .failedOperation_ImageResolutionInsufficient
            case .imageSearchInvalid:
                code = .failedOperation_ImageSearchInvalid
            case .imageSizeExceed:
                code = .failedOperation_ImageSizeExceed
            case .imageUnQualified:
                code = .failedOperation_ImageUnQualified
            case .imageUrlInvalid:
                code = .failedOperation_ImageUrlInvalid
            case .innerError:
                code = .failedOperation_InnerError
            case .invokeChargeError:
                code = .failedOperation_InvokeChargeError
            case .noBodyInPhoto:
                code = .failedOperation_NoBodyInPhoto
            case .noObjectDetected:
                code = .failedOperation_NoObjectDetected
            case .parameterEmpty:
                code = .failedOperation_ParameterEmpty
            case .recognizeFailded:
                code = .failedOperation_RecognizeFailded
            case .requestError:
                code = .failedOperation_RequestError
            case .requestTimeout:
                code = .failedOperation_RequestTimeout
            case .rpcFail:
                code = .failedOperation_RpcFail
            case .serverError:
                code = .failedOperation_ServerError
            case .tooLargeFileError:
                code = .failedOperation_TooLargeFileError
            case .unKnowError:
                code = .failedOperation_UnKnowError
            case .unOpenError:
                code = .failedOperation_UnOpenError
            case .unknown:
                code = .failedOperation_Unknown
            }
            return TCTiiaError(code, context: self.context)
        }
    }
}
