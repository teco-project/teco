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

import Logging
import NIOCore
import TecoCore

extension Gse {
    /// GetUploadCredentials请求参数结构体
    public struct GetUploadCredentialsRequest: TCRequest {
        /// 生成包所在地域，详见产品支持的 [地域列表](https://cloud.tencent.com/document/api/1165/42053#.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8)
        public let assetRegion: String

        /// 生成包的ZIP包名，例如：server.zip
        public let bucketKey: String

        public init(assetRegion: String, bucketKey: String) {
            self.assetRegion = assetRegion
            self.bucketKey = bucketKey
        }

        enum CodingKeys: String, CodingKey {
            case assetRegion = "AssetRegion"
            case bucketKey = "BucketKey"
        }
    }

    /// GetUploadCredentials返回参数结构体
    public struct GetUploadCredentialsResponse: TCResponse {
        /// 上传文件授权信息Auth
        public let bucketAuth: String

        /// Bucket名字
        public let bucketName: String

        /// 生成包所在地域
        public let assetRegion: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case bucketAuth = "BucketAuth"
            case bucketName = "BucketName"
            case assetRegion = "AssetRegion"
            case requestId = "RequestId"
        }
    }

    /// 获取上传文件授权信息
    ///
    /// 本接口（GetUploadCredentials）获取上传文件授权信息。
    /// 通过 [GetUploadCredentials](https://cloud.tencent.com/document/product/1165/48727) 接口获取临时授权信息后，调用 COS API将数据上传，根据上传的 BucketKey 信息进行生成包 [CreateAsset](https://cloud.tencent.com/document/product/1165/48731) 的创建。参考下面的示例部分。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getUploadCredentials(_ input: GetUploadCredentialsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUploadCredentialsResponse> {
        fatalError("GetUploadCredentials is no longer available.")
    }

    /// 获取上传文件授权信息
    ///
    /// 本接口（GetUploadCredentials）获取上传文件授权信息。
    /// 通过 [GetUploadCredentials](https://cloud.tencent.com/document/product/1165/48727) 接口获取临时授权信息后，调用 COS API将数据上传，根据上传的 BucketKey 信息进行生成包 [CreateAsset](https://cloud.tencent.com/document/product/1165/48731) 的创建。参考下面的示例部分。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getUploadCredentials(_ input: GetUploadCredentialsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUploadCredentialsResponse {
        fatalError("GetUploadCredentials is no longer available.")
    }

    /// 获取上传文件授权信息
    ///
    /// 本接口（GetUploadCredentials）获取上传文件授权信息。
    /// 通过 [GetUploadCredentials](https://cloud.tencent.com/document/product/1165/48727) 接口获取临时授权信息后，调用 COS API将数据上传，根据上传的 BucketKey 信息进行生成包 [CreateAsset](https://cloud.tencent.com/document/product/1165/48731) 的创建。参考下面的示例部分。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getUploadCredentials(assetRegion: String, bucketKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUploadCredentialsResponse> {
        fatalError("GetUploadCredentials is no longer available.")
    }

    /// 获取上传文件授权信息
    ///
    /// 本接口（GetUploadCredentials）获取上传文件授权信息。
    /// 通过 [GetUploadCredentials](https://cloud.tencent.com/document/product/1165/48727) 接口获取临时授权信息后，调用 COS API将数据上传，根据上传的 BucketKey 信息进行生成包 [CreateAsset](https://cloud.tencent.com/document/product/1165/48731) 的创建。参考下面的示例部分。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getUploadCredentials(assetRegion: String, bucketKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUploadCredentialsResponse {
        fatalError("GetUploadCredentials is no longer available.")
    }
}
