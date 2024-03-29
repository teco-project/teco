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

extension Iotexplorer {
    /// DescribeFirmwareTask请求参数结构体
    public struct DescribeFirmwareTaskRequest: TCRequest {
        /// 产品ID
        public let productID: String

        /// 固件版本号
        public let firmwareVersion: String

        /// 固件任务ID
        public let taskId: UInt64

        public init(productID: String, firmwareVersion: String, taskId: UInt64) {
            self.productID = productID
            self.firmwareVersion = firmwareVersion
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case firmwareVersion = "FirmwareVersion"
            case taskId = "TaskId"
        }
    }

    /// DescribeFirmwareTask返回参数结构体
    public struct DescribeFirmwareTaskResponse: TCResponse {
        /// 固件任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: UInt64?

        /// 固件任务状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 固件任务创建时间，单位：秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: Int64?

        /// 固件任务升级类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: Int64?

        /// 产品名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productName: String?

        /// 固件任务升级模式。originalVersion（按版本号升级）、filename（提交文件升级）、devicenames（按设备名称升级）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let upgradeMode: String?

        /// 产品ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?

        /// 原始固件版本号，在UpgradeMode是originalVersion升级模式下会返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originalVersion: String?

        /// 创建账号ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createUserId: UInt64?

        /// 创建账号ID昵称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creatorNickName: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case status = "Status"
            case createTime = "CreateTime"
            case type = "Type"
            case productName = "ProductName"
            case upgradeMode = "UpgradeMode"
            case productId = "ProductId"
            case originalVersion = "OriginalVersion"
            case createUserId = "CreateUserId"
            case creatorNickName = "CreatorNickName"
            case requestId = "RequestId"
        }
    }

    /// 查询固件升级任务列表
    @inlinable
    public func describeFirmwareTask(_ input: DescribeFirmwareTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirmwareTaskResponse> {
        self.client.execute(action: "DescribeFirmwareTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务列表
    @inlinable
    public func describeFirmwareTask(_ input: DescribeFirmwareTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareTaskResponse {
        try await self.client.execute(action: "DescribeFirmwareTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询固件升级任务列表
    @inlinable
    public func describeFirmwareTask(productID: String, firmwareVersion: String, taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirmwareTaskResponse> {
        self.describeFirmwareTask(.init(productID: productID, firmwareVersion: firmwareVersion, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务列表
    @inlinable
    public func describeFirmwareTask(productID: String, firmwareVersion: String, taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareTaskResponse {
        try await self.describeFirmwareTask(.init(productID: productID, firmwareVersion: firmwareVersion, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
