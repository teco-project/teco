//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCTiiaError {
    public struct FailedOperation: TCTiiaErrorType {
        enum Code: String {
            case balanceInsufficient = "FailedOperation.BalanceInsufficient"
            case downLoadError = "FailedOperation.DownLoadError"
            case downloadError = "FailedOperation.DownloadError"
            case emptyImageError = "FailedOperation.EmptyImageError"
            case imageDecodeFailed = "FailedOperation.ImageDecodeFailed"
            case imageDeleteFailed = "FailedOperation.ImageDeleteFailed"
            case imageDownloadError = "FailedOperation.ImageDownloadError"
            case imageEntityCountExceed = "FailedOperation.ImageEntityCountExceed"
            case imageGroupEmpty = "FailedOperation.ImageGroupEmpty"
            case imageNotFoundInfo = "FailedOperation.ImageNotFoundInfo"
            case imageNotSupported = "FailedOperation.ImageNotSupported"
            case imageNumExceed = "FailedOperation.ImageNumExceed"
            case imageResolutionExceed = "FailedOperation.ImageResolutionExceed"
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

        /// ??????????????????????????????????????????????????????
        public static var balanceInsufficient: FailedOperation {
            FailedOperation(.balanceInsufficient)
        }

        /// ?????????????????????
        public static var downLoadError: FailedOperation {
            FailedOperation(.downLoadError)
        }

        /// ?????????????????????
        public static var downloadError: FailedOperation {
            FailedOperation(.downloadError)
        }

        /// ?????????????????????
        public static var emptyImageError: FailedOperation {
            FailedOperation(.emptyImageError)
        }

        /// ?????????????????????
        public static var imageDecodeFailed: FailedOperation {
            FailedOperation(.imageDecodeFailed)
        }

        /// ?????????????????????
        public static var imageDeleteFailed: FailedOperation {
            FailedOperation(.imageDeleteFailed)
        }

        /// ?????????????????????
        public static var imageDownloadError: FailedOperation {
            FailedOperation(.imageDownloadError)
        }

        /// ??????Entity???????????????
        public static var imageEntityCountExceed: FailedOperation {
            FailedOperation(.imageEntityCountExceed)
        }

        /// ???????????????
        public static var imageGroupEmpty: FailedOperation {
            FailedOperation(.imageGroupEmpty)
        }

        /// ????????????????????????
        public static var imageNotFoundInfo: FailedOperation {
            FailedOperation(.imageNotFoundInfo)
        }

        /// ???????????????????????????
        public static var imageNotSupported: FailedOperation {
            FailedOperation(.imageNotSupported)
        }

        /// ?????????????????????
        public static var imageNumExceed: FailedOperation {
            FailedOperation(.imageNumExceed)
        }

        /// ????????????????????????
        public static var imageResolutionExceed: FailedOperation {
            FailedOperation(.imageResolutionExceed)
        }

        /// ?????????????????????
        public static var imageSearchInvalid: FailedOperation {
            FailedOperation(.imageSearchInvalid)
        }

        /// base64?????????????????????????????????
        public static var imageSizeExceed: FailedOperation {
            FailedOperation(.imageSizeExceed)
        }

        /// ??????????????????????????????
        public static var imageUnQualified: FailedOperation {
            FailedOperation(.imageUnQualified)
        }

        /// url?????????????????????????????????
        public static var imageUrlInvalid: FailedOperation {
            FailedOperation(.imageUrlInvalid)
        }

        /// ???????????????
        public static var innerError: FailedOperation {
            FailedOperation(.innerError)
        }

        /// ???????????????????????????
        public static var invokeChargeError: FailedOperation {
            FailedOperation(.invokeChargeError)
        }

        public static var noBodyInPhoto: FailedOperation {
            FailedOperation(.noBodyInPhoto)
        }

        /// ?????????????????????
        public static var noObjectDetected: FailedOperation {
            FailedOperation(.noObjectDetected)
        }

        /// ???????????????
        public static var parameterEmpty: FailedOperation {
            FailedOperation(.parameterEmpty)
        }

        /// ?????????????????????
        public static var recognizeFailded: FailedOperation {
            FailedOperation(.recognizeFailded)
        }

        /// ???????????????????????????
        public static var requestError: FailedOperation {
            FailedOperation(.requestError)
        }

        /// ?????????????????????
        public static var requestTimeout: FailedOperation {
            FailedOperation(.requestTimeout)
        }

        /// RPC????????????????????????????????????????????????
        public static var rpcFail: FailedOperation {
            FailedOperation(.rpcFail)
        }

        /// ?????????????????????????????????
        public static var serverError: FailedOperation {
            FailedOperation(.serverError)
        }

        /// ???????????????
        public static var tooLargeFileError: FailedOperation {
            FailedOperation(.tooLargeFileError)
        }

        /// ???????????????
        public static var unKnowError: FailedOperation {
            FailedOperation(.unKnowError)
        }

        /// ??????????????????
        public static var unOpenError: FailedOperation {
            FailedOperation(.unOpenError)
        }

        /// ???????????????
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
            case .imageDecodeFailed: 
                code = .failedOperation_ImageDecodeFailed
            case .imageDeleteFailed: 
                code = .failedOperation_ImageDeleteFailed
            case .imageDownloadError: 
                code = .failedOperation_ImageDownloadError
            case .imageEntityCountExceed: 
                code = .failedOperation_ImageEntityCountExceed
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
