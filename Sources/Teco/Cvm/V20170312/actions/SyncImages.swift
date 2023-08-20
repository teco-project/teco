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

extension Cvm {
    /// SyncImages请求参数结构体
    public struct SyncImagesRequest: TCRequest {
        /// 镜像ID列表 ，镜像ID可以通过如下方式获取：
        ///
        /// - 通过[DescribeImages](https://cloud.tencent.com/document/api/213/15715)接口返回的`ImageId`获取。
        /// - 通过[镜像控制台](https://console.cloud.tencent.com/cvm/image)获取。
        ///
        /// 镜像ID必须满足限制：
        ///
        /// - 镜像ID对应的镜像状态必须为`NORMAL`。
        ///
        /// 镜像状态请参考[镜像数据表](https://cloud.tencent.com/document/product/213/15753#Image)。
        public let imageIds: [String]

        /// 目的同步地域列表，必须满足如下限制：
        ///
        /// - 必须是一个合法的Region。
        /// - 如果是自定义镜像，则目标同步地域不能为源地域。
        /// - 如果是共享镜像，则目的同步地域仅支持源地域，表示将共享镜像复制为源地域的自定义镜像。
        /// - 暂不支持部分地域同步。
        ///
        /// 具体地域参数请参考[Region](https://cloud.tencent.com/document/product/213/6091)。
        public let destinationRegions: [String]

        /// 检测是否支持发起同步镜像。
        public let dryRun: Bool?

        /// 目标镜像名称。
        public let imageName: String?

        /// 是否需要返回目的地域的镜像ID。
        public let imageSetRequired: Bool?

        public init(imageIds: [String], destinationRegions: [String], dryRun: Bool? = nil, imageName: String? = nil, imageSetRequired: Bool? = nil) {
            self.imageIds = imageIds
            self.destinationRegions = destinationRegions
            self.dryRun = dryRun
            self.imageName = imageName
            self.imageSetRequired = imageSetRequired
        }

        enum CodingKeys: String, CodingKey {
            case imageIds = "ImageIds"
            case destinationRegions = "DestinationRegions"
            case dryRun = "DryRun"
            case imageName = "ImageName"
            case imageSetRequired = "ImageSetRequired"
        }
    }

    /// SyncImages返回参数结构体
    public struct SyncImagesResponse: TCResponse {
        /// 目的地域的镜像ID信息。
        public let imageSet: [SyncImage]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageSet = "ImageSet"
            case requestId = "RequestId"
        }
    }

    /// 同步镜像
    ///
    /// 本接口（SyncImages）用于将自定义镜像同步到其它地区。
    ///
    /// * 该接口每次调用只支持同步一个镜像。
    /// * 该接口支持多个同步地域。
    /// * 单个账号在每个地域最多支持存在10个自定义镜像。
    @inlinable
    public func syncImages(_ input: SyncImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SyncImagesResponse> {
        self.client.execute(action: "SyncImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 同步镜像
    ///
    /// 本接口（SyncImages）用于将自定义镜像同步到其它地区。
    ///
    /// * 该接口每次调用只支持同步一个镜像。
    /// * 该接口支持多个同步地域。
    /// * 单个账号在每个地域最多支持存在10个自定义镜像。
    @inlinable
    public func syncImages(_ input: SyncImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncImagesResponse {
        try await self.client.execute(action: "SyncImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 同步镜像
    ///
    /// 本接口（SyncImages）用于将自定义镜像同步到其它地区。
    ///
    /// * 该接口每次调用只支持同步一个镜像。
    /// * 该接口支持多个同步地域。
    /// * 单个账号在每个地域最多支持存在10个自定义镜像。
    @inlinable
    public func syncImages(imageIds: [String], destinationRegions: [String], dryRun: Bool? = nil, imageName: String? = nil, imageSetRequired: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SyncImagesResponse> {
        self.syncImages(.init(imageIds: imageIds, destinationRegions: destinationRegions, dryRun: dryRun, imageName: imageName, imageSetRequired: imageSetRequired), region: region, logger: logger, on: eventLoop)
    }

    /// 同步镜像
    ///
    /// 本接口（SyncImages）用于将自定义镜像同步到其它地区。
    ///
    /// * 该接口每次调用只支持同步一个镜像。
    /// * 该接口支持多个同步地域。
    /// * 单个账号在每个地域最多支持存在10个自定义镜像。
    @inlinable
    public func syncImages(imageIds: [String], destinationRegions: [String], dryRun: Bool? = nil, imageName: String? = nil, imageSetRequired: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncImagesResponse {
        try await self.syncImages(.init(imageIds: imageIds, destinationRegions: destinationRegions, dryRun: dryRun, imageName: imageName, imageSetRequired: imageSetRequired), region: region, logger: logger, on: eventLoop)
    }
}
