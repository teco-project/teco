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

extension Tdcpg {
    /// ModifyClusterInstancesSpec请求参数结构体
    public struct ModifyClusterInstancesSpecRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 实例ID列表，目前只支持单个实例修改
        public let instanceIdSet: [String]

        /// 修改后的CPU核数。取值参考文档【购买指南】
        public let cpu: UInt64

        /// 修改后的内存大小，单位GiB。取值参考文档【购买指南】
        public let memory: UInt64

        /// 操作时机
        ///  - IMMEDIATE：立即执行
        ///  - MAINTAIN_PERIOD：维护窗口期执行
        public let operationTiming: String

        public init(clusterId: String, instanceIdSet: [String], cpu: UInt64, memory: UInt64, operationTiming: String) {
            self.clusterId = clusterId
            self.instanceIdSet = instanceIdSet
            self.cpu = cpu
            self.memory = memory
            self.operationTiming = operationTiming
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIdSet = "InstanceIdSet"
            case cpu = "CPU"
            case memory = "Memory"
            case operationTiming = "OperationTiming"
        }
    }

    /// ModifyClusterInstancesSpec返回参数结构体
    public struct ModifyClusterInstancesSpecResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例规格
    ///
    /// 修改实例规格，此接口只针对状态为running(运行中)的实例生效
    @inlinable @discardableResult
    public func modifyClusterInstancesSpec(_ input: ModifyClusterInstancesSpecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterInstancesSpecResponse> {
        self.client.execute(action: "ModifyClusterInstancesSpec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例规格
    ///
    /// 修改实例规格，此接口只针对状态为running(运行中)的实例生效
    @inlinable @discardableResult
    public func modifyClusterInstancesSpec(_ input: ModifyClusterInstancesSpecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterInstancesSpecResponse {
        try await self.client.execute(action: "ModifyClusterInstancesSpec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例规格
    ///
    /// 修改实例规格，此接口只针对状态为running(运行中)的实例生效
    @inlinable @discardableResult
    public func modifyClusterInstancesSpec(clusterId: String, instanceIdSet: [String], cpu: UInt64, memory: UInt64, operationTiming: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterInstancesSpecResponse> {
        self.modifyClusterInstancesSpec(ModifyClusterInstancesSpecRequest(clusterId: clusterId, instanceIdSet: instanceIdSet, cpu: cpu, memory: memory, operationTiming: operationTiming), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例规格
    ///
    /// 修改实例规格，此接口只针对状态为running(运行中)的实例生效
    @inlinable @discardableResult
    public func modifyClusterInstancesSpec(clusterId: String, instanceIdSet: [String], cpu: UInt64, memory: UInt64, operationTiming: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterInstancesSpecResponse {
        try await self.modifyClusterInstancesSpec(ModifyClusterInstancesSpecRequest(clusterId: clusterId, instanceIdSet: instanceIdSet, cpu: cpu, memory: memory, operationTiming: operationTiming), region: region, logger: logger, on: eventLoop)
    }
}
