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

extension Tke {
    /// CreateImageCache请求参数结构体
    public struct CreateImageCacheRequest: TCRequestModel {
        /// 用于制作镜像缓存的容器镜像列表
        public let images: [String]

        /// 实例所属子网Id
        public let subnetId: String

        /// 实例所属VPC Id
        public let vpcId: String

        /// 镜像缓存名称
        public let imageCacheName: String?

        /// 安全组Id
        public let securityGroupIds: [String]?

        /// 镜像仓库凭证数组
        public let imageRegistryCredentials: [ImageRegistryCredential]?

        /// 用来绑定容器实例的已有EIP
        public let existedEipId: String?

        /// 是否为容器实例自动创建EIP，默认为false。若传true，则此参数和ExistedEipIds互斥
        public let autoCreateEip: Bool?

        /// 自动创建EIP的可选参数。若传此参数，则会自动创建EIP。
        /// 另外此参数和ExistedEipIds互斥
        public let autoCreateEipAttribute: EipAttribute?

        /// 镜像缓存的大小。默认为20 GiB。取值范围参考[云硬盘类型](https://cloud.tencent.com/document/product/362/2353)中的高性能云盘类型的大小限制。
        public let imageCacheSize: UInt64?

        /// 镜像缓存保留时间天数，过期将会自动清理，默认为0，永不过期。
        public let retentionDays: UInt64?

        /// 指定拉取镜像仓库的镜像时不校验证书。如["harbor.example.com"]。
        public let registrySkipVerifyList: [String]?

        /// 指定拉取镜像仓库的镜像时使用 HTTP 协议。如["harbor.example.com"]。
        public let registryHttpEndPointList: [String]?

        /// 自定义制作镜像缓存过程中容器实例的宿主机上的 DNS。如：
        /// "nameserver 4.4.4.4\nnameserver 8.8.8.8"
        public let resolveConfig: String?

        public init(images: [String], subnetId: String, vpcId: String, imageCacheName: String? = nil, securityGroupIds: [String]? = nil, imageRegistryCredentials: [ImageRegistryCredential]? = nil, existedEipId: String? = nil, autoCreateEip: Bool? = nil, autoCreateEipAttribute: EipAttribute? = nil, imageCacheSize: UInt64? = nil, retentionDays: UInt64? = nil, registrySkipVerifyList: [String]? = nil, registryHttpEndPointList: [String]? = nil, resolveConfig: String? = nil) {
            self.images = images
            self.subnetId = subnetId
            self.vpcId = vpcId
            self.imageCacheName = imageCacheName
            self.securityGroupIds = securityGroupIds
            self.imageRegistryCredentials = imageRegistryCredentials
            self.existedEipId = existedEipId
            self.autoCreateEip = autoCreateEip
            self.autoCreateEipAttribute = autoCreateEipAttribute
            self.imageCacheSize = imageCacheSize
            self.retentionDays = retentionDays
            self.registrySkipVerifyList = registrySkipVerifyList
            self.registryHttpEndPointList = registryHttpEndPointList
            self.resolveConfig = resolveConfig
        }

        enum CodingKeys: String, CodingKey {
            case images = "Images"
            case subnetId = "SubnetId"
            case vpcId = "VpcId"
            case imageCacheName = "ImageCacheName"
            case securityGroupIds = "SecurityGroupIds"
            case imageRegistryCredentials = "ImageRegistryCredentials"
            case existedEipId = "ExistedEipId"
            case autoCreateEip = "AutoCreateEip"
            case autoCreateEipAttribute = "AutoCreateEipAttribute"
            case imageCacheSize = "ImageCacheSize"
            case retentionDays = "RetentionDays"
            case registrySkipVerifyList = "RegistrySkipVerifyList"
            case registryHttpEndPointList = "RegistryHttpEndPointList"
            case resolveConfig = "ResolveConfig"
        }
    }

    /// CreateImageCache返回参数结构体
    public struct CreateImageCacheResponse: TCResponseModel {
        /// 镜像缓存Id
        public let imageCacheId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageCacheId = "ImageCacheId"
            case requestId = "RequestId"
        }
    }

    /// 创建镜像缓存
    ///
    /// 创建镜像缓存的接口。创建过程中，请勿删除EKSCI实例和云盘，否则镜像缓存将创建失败。
    @inlinable
    public func createImageCache(_ input: CreateImageCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImageCacheResponse> {
        self.client.execute(action: "CreateImageCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建镜像缓存
    ///
    /// 创建镜像缓存的接口。创建过程中，请勿删除EKSCI实例和云盘，否则镜像缓存将创建失败。
    @inlinable
    public func createImageCache(_ input: CreateImageCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageCacheResponse {
        try await self.client.execute(action: "CreateImageCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建镜像缓存
    ///
    /// 创建镜像缓存的接口。创建过程中，请勿删除EKSCI实例和云盘，否则镜像缓存将创建失败。
    @inlinable
    public func createImageCache(images: [String], subnetId: String, vpcId: String, imageCacheName: String? = nil, securityGroupIds: [String]? = nil, imageRegistryCredentials: [ImageRegistryCredential]? = nil, existedEipId: String? = nil, autoCreateEip: Bool? = nil, autoCreateEipAttribute: EipAttribute? = nil, imageCacheSize: UInt64? = nil, retentionDays: UInt64? = nil, registrySkipVerifyList: [String]? = nil, registryHttpEndPointList: [String]? = nil, resolveConfig: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImageCacheResponse> {
        let input = CreateImageCacheRequest(images: images, subnetId: subnetId, vpcId: vpcId, imageCacheName: imageCacheName, securityGroupIds: securityGroupIds, imageRegistryCredentials: imageRegistryCredentials, existedEipId: existedEipId, autoCreateEip: autoCreateEip, autoCreateEipAttribute: autoCreateEipAttribute, imageCacheSize: imageCacheSize, retentionDays: retentionDays, registrySkipVerifyList: registrySkipVerifyList, registryHttpEndPointList: registryHttpEndPointList, resolveConfig: resolveConfig)
        return self.client.execute(action: "CreateImageCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建镜像缓存
    ///
    /// 创建镜像缓存的接口。创建过程中，请勿删除EKSCI实例和云盘，否则镜像缓存将创建失败。
    @inlinable
    public func createImageCache(images: [String], subnetId: String, vpcId: String, imageCacheName: String? = nil, securityGroupIds: [String]? = nil, imageRegistryCredentials: [ImageRegistryCredential]? = nil, existedEipId: String? = nil, autoCreateEip: Bool? = nil, autoCreateEipAttribute: EipAttribute? = nil, imageCacheSize: UInt64? = nil, retentionDays: UInt64? = nil, registrySkipVerifyList: [String]? = nil, registryHttpEndPointList: [String]? = nil, resolveConfig: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageCacheResponse {
        let input = CreateImageCacheRequest(images: images, subnetId: subnetId, vpcId: vpcId, imageCacheName: imageCacheName, securityGroupIds: securityGroupIds, imageRegistryCredentials: imageRegistryCredentials, existedEipId: existedEipId, autoCreateEip: autoCreateEip, autoCreateEipAttribute: autoCreateEipAttribute, imageCacheSize: imageCacheSize, retentionDays: retentionDays, registrySkipVerifyList: registrySkipVerifyList, registryHttpEndPointList: registryHttpEndPointList, resolveConfig: resolveConfig)
        return try await self.client.execute(action: "CreateImageCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
