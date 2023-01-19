//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cat {
    /// DescribeProbeNodes请求参数结构体
    public struct DescribeProbeNodesRequest: TCRequestModel {
        /// 节点类型
        /// <li> 1 = IDC </li>
        /// <li> 2 = LastMile </li>
        /// <li> 3 = Mobile </li>
        public let nodeType: Int64?

        /// 节点区域
        /// <li> 1 = 中国大陆 </li>
        /// <li> 2 = 港澳台 </li>
        /// <li> 3 = 海外 </li>
        public let location: Int64?

        /// 是否IPv6
        public let isIPv6: Bool?

        /// 名字模糊搜索
        public let nodeName: String?

        /// 付费模式
        /// <li>1 = 试用版本</li>
        /// <li> 2 = 付费版本 </li>
        public let payMode: Int64?

        public init(nodeType: Int64? = nil, location: Int64? = nil, isIPv6: Bool? = nil, nodeName: String? = nil, payMode: Int64? = nil) {
            self.nodeType = nodeType
            self.location = location
            self.isIPv6 = isIPv6
            self.nodeName = nodeName
            self.payMode = payMode
        }

        enum CodingKeys: String, CodingKey {
            case nodeType = "NodeType"
            case location = "Location"
            case isIPv6 = "IsIPv6"
            case nodeName = "NodeName"
            case payMode = "PayMode"
        }
    }

    /// DescribeProbeNodes返回参数结构体
    public struct DescribeProbeNodesResponse: TCResponseModel {
        /// 节点列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeSet: [NodeDefine]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodeSet = "NodeSet"
            case requestId = "RequestId"
        }
    }

    /// 查询拨测节点
    @inlinable
    public func describeProbeNodes(_ input: DescribeProbeNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProbeNodesResponse> {
        self.client.execute(action: "DescribeProbeNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询拨测节点
    @inlinable
    public func describeProbeNodes(_ input: DescribeProbeNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProbeNodesResponse {
        try await self.client.execute(action: "DescribeProbeNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询拨测节点
    @inlinable
    public func describeProbeNodes(nodeType: Int64? = nil, location: Int64? = nil, isIPv6: Bool? = nil, nodeName: String? = nil, payMode: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProbeNodesResponse> {
        self.describeProbeNodes(DescribeProbeNodesRequest(nodeType: nodeType, location: location, isIPv6: isIPv6, nodeName: nodeName, payMode: payMode), region: region, logger: logger, on: eventLoop)
    }

    /// 查询拨测节点
    @inlinable
    public func describeProbeNodes(nodeType: Int64? = nil, location: Int64? = nil, isIPv6: Bool? = nil, nodeName: String? = nil, payMode: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProbeNodesResponse {
        try await self.describeProbeNodes(DescribeProbeNodesRequest(nodeType: nodeType, location: location, isIPv6: isIPv6, nodeName: nodeName, payMode: payMode), region: region, logger: logger, on: eventLoop)
    }
}
