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
    /// DescribeAssetImageRegistryScanStatusOneKey请求参数结构体
    public struct DescribeAssetImageRegistryScanStatusOneKeyRequest: TCRequest {
        /// 需要获取进度的镜像列表
        public let images: [ImageInfo]?

        /// 是否获取全部镜像
        public let all: Bool?

        /// 需要获取进度的镜像列表Id
        public let id: [UInt64]?

        /// 获取进度的任务ID
        public let taskID: UInt64?

        public init(images: [ImageInfo]? = nil, all: Bool? = nil, id: [UInt64]? = nil, taskID: UInt64? = nil) {
            self.images = images
            self.all = all
            self.id = id
            self.taskID = taskID
        }

        enum CodingKeys: String, CodingKey {
            case images = "Images"
            case all = "All"
            case id = "Id"
            case taskID = "TaskID"
        }
    }

    /// DescribeAssetImageRegistryScanStatusOneKey返回参数结构体
    public struct DescribeAssetImageRegistryScanStatusOneKeyResponse: TCResponse {
        /// 镜像个数
        public let imageTotal: UInt64

        /// 扫描镜像个数
        public let imageScanCnt: UInt64

        /// 扫描进度列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageStatus: [ImageProgress]?

        /// 安全个数
        public let successCount: UInt64

        /// 风险个数
        public let riskCount: UInt64

        /// 总的扫描进度
        public let schedule: UInt64

        /// 总的扫描状态
        public let status: String

        /// 扫描剩余时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanRemainTime: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageTotal = "ImageTotal"
            case imageScanCnt = "ImageScanCnt"
            case imageStatus = "ImageStatus"
            case successCount = "SuccessCount"
            case riskCount = "RiskCount"
            case schedule = "Schedule"
            case status = "Status"
            case scanRemainTime = "ScanRemainTime"
            case requestId = "RequestId"
        }
    }

    /// 镜像仓库查询一键镜像扫描状态
    @inlinable
    public func describeAssetImageRegistryScanStatusOneKey(_ input: DescribeAssetImageRegistryScanStatusOneKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryScanStatusOneKeyResponse> {
        self.client.execute(action: "DescribeAssetImageRegistryScanStatusOneKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询一键镜像扫描状态
    @inlinable
    public func describeAssetImageRegistryScanStatusOneKey(_ input: DescribeAssetImageRegistryScanStatusOneKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryScanStatusOneKeyResponse {
        try await self.client.execute(action: "DescribeAssetImageRegistryScanStatusOneKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库查询一键镜像扫描状态
    @inlinable
    public func describeAssetImageRegistryScanStatusOneKey(images: [ImageInfo]? = nil, all: Bool? = nil, id: [UInt64]? = nil, taskID: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryScanStatusOneKeyResponse> {
        self.describeAssetImageRegistryScanStatusOneKey(.init(images: images, all: all, id: id, taskID: taskID), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询一键镜像扫描状态
    @inlinable
    public func describeAssetImageRegistryScanStatusOneKey(images: [ImageInfo]? = nil, all: Bool? = nil, id: [UInt64]? = nil, taskID: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryScanStatusOneKeyResponse {
        try await self.describeAssetImageRegistryScanStatusOneKey(.init(images: images, all: all, id: id, taskID: taskID), region: region, logger: logger, on: eventLoop)
    }
}
