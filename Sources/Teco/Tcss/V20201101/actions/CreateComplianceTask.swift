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
    /// CreateComplianceTask请求参数结构体
    public struct CreateComplianceTaskRequest: TCRequestModel {
        /// 指定要扫描的资产类型列表。
        /// ASSET_CONTAINER, 容器
        /// ASSET_IMAGE, 镜像
        /// ASSET_HOST, 主机
        /// ASSET_K8S, K8S资产
        /// AssetTypeSet, PolicySetId, PeriodTaskId三个参数，必须要给其中一个参数填写有效的值。
        public let assetTypeSet: [String]?

        /// 按照策略集ID指定的策略执行合规检查。
        public let policySetId: UInt64?

        /// 按照定时任务ID指定的策略执行合规检查。
        public let periodTaskId: UInt64?

        public init(assetTypeSet: [String]? = nil, policySetId: UInt64? = nil, periodTaskId: UInt64? = nil) {
            self.assetTypeSet = assetTypeSet
            self.policySetId = policySetId
            self.periodTaskId = periodTaskId
        }

        enum CodingKeys: String, CodingKey {
            case assetTypeSet = "AssetTypeSet"
            case policySetId = "PolicySetId"
            case periodTaskId = "PeriodTaskId"
        }
    }

    /// CreateComplianceTask返回参数结构体
    public struct CreateComplianceTaskResponse: TCResponseModel {
        /// 返回创建的合规检查任务的ID。
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 安全合规创建合规检查任务
    ///
    /// 创建合规检查任务，在资产级别触发重新检测时使用。
    @inlinable
    public func createComplianceTask(_ input: CreateComplianceTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateComplianceTaskResponse> {
        self.client.execute(action: "CreateComplianceTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规创建合规检查任务
    ///
    /// 创建合规检查任务，在资产级别触发重新检测时使用。
    @inlinable
    public func createComplianceTask(_ input: CreateComplianceTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateComplianceTaskResponse {
        try await self.client.execute(action: "CreateComplianceTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规创建合规检查任务
    ///
    /// 创建合规检查任务，在资产级别触发重新检测时使用。
    @inlinable
    public func createComplianceTask(assetTypeSet: [String]? = nil, policySetId: UInt64? = nil, periodTaskId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateComplianceTaskResponse> {
        self.createComplianceTask(.init(assetTypeSet: assetTypeSet, policySetId: policySetId, periodTaskId: periodTaskId), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规创建合规检查任务
    ///
    /// 创建合规检查任务，在资产级别触发重新检测时使用。
    @inlinable
    public func createComplianceTask(assetTypeSet: [String]? = nil, policySetId: UInt64? = nil, periodTaskId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateComplianceTaskResponse {
        try await self.createComplianceTask(.init(assetTypeSet: assetTypeSet, policySetId: policySetId, periodTaskId: periodTaskId), region: region, logger: logger, on: eventLoop)
    }
}
