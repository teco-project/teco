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

extension Gse {
    /// CreateAssetWithImage请求参数结构体
    public struct CreateAssetWithImageRequest: TCRequestModel {
        /// 生成包名字，最小长度为1，最大长度为64
        public let assetName: String

        /// 生成包版本，最小长度为1，最大长度为64
        public let assetVersion: String

        /// 生成包所在地域，详见产品支持的 [地域列表](https://cloud.tencent.com/document/api/1165/42053#.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8)
        public let assetRegion: String

        /// 生成包支持的操作系统镜像id
        public let imageId: String

        /// 操作系统镜像包大小，比如：40GB，支持单位 KB、MB、GB
        public let imageSize: String

        /// 操作系统镜像包名称，最小长度为1，最大长度为64
        public let imageOs: String

        /// 操作系统镜像包类型，CentOS 或者 Windows
        public let osType: String

        /// 操作系统镜像包类型，当前只支持 SHARED_IMAGE
        public let imageType: String

        /// 操作系统镜像包位数，32 或者 64
        public let osBit: UInt64

        public init(assetName: String, assetVersion: String, assetRegion: String, imageId: String, imageSize: String, imageOs: String, osType: String, imageType: String, osBit: UInt64) {
            self.assetName = assetName
            self.assetVersion = assetVersion
            self.assetRegion = assetRegion
            self.imageId = imageId
            self.imageSize = imageSize
            self.imageOs = imageOs
            self.osType = osType
            self.imageType = imageType
            self.osBit = osBit
        }

        enum CodingKeys: String, CodingKey {
            case assetName = "AssetName"
            case assetVersion = "AssetVersion"
            case assetRegion = "AssetRegion"
            case imageId = "ImageId"
            case imageSize = "ImageSize"
            case imageOs = "ImageOs"
            case osType = "OsType"
            case imageType = "ImageType"
            case osBit = "OsBit"
        }
    }

    /// CreateAssetWithImage返回参数结构体
    public struct CreateAssetWithImageResponse: TCResponseModel {
        /// 生成包ID
        public let assetId: String

        /// 生成包的全局唯一资源标识符
        public let assetArn: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case assetId = "AssetId"
            case assetArn = "AssetArn"
            case requestId = "RequestId"
        }
    }

    /// 创建生成包镜像信息
    ///
    /// 本接口（CreateAssetWithImage）用于创建生成包镜像信息。
    @available(*, deprecated, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func createAssetWithImage(_ input: CreateAssetWithImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssetWithImageResponse> {
        self.client.execute(action: "CreateAssetWithImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建生成包镜像信息
    ///
    /// 本接口（CreateAssetWithImage）用于创建生成包镜像信息。
    @available(*, deprecated, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func createAssetWithImage(_ input: CreateAssetWithImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssetWithImageResponse {
        try await self.client.execute(action: "CreateAssetWithImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建生成包镜像信息
    ///
    /// 本接口（CreateAssetWithImage）用于创建生成包镜像信息。
    @available(*, deprecated, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func createAssetWithImage(assetName: String, assetVersion: String, assetRegion: String, imageId: String, imageSize: String, imageOs: String, osType: String, imageType: String, osBit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssetWithImageResponse> {
        let input = CreateAssetWithImageRequest(assetName: assetName, assetVersion: assetVersion, assetRegion: assetRegion, imageId: imageId, imageSize: imageSize, imageOs: imageOs, osType: osType, imageType: imageType, osBit: osBit)
        return self.client.execute(action: "CreateAssetWithImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建生成包镜像信息
    ///
    /// 本接口（CreateAssetWithImage）用于创建生成包镜像信息。
    @available(*, deprecated, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func createAssetWithImage(assetName: String, assetVersion: String, assetRegion: String, imageId: String, imageSize: String, imageOs: String, osType: String, imageType: String, osBit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssetWithImageResponse {
        let input = CreateAssetWithImageRequest(assetName: assetName, assetVersion: assetVersion, assetRegion: assetRegion, imageId: imageId, imageSize: imageSize, imageOs: imageOs, osType: osType, imageType: imageType, osBit: osBit)
        return try await self.client.execute(action: "CreateAssetWithImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
