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

extension Tke {
    /// CreateClusterEndpoint请求参数结构体
    public struct CreateClusterEndpointRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 集群端口所在的子网ID  (仅在开启非外网访问时需要填，必须为集群所在VPC内的子网)
        public let subnetId: String?

        /// 是否为外网访问（TRUE 外网访问 FALSE 内网访问，默认值： FALSE）
        public let isExtranet: Bool?

        /// 设置域名
        public let domain: String?

        /// 使用的安全组，只有外网访问需要传递（开启外网访问时必传）
        public let securityGroup: String?

        /// 创建lb参数，只有外网访问需要设置，是一个json格式化后的字符串：{"InternetAccessible":{"InternetChargeType":"TRAFFIC_POSTPAID_BY_HOUR","InternetMaxBandwidthOut":200},"VipIsp":"","BandwidthPackageId":""}。
        /// 各个参数意义：
        /// InternetAccessible.InternetChargeType含义：TRAFFIC_POSTPAID_BY_HOUR按流量按小时后计费;BANDWIDTH_POSTPAID_BY_HOUR 按带宽按小时后计费;InternetAccessible.BANDWIDTH_PACKAGE 按带宽包计费。
        /// InternetMaxBandwidthOut含义：最大出带宽，单位Mbps，范围支持0到2048，默认值10。
        /// VipIsp含义：CMCC | CTCC | CUCC，分别对应 移动 | 电信 | 联通，如果不指定本参数，则默认使用BGP。可通过 DescribeSingleIsp 接口查询一个地域所支持的Isp。如果指定运营商，则网络计费式只能使用按带宽包计费BANDWIDTH_PACKAGE。
        /// BandwidthPackageId含义：带宽包ID，指定此参数时，网络计费方式InternetAccessible.InternetChargeType只支持按带宽包计费BANDWIDTH_PACKAGE。
        public let extensiveParameters: String?

        public init(clusterId: String, subnetId: String? = nil, isExtranet: Bool? = nil, domain: String? = nil, securityGroup: String? = nil, extensiveParameters: String? = nil) {
            self.clusterId = clusterId
            self.subnetId = subnetId
            self.isExtranet = isExtranet
            self.domain = domain
            self.securityGroup = securityGroup
            self.extensiveParameters = extensiveParameters
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case subnetId = "SubnetId"
            case isExtranet = "IsExtranet"
            case domain = "Domain"
            case securityGroup = "SecurityGroup"
            case extensiveParameters = "ExtensiveParameters"
        }
    }

    /// CreateClusterEndpoint返回参数结构体
    public struct CreateClusterEndpointResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建集群访问端口
    @inlinable @discardableResult
    public func createClusterEndpoint(_ input: CreateClusterEndpointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterEndpointResponse> {
        self.client.execute(action: "CreateClusterEndpoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建集群访问端口
    @inlinable @discardableResult
    public func createClusterEndpoint(_ input: CreateClusterEndpointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterEndpointResponse {
        try await self.client.execute(action: "CreateClusterEndpoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建集群访问端口
    @inlinable @discardableResult
    public func createClusterEndpoint(clusterId: String, subnetId: String? = nil, isExtranet: Bool? = nil, domain: String? = nil, securityGroup: String? = nil, extensiveParameters: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterEndpointResponse> {
        self.createClusterEndpoint(.init(clusterId: clusterId, subnetId: subnetId, isExtranet: isExtranet, domain: domain, securityGroup: securityGroup, extensiveParameters: extensiveParameters), region: region, logger: logger, on: eventLoop)
    }

    /// 创建集群访问端口
    @inlinable @discardableResult
    public func createClusterEndpoint(clusterId: String, subnetId: String? = nil, isExtranet: Bool? = nil, domain: String? = nil, securityGroup: String? = nil, extensiveParameters: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterEndpointResponse {
        try await self.createClusterEndpoint(.init(clusterId: clusterId, subnetId: subnetId, isExtranet: isExtranet, domain: domain, securityGroup: securityGroup, extensiveParameters: extensiveParameters), region: region, logger: logger, on: eventLoop)
    }
}
