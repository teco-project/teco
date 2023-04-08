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

import TecoCore

extension Dbdc {
    /// DescribeInstanceDetail请求参数结构体
    public struct DescribeInstanceDetailRequest: TCRequestModel {
        /// 独享集群实例Id
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeInstanceDetail返回参数结构体
    public struct DescribeInstanceDetailResponse: TCResponseModel {
        /// 独享集群实例Id
        public let instanceId: String

        /// 独享集群实例名称
        public let instanceName: String

        /// 地域
        public let region: String

        /// 产品ID, 0:CDB, 1:TDSQL
        public let productId: Int64

        /// 集群类型, 0:公有云, 1:金融围笼
        public let type: Int64

        /// 主机类型, 0:物理机, 1:cvm本地盘, 2:cvm云盘
        public let hostType: Int64

        /// 自动续费标志, 0:未设置, 1:自动续费, 2:到期不续费
        public let autoRenewFlag: Int64

        /// 集群状态
        public let status: Int64

        /// 集群状态描述
        public let statusDesc: String

        /// 创建时间
        public let createTime: String

        /// 到期时间
        public let periodEndTime: String

        /// 主机数
        public let hostNum: Int64

        /// Db实例数
        public let dbNum: Int64

        /// 分配策略, 0:紧凑, 1:均匀
        public let assignStrategy: Int64

        /// 总主机CPU(单位:核)
        public let cpuSpec: Int64

        /// 总已分配CPU(单位:核)
        public let cpuAssigned: Int64

        /// 总可分配CPU(单位:核)
        public let cpuAssignable: Int64

        /// 总主机内存(单位:GB)
        public let memorySpec: Int64

        /// 总已分配内存(单位:GB)
        public let memoryAssigned: Int64

        /// 总可分配内存(单位:GB)
        public let memoryAssignable: Int64

        /// 总机器磁盘(单位:GB)
        public let diskSpec: Int64

        /// 总已分配磁盘(单位:GB)
        public let diskAssigned: Int64

        /// 总可分配磁盘(单位:GB)
        public let diskAssignable: Int64

        /// 可用区
        public let zone: String

        /// 金融围笼ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fenceId: String?

        /// 所属集群ID(默认集群为空)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case region = "Region"
            case productId = "ProductId"
            case type = "Type"
            case hostType = "HostType"
            case autoRenewFlag = "AutoRenewFlag"
            case status = "Status"
            case statusDesc = "StatusDesc"
            case createTime = "CreateTime"
            case periodEndTime = "PeriodEndTime"
            case hostNum = "HostNum"
            case dbNum = "DbNum"
            case assignStrategy = "AssignStrategy"
            case cpuSpec = "CpuSpec"
            case cpuAssigned = "CpuAssigned"
            case cpuAssignable = "CpuAssignable"
            case memorySpec = "MemorySpec"
            case memoryAssigned = "MemoryAssigned"
            case memoryAssignable = "MemoryAssignable"
            case diskSpec = "DiskSpec"
            case diskAssigned = "DiskAssigned"
            case diskAssignable = "DiskAssignable"
            case zone = "Zone"
            case fenceId = "FenceId"
            case clusterId = "ClusterId"
            case requestId = "RequestId"
        }
    }

    /// 查询独享集群详情
    ///
    /// 本接口用于查询独享集群详情
    @inlinable
    public func describeInstanceDetail(_ input: DescribeInstanceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceDetailResponse> {
        self.client.execute(action: "DescribeInstanceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询独享集群详情
    ///
    /// 本接口用于查询独享集群详情
    @inlinable
    public func describeInstanceDetail(_ input: DescribeInstanceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceDetailResponse {
        try await self.client.execute(action: "DescribeInstanceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询独享集群详情
    ///
    /// 本接口用于查询独享集群详情
    @inlinable
    public func describeInstanceDetail(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceDetailResponse> {
        self.describeInstanceDetail(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询独享集群详情
    ///
    /// 本接口用于查询独享集群详情
    @inlinable
    public func describeInstanceDetail(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceDetailResponse {
        try await self.describeInstanceDetail(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
