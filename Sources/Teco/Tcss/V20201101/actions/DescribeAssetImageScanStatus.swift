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
    /// DescribeAssetImageScanStatus请求参数结构体
    public struct DescribeAssetImageScanStatusRequest: TCRequestModel {
        /// 任务id
        public let taskID: String?

        public init(taskID: String? = nil) {
            self.taskID = taskID
        }

        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
        }
    }

    /// DescribeAssetImageScanStatus返回参数结构体
    public struct DescribeAssetImageScanStatusResponse: TCResponseModel {
        /// 镜像个数
        public let imageTotal: UInt64

        /// 扫描镜像个数
        public let imageScanCnt: UInt64

        /// 扫描状态
        public let status: String

        /// 扫描进度 ImageScanCnt/ImageTotal *100
        public let schedule: UInt64

        /// 安全个数
        public let successCount: UInt64

        /// 风险个数
        public let riskCount: UInt64

        /// 剩余扫描时间
        public let leftSeconds: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageTotal = "ImageTotal"
            case imageScanCnt = "ImageScanCnt"
            case status = "Status"
            case schedule = "Schedule"
            case successCount = "SuccessCount"
            case riskCount = "RiskCount"
            case leftSeconds = "LeftSeconds"
            case requestId = "RequestId"
        }
    }

    /// 查询镜像扫描状态
    ///
    /// 容器安全查询镜像扫描状态
    @inlinable
    public func describeAssetImageScanStatus(_ input: DescribeAssetImageScanStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageScanStatusResponse> {
        self.client.execute(action: "DescribeAssetImageScanStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像扫描状态
    ///
    /// 容器安全查询镜像扫描状态
    @inlinable
    public func describeAssetImageScanStatus(_ input: DescribeAssetImageScanStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageScanStatusResponse {
        try await self.client.execute(action: "DescribeAssetImageScanStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像扫描状态
    ///
    /// 容器安全查询镜像扫描状态
    @inlinable
    public func describeAssetImageScanStatus(taskID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageScanStatusResponse> {
        self.describeAssetImageScanStatus(.init(taskID: taskID), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像扫描状态
    ///
    /// 容器安全查询镜像扫描状态
    @inlinable
    public func describeAssetImageScanStatus(taskID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageScanStatusResponse {
        try await self.describeAssetImageScanStatus(.init(taskID: taskID), region: region, logger: logger, on: eventLoop)
    }
}
