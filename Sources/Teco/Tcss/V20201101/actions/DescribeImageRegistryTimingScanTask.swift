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

extension Tcss {
    /// DescribeImageRegistryTimingScanTask请求参数结构体
    public struct DescribeImageRegistryTimingScanTaskRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeImageRegistryTimingScanTask返回参数结构体
    public struct DescribeImageRegistryTimingScanTaskResponse: TCResponseModel {
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
        public let all: Bool

        /// 自定义扫描镜像
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let images: [ImageInfo]?

        /// 自动以扫描镜像Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: [UInt64]?

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
            case requestId = "RequestId"
        }
    }

    /// 镜像仓库查看定时任务
    @inlinable
    public func describeImageRegistryTimingScanTask(_ input: DescribeImageRegistryTimingScanTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageRegistryTimingScanTaskResponse > {
        self.client.execute(action: "DescribeImageRegistryTimingScanTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查看定时任务
    @inlinable
    public func describeImageRegistryTimingScanTask(_ input: DescribeImageRegistryTimingScanTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageRegistryTimingScanTaskResponse {
        try await self.client.execute(action: "DescribeImageRegistryTimingScanTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库查看定时任务
    @inlinable
    public func describeImageRegistryTimingScanTask(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageRegistryTimingScanTaskResponse > {
        self.describeImageRegistryTimingScanTask(DescribeImageRegistryTimingScanTaskRequest(), logger: logger, on: eventLoop)
    }

    /// 镜像仓库查看定时任务
    @inlinable
    public func describeImageRegistryTimingScanTask(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageRegistryTimingScanTaskResponse {
        try await self.describeImageRegistryTimingScanTask(DescribeImageRegistryTimingScanTaskRequest(), logger: logger, on: eventLoop)
    }
}
