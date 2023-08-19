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

extension Cwp {
    /// DescribeTags请求参数结构体
    public struct DescribeTagsRequest: TCRequest {
        /// 云主机类型。
        /// - CVM：表示云服务器
        /// - BM:  表示黑石物理机
        /// - ECM:  表示边缘计算服务器
        /// - LH:  表示轻量应用服务器
        /// - Other:  表示混合云服务器
        public let machineType: String?

        /// 机器所属地域。如：ap-guangzhou
        public let machineRegion: String?

        /// 过滤条件。
        /// - Keywords - String - 是否必填：否 - 查询关键字(机器名称/机器IP
        /// - Status - String - 是否必填：否 - 客户端在线状态（OFFLINE: 离线 | ONLINE: 在线 | UNINSTALLED：未安装 | SHUTDOWN 已关机）
        /// - Version - String  是否必填：否 - 当前防护版本（ PRO_VERSION：专业版 | BASIC_VERSION：基础版）
        /// - Risk - String 是否必填: 否 - 风险主机( yes )
        /// - Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )
        ///   每个过滤条件只支持一个值，暂不支持多个值“或”关系查询
        public let filters: [Filters]?

        public init(machineType: String? = nil, machineRegion: String? = nil, filters: [Filters]? = nil) {
            self.machineType = machineType
            self.machineRegion = machineRegion
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case machineType = "MachineType"
            case machineRegion = "MachineRegion"
            case filters = "Filters"
        }
    }

    /// DescribeTags返回参数结构体
    public struct DescribeTagsResponse: TCResponse {
        /// 列表信息
        public let list: [Tag]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 获取所有主机标签
    @inlinable
    public func describeTags(_ input: DescribeTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagsResponse> {
        self.client.execute(action: "DescribeTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取所有主机标签
    @inlinable
    public func describeTags(_ input: DescribeTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagsResponse {
        try await self.client.execute(action: "DescribeTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取所有主机标签
    @inlinable
    public func describeTags(machineType: String? = nil, machineRegion: String? = nil, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagsResponse> {
        self.describeTags(.init(machineType: machineType, machineRegion: machineRegion, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取所有主机标签
    @inlinable
    public func describeTags(machineType: String? = nil, machineRegion: String? = nil, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagsResponse {
        try await self.describeTags(.init(machineType: machineType, machineRegion: machineRegion, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
