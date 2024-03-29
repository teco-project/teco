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

extension Tcss {
    /// DescribeImageRegistryTimingScanTask请求参数结构体
    public struct DescribeImageRegistryTimingScanTaskRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeImageRegistryTimingScanTask返回参数结构体
    public struct DescribeImageRegistryTimingScanTaskResponse: TCResponse {
        /// 定时扫描开关
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enable: Bool?

        /// 定时任务扫描时间
        public let scanTime: String

        /// 定时扫描间隔
        public let scanPeriod: UInt64

        /// 扫描类型数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanType: [String]?

        /// 扫描全部镜像
        @available(*, deprecated)
        public let all: Bool

        /// 自定义扫描镜像
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let images: [ImageInfo]?

        /// 自动以扫描镜像Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: [UInt64]?

        /// 是否扫描最新版本镜像
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let latest: Bool?

        /// 扫描结束时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanEndTime: String?

        /// 仓库类型 tcr,ccr,harbor
        public let registryType: [String]?

        /// 是否存在运行中的容器
        public let containerRunning: Bool?

        /// 扫描范围 0全部镜像，1自选镜像，2推荐扫描镜像
        public let scanScope: UInt64?

        /// 命名空间
        public let namespace: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case enable = "Enable"
            case scanTime = "ScanTime"
            case scanPeriod = "ScanPeriod"
            case scanType = "ScanType"
            case all = "All"
            case images = "Images"
            case id = "Id"
            case latest = "Latest"
            case scanEndTime = "ScanEndTime"
            case registryType = "RegistryType"
            case containerRunning = "ContainerRunning"
            case scanScope = "ScanScope"
            case namespace = "Namespace"
            case requestId = "RequestId"
        }
    }

    /// 镜像仓库查看定时任务
    @inlinable
    public func describeImageRegistryTimingScanTask(_ input: DescribeImageRegistryTimingScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageRegistryTimingScanTaskResponse> {
        self.client.execute(action: "DescribeImageRegistryTimingScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查看定时任务
    @inlinable
    public func describeImageRegistryTimingScanTask(_ input: DescribeImageRegistryTimingScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageRegistryTimingScanTaskResponse {
        try await self.client.execute(action: "DescribeImageRegistryTimingScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库查看定时任务
    @inlinable
    public func describeImageRegistryTimingScanTask(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageRegistryTimingScanTaskResponse> {
        self.describeImageRegistryTimingScanTask(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查看定时任务
    @inlinable
    public func describeImageRegistryTimingScanTask(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageRegistryTimingScanTaskResponse {
        try await self.describeImageRegistryTimingScanTask(.init(), region: region, logger: logger, on: eventLoop)
    }
}
