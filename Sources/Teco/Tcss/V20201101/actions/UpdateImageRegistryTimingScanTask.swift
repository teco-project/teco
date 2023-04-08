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
    /// UpdateImageRegistryTimingScanTask请求参数结构体
    public struct UpdateImageRegistryTimingScanTaskRequest: TCRequestModel {
        /// 定时扫描周期
        public let scanPeriod: UInt64

        /// 定时扫描开关
        public let enable: Bool

        /// 定时扫描的时间
        public let scanTime: String

        /// 扫描木马类型数组
        public let scanType: [String]?

        /// 扫描镜像
        public let images: [ImageInfo]?

        /// 是否扫描所有
        public let all: Bool?

        /// 扫描镜像Id
        public let id: [UInt64]?

        public init(scanPeriod: UInt64, enable: Bool, scanTime: String, scanType: [String]? = nil, images: [ImageInfo]? = nil, all: Bool? = nil, id: [UInt64]? = nil) {
            self.scanPeriod = scanPeriod
            self.enable = enable
            self.scanTime = scanTime
            self.scanType = scanType
            self.images = images
            self.all = all
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case scanPeriod = "ScanPeriod"
            case enable = "Enable"
            case scanTime = "ScanTime"
            case scanType = "ScanType"
            case images = "Images"
            case all = "All"
            case id = "Id"
        }
    }

    /// UpdateImageRegistryTimingScanTask返回参数结构体
    public struct UpdateImageRegistryTimingScanTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 镜像仓库更新定时任务
    @inlinable @discardableResult
    public func updateImageRegistryTimingScanTask(_ input: UpdateImageRegistryTimingScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateImageRegistryTimingScanTaskResponse> {
        self.client.execute(action: "UpdateImageRegistryTimingScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库更新定时任务
    @inlinable @discardableResult
    public func updateImageRegistryTimingScanTask(_ input: UpdateImageRegistryTimingScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateImageRegistryTimingScanTaskResponse {
        try await self.client.execute(action: "UpdateImageRegistryTimingScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库更新定时任务
    @inlinable @discardableResult
    public func updateImageRegistryTimingScanTask(scanPeriod: UInt64, enable: Bool, scanTime: String, scanType: [String]? = nil, images: [ImageInfo]? = nil, all: Bool? = nil, id: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateImageRegistryTimingScanTaskResponse> {
        self.updateImageRegistryTimingScanTask(.init(scanPeriod: scanPeriod, enable: enable, scanTime: scanTime, scanType: scanType, images: images, all: all, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像仓库更新定时任务
    @inlinable @discardableResult
    public func updateImageRegistryTimingScanTask(scanPeriod: UInt64, enable: Bool, scanTime: String, scanType: [String]? = nil, images: [ImageInfo]? = nil, all: Bool? = nil, id: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateImageRegistryTimingScanTaskResponse {
        try await self.updateImageRegistryTimingScanTask(.init(scanPeriod: scanPeriod, enable: enable, scanTime: scanTime, scanType: scanType, images: images, all: all, id: id), region: region, logger: logger, on: eventLoop)
    }
}
