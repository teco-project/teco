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
    /// DescribeVulDefenceSetting请求参数结构体
    public struct DescribeVulDefenceSettingRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeVulDefenceSetting返回参数结构体
    public struct DescribeVulDefenceSettingResponse: TCResponse {
        /// 是否开启:0: 关闭 1:开启
        public let isEnabled: Int64

        /// 漏洞防御主机范围: 0:自选主机节点，1:全部
        public let scope: Int64

        /// 漏洞防御主机数量
        public let hostCount: Int64

        /// 开启漏洞防御异常主机数量
        public let exceptionHostCount: Int64

        /// 自选漏洞防御主机
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostIDs: [String]?

        /// 开通容器安全的主机总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostTotalCount: Int64?

        /// 支持防御的漏洞数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let supportDefenseVulCount: Int64?

        /// 普通节点个数
        public let hostNodeCount: Int64

        /// 超级节点范围
        public let superScope: Int64

        /// 超级节点个数
        public let superNodeCount: Int64

        /// 超级节点Id列表
        public let superNodeIds: [String]

        /// 开通容器安全的超级结点总数
        public let nodeTotalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isEnabled = "IsEnabled"
            case scope = "Scope"
            case hostCount = "HostCount"
            case exceptionHostCount = "ExceptionHostCount"
            case hostIDs = "HostIDs"
            case hostTotalCount = "HostTotalCount"
            case supportDefenseVulCount = "SupportDefenseVulCount"
            case hostNodeCount = "HostNodeCount"
            case superScope = "SuperScope"
            case superNodeCount = "SuperNodeCount"
            case superNodeIds = "SuperNodeIds"
            case nodeTotalCount = "NodeTotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询漏洞防御设置信息
    @inlinable
    public func describeVulDefenceSetting(_ input: DescribeVulDefenceSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulDefenceSettingResponse> {
        self.client.execute(action: "DescribeVulDefenceSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御设置信息
    @inlinable
    public func describeVulDefenceSetting(_ input: DescribeVulDefenceSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDefenceSettingResponse {
        try await self.client.execute(action: "DescribeVulDefenceSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞防御设置信息
    @inlinable
    public func describeVulDefenceSetting(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulDefenceSettingResponse> {
        self.describeVulDefenceSetting(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御设置信息
    @inlinable
    public func describeVulDefenceSetting(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDefenceSettingResponse {
        try await self.describeVulDefenceSetting(.init(), region: region, logger: logger, on: eventLoop)
    }
}
