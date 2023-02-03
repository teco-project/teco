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

extension Tcss {
    /// ModifyAssetImageRegistryScanStop请求参数结构体
    public struct ModifyAssetImageRegistryScanStopRequest: TCRequestModel {
        /// 是否扫描全部镜像
        public let all: Bool?

        /// 扫描的镜像列表
        public let images: [ImageInfo]?

        /// 扫描的镜像列表
        public let id: [UInt64]?

        /// 过滤条件
        public let filters: [AssetFilters]?

        /// 不要扫描的镜像列表，与Filters配合使用
        public let excludeImageList: [UInt64]?

        /// 是否仅扫描各repository最新版本的镜像
        public let onlyScanLatest: Bool?

        public init(all: Bool? = nil, images: [ImageInfo]? = nil, id: [UInt64]? = nil, filters: [AssetFilters]? = nil, excludeImageList: [UInt64]? = nil, onlyScanLatest: Bool? = nil) {
            self.all = all
            self.images = images
            self.id = id
            self.filters = filters
            self.excludeImageList = excludeImageList
            self.onlyScanLatest = onlyScanLatest
        }

        enum CodingKeys: String, CodingKey {
            case all = "All"
            case images = "Images"
            case id = "Id"
            case filters = "Filters"
            case excludeImageList = "ExcludeImageList"
            case onlyScanLatest = "OnlyScanLatest"
        }
    }

    /// ModifyAssetImageRegistryScanStop返回参数结构体
    public struct ModifyAssetImageRegistryScanStopResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 镜像仓库停止镜像扫描任务
    @inlinable @discardableResult
    public func modifyAssetImageRegistryScanStop(_ input: ModifyAssetImageRegistryScanStopRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAssetImageRegistryScanStopResponse> {
        self.client.execute(action: "ModifyAssetImageRegistryScanStop", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库停止镜像扫描任务
    @inlinable @discardableResult
    public func modifyAssetImageRegistryScanStop(_ input: ModifyAssetImageRegistryScanStopRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAssetImageRegistryScanStopResponse {
        try await self.client.execute(action: "ModifyAssetImageRegistryScanStop", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库停止镜像扫描任务
    @inlinable @discardableResult
    public func modifyAssetImageRegistryScanStop(all: Bool? = nil, images: [ImageInfo]? = nil, id: [UInt64]? = nil, filters: [AssetFilters]? = nil, excludeImageList: [UInt64]? = nil, onlyScanLatest: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAssetImageRegistryScanStopResponse> {
        let input = ModifyAssetImageRegistryScanStopRequest(all: all, images: images, id: id, filters: filters, excludeImageList: excludeImageList, onlyScanLatest: onlyScanLatest)
        return self.client.execute(action: "ModifyAssetImageRegistryScanStop", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库停止镜像扫描任务
    @inlinable @discardableResult
    public func modifyAssetImageRegistryScanStop(all: Bool? = nil, images: [ImageInfo]? = nil, id: [UInt64]? = nil, filters: [AssetFilters]? = nil, excludeImageList: [UInt64]? = nil, onlyScanLatest: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAssetImageRegistryScanStopResponse {
        let input = ModifyAssetImageRegistryScanStopRequest(all: all, images: images, id: id, filters: filters, excludeImageList: excludeImageList, onlyScanLatest: onlyScanLatest)
        return try await self.client.execute(action: "ModifyAssetImageRegistryScanStop", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
