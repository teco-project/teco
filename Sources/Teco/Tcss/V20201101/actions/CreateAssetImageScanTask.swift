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
    /// CreateAssetImageScanTask请求参数结构体
    public struct CreateAssetImageScanTaskRequest: TCRequestModel {
        /// 是否扫描全部镜像；全部镜像，镜像列表和根据过滤条件筛选三选一。
        public let all: Bool?

        /// 需要扫描的镜像列表；全部镜像，镜像列表和根据过滤条件筛选三选一。
        public let images: [String]?

        /// 扫描漏洞；漏洞，木马和风险需选其一
        public let scanVul: Bool?

        /// 扫描木马；漏洞，木马和风险需选其一
        public let scanVirus: Bool?

        /// 扫描风险；漏洞，木马和风险需选其一
        public let scanRisk: Bool?

        /// 根据过滤条件筛选出镜像；全部镜像，镜像列表和根据过滤条件筛选三选一。
        public let filters: [AssetFilters]?

        /// 根据过滤条件筛选出镜像，再排除个别镜像
        public let excludeImageIds: [String]?

        public init(all: Bool? = nil, images: [String]? = nil, scanVul: Bool? = nil, scanVirus: Bool? = nil, scanRisk: Bool? = nil, filters: [AssetFilters]? = nil, excludeImageIds: [String]? = nil) {
            self.all = all
            self.images = images
            self.scanVul = scanVul
            self.scanVirus = scanVirus
            self.scanRisk = scanRisk
            self.filters = filters
            self.excludeImageIds = excludeImageIds
        }

        enum CodingKeys: String, CodingKey {
            case all = "All"
            case images = "Images"
            case scanVul = "ScanVul"
            case scanVirus = "ScanVirus"
            case scanRisk = "ScanRisk"
            case filters = "Filters"
            case excludeImageIds = "ExcludeImageIds"
        }
    }

    /// CreateAssetImageScanTask返回参数结构体
    public struct CreateAssetImageScanTaskResponse: TCResponseModel {
        /// 任务id
        public let taskID: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
            case requestId = "RequestId"
        }
    }

    /// 创建镜像扫描任务
    ///
    /// 容器安全创建镜像扫描任务
    @inlinable
    public func createAssetImageScanTask(_ input: CreateAssetImageScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssetImageScanTaskResponse> {
        self.client.execute(action: "CreateAssetImageScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建镜像扫描任务
    ///
    /// 容器安全创建镜像扫描任务
    @inlinable
    public func createAssetImageScanTask(_ input: CreateAssetImageScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssetImageScanTaskResponse {
        try await self.client.execute(action: "CreateAssetImageScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建镜像扫描任务
    ///
    /// 容器安全创建镜像扫描任务
    @inlinable
    public func createAssetImageScanTask(all: Bool? = nil, images: [String]? = nil, scanVul: Bool? = nil, scanVirus: Bool? = nil, scanRisk: Bool? = nil, filters: [AssetFilters]? = nil, excludeImageIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssetImageScanTaskResponse> {
        self.createAssetImageScanTask(.init(all: all, images: images, scanVul: scanVul, scanVirus: scanVirus, scanRisk: scanRisk, filters: filters, excludeImageIds: excludeImageIds), region: region, logger: logger, on: eventLoop)
    }

    /// 创建镜像扫描任务
    ///
    /// 容器安全创建镜像扫描任务
    @inlinable
    public func createAssetImageScanTask(all: Bool? = nil, images: [String]? = nil, scanVul: Bool? = nil, scanVirus: Bool? = nil, scanRisk: Bool? = nil, filters: [AssetFilters]? = nil, excludeImageIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssetImageScanTaskResponse {
        try await self.createAssetImageScanTask(.init(all: all, images: images, scanVul: scanVul, scanVirus: scanVirus, scanRisk: scanRisk, filters: filters, excludeImageIds: excludeImageIds), region: region, logger: logger, on: eventLoop)
    }
}
