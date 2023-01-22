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

extension Monitor {
    /// DescribePrometheusInstanceDetail请求参数结构体
    public struct DescribePrometheusInstanceDetailRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribePrometheusInstanceDetail返回参数结构体
    public struct DescribePrometheusInstanceDetailResponse: TCResponseModel {
        /// 实例ID
        public let instanceId: String

        /// 实例名称
        public let instanceName: String

        /// VPC ID
        public let vpcId: String

        /// 子网 ID
        public let subnetId: String

        /// 实例业务状态。取值范围：
        ///
        /// 1：正在创建
        /// 2：运行中
        /// 3：异常
        /// 4：重建中
        /// 5：销毁中
        /// 6：已停服
        /// 8：欠费停服中
        /// 9：欠费已停服
        public let instanceStatus: Int64

        /// 计费状态
        ///
        /// 1：正常
        /// 2：过期
        /// 3：销毁
        /// 4：分配中
        /// 5：分配失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chargeStatus: Int64?

        /// 是否开启 Grafana
        /// 0：不开启
        /// 1：开启
        public let enableGrafana: Int64

        /// Grafana 面板 URL
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let grafanaURL: String?

        /// 实例计费模式。取值范围：
        ///
        /// 2：包年包月
        /// 3：按量
        public let instanceChargeType: Int64

        /// 规格名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let specName: String?

        /// 存储周期
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataRetentionTime: Int64?

        /// 购买的实例过期时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expireTime: String?

        /// 自动续费标记
        ///
        /// 0：不自动续费
        /// 1：开启自动续费
        /// 2：禁止自动续费
        /// -1：无效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let autoRenewFlag: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case instanceStatus = "InstanceStatus"
            case chargeStatus = "ChargeStatus"
            case enableGrafana = "EnableGrafana"
            case grafanaURL = "GrafanaURL"
            case instanceChargeType = "InstanceChargeType"
            case specName = "SpecName"
            case dataRetentionTime = "DataRetentionTime"
            case expireTime = "ExpireTime"
            case autoRenewFlag = "AutoRenewFlag"
            case requestId = "RequestId"
        }
    }

    /// 获取TMP实例详情
    @inlinable
    public func describePrometheusInstanceDetail(_ input: DescribePrometheusInstanceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusInstanceDetailResponse> {
        self.client.execute(action: "DescribePrometheusInstanceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取TMP实例详情
    @inlinable
    public func describePrometheusInstanceDetail(_ input: DescribePrometheusInstanceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusInstanceDetailResponse {
        try await self.client.execute(action: "DescribePrometheusInstanceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取TMP实例详情
    @inlinable
    public func describePrometheusInstanceDetail(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusInstanceDetailResponse> {
        self.describePrometheusInstanceDetail(DescribePrometheusInstanceDetailRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取TMP实例详情
    @inlinable
    public func describePrometheusInstanceDetail(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusInstanceDetailResponse {
        try await self.describePrometheusInstanceDetail(DescribePrometheusInstanceDetailRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}