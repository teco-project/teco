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

extension Tke {
    /// DescribePrometheusInstance请求参数结构体
    public struct DescribePrometheusInstanceRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribePrometheusInstance返回参数结构体
    public struct DescribePrometheusInstanceResponse: TCResponseModel {
        /// 实例id
        public let instanceId: String

        /// 实例名称
        public let name: String

        /// 私有网络id
        public let vpcId: String

        /// 子网id
        public let subnetId: String

        /// cos桶名称
        public let cosBucket: String

        /// 数据查询地址
        public let queryAddress: String

        /// 实例中grafana相关的信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let grafana: PrometheusGrafanaInfo?

        /// 用户自定义alertmanager
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alertManagerUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case name = "Name"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case cosBucket = "COSBucket"
            case queryAddress = "QueryAddress"
            case grafana = "Grafana"
            case alertManagerUrl = "AlertManagerUrl"
            case requestId = "RequestId"
        }
    }

    /// 获取实例详细信息
    @inlinable
    public func describePrometheusInstance(_ input: DescribePrometheusInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusInstanceResponse> {
        self.client.execute(action: "DescribePrometheusInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例详细信息
    @inlinable
    public func describePrometheusInstance(_ input: DescribePrometheusInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusInstanceResponse {
        try await self.client.execute(action: "DescribePrometheusInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例详细信息
    @inlinable
    public func describePrometheusInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusInstanceResponse> {
        self.describePrometheusInstance(DescribePrometheusInstanceRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实例详细信息
    @inlinable
    public func describePrometheusInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusInstanceResponse {
        try await self.describePrometheusInstance(DescribePrometheusInstanceRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
